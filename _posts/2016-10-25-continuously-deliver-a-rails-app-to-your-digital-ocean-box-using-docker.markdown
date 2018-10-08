---
layout: single
title: "Continuously Deliver a Rails App to your DigitalOcean Box using Docker"
date: 2016-10-25 20:39
comments: true
categories:
 - docker
 - rails
 - continuous-integration
keywords: "Rails, Docker, CircleCI, DigitalOcean, Continuous Delivery, Continuous Integration, SSH"
description: "My workaround to manage to continuously deploy my Rails app to a DigitalOcean server using docker and CircleCI"
---
I decided to use [my latest side project](https://github.com/philou/planning-poker) as an occasion to learn [Docker](https://www.docker.com/). I first used [Heroku](https://www.heroku.com/) as a platform for deployment (see [previous post](/how-to-boot-a-new-rails-project-with-docker-and-heroku/)). It works fine but I discovered the following shortcomings :

* Heroku does not deploy with Docker, which means that I'd get quite different configurations between dev and prod, which is one of the promises of Docker :(
* The dockerfile provided by docker runs bundle install in a directory outside of the docker main shared volume, this forces to do bundle update twice (once to update Gemfile.lock and a second time to update the actual gems ...)

None of these issues could be fixed without moving away from Heroku.

## A great Tutorial / Guide

I followed [Chris Stump](http://chrisstump.online/)'s great tutorials to [setup Docker for my app](http://chrisstump.online/2016/02/20/docker-existing-rails-application/), to [continuously integrate](http://chrisstump.online/2016/03/03/continuous-integration-docker-rails/) on [CircleCI](https://circleci.com/) and to [continuously deploy](http://chrisstump.online/2016/03/17/continuous-deployment-docker-rails/) on a private virtual server on [DigitalOcean](https://www.digitalocean.com/).

The first 2 steps (Docker & CI) worked really out of the box after following the tutorial. Dealing with step 3 (CD) was a bit more complicated, because of :

1. the specificities of DigitalOcean
2. the fact that I'm a no deployment expert ...

![The logos of Docker, CircleCI and DigitalOcean]({{site.url}}{{site.baseurl}}/imgs/2016-10-25-continuously-deliver-a-rails-app-to-your-digital-ocean-box-using-docker/docker-circleci-digitalocean.jpg)

## What did I need to do to make it work

### Setup SSH on the DigitalOcean box

I started by creating a [one-click DigitalOcean box](https://cloud.digitalocean.com/droplets/new?size=2gb&region=nyc3&appId=20423249&type=applications) with Docker pre-installed. That's the moment where I had to setup SSH in order to make CircleCI deploy to my box. DigitalOcean has a [guide for this](https://www.digitalocean.com/community/tutorials/how-to-use-ssh-keys-with-digitalocean-droplets), but here is how I did it :

1. Create a special user on my dev machine ```adduser digitaloceanssh```
2. Log as this user ```su digitaloceanssh```, and generated ssh keys for it ```ssh-keygen```
3. Print the public key ```cat ~/.ssh/id_rsa.pub``` and copy paste it in your DigitalOcean box setup
4. Print the private key ```cat ~/.ssh/id_rsa``` and copy past it in your circle-ci job ssh keys

The benefit of this is that you should now be able to ssh in your DigitalOcean box from your digitaloceanssh user ```ssh root@<ip.to.digital.ocean>```

### Optional : update the box

The first time I logged into my box, I noted that packages were out of date. If you need it, updating the packages is a simple matter of ```apt-get update && apt-get upgrade```

### Fix deployment directory

By default, the home dir of the root user on the DigitalOcean box is ```/root/```. Unfortunately, Chris Stump's tutorial assumes it to be ```/home/root/```. In order to fix that, I ssh-ed in the box and created a symbolic link : ```ln -s /root /home/root```.

### Install docker-compose on the box

Chris Stump's tutorial expects docker-compose on the deployment box, but DigitalOcean only installs Docker on its boxes ... Install instructions for docker-compose can be found [here](https://docs.docker.com/compose/install/). Don't use the container option, it does not inherit environment variables, and will fail the deployment, just use the first curl based alternative.

### Warning : replace ALL dockerexample

This comes as an evidence, but be sure to replace all the references to 'dockerexample' to your own app name in all of Chris Stump's templates (I forgot some and lost a few rebuilds for that)

### Create the production DB

Chris Stump's deployment script works with an existing production DB. The first migration will fail. To fix this, just do the following :

1. ssh into the DigitalOcean server
2. run ```DEPLOY_TAG=<latest_deploy_tag> RAILS_ENV=production docker-compose -f docker-compose.production.yml run app bundle exec rake db:create```

You can find the latest DEPLOY_TAG from the CircleCi step ```bundle exec rake docker:deploy```

### How to access the logs

It might come handy to check the logs of your production server ! Here is how to do this :

1. ssh in your production server
2. run the following to tail on the logs ```DEPLOY_TAG=`cat deploy.tag` RAILS_ENV=production docker-compose -f docker-compose.production.yml run app tail -f log/production.log```

Obviously, tail is just an example, use anything else at your convenience.

### Generate a secret token

Eventually, the build and deployment job succeeded ... I had still one last error when I tried to access the web site : ```An unhandled lowlevel error occurred. The application logs may have details.```. After some googling, I understood that this error occurs when you did not set a secret key base for your rails app ([details](http://stackoverflow.com/questions/37112804/an-unhandled-lowlevel-error-occurred-the-application-logs-may-have-details)). There is a [rails task to generate a token](http://www.jamesbadger.ca/2012/12/18/generate-new-secret-token/), all that was needed was to create a .env file on the server with the following :

```SECRET_KEY_BASE=<GENERATED_SECRET...>```

## What's next ?

Obviously, I learned quite a lot with this Docker exploration. I am still in the discovery phase, but my planning poker side project is now continuously built on [circleci](https://circleci.com/gh/philou/planning-poker), and deployed to a [DigitalOcean box](http://104.131.47.10/).

The next steps (first, find a better subdomain, second, speed up the build job) will tell me if this kind of deployment is what I need for my pet projects. If it turns out too complicated or too difficult to maintain, [Dokku](http://dokku.viewdocs.io/dokku/) is on my radar.
