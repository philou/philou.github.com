---
layout: single-mailing-list
title: "How I finally use Docker on small open source side projects"
date: 2017-02-16 19:37
comments: true
categories:
 - side-project
 - open-source
 - continuous-integration
 - docker
 - travis
 - heroku
 - rails
keywords: "Dev setup, Development, Continuous Integration, Open Source, Side Projects, Docker"
description: "Details of what I stopped to Docker for when developing an open source side project"
---
A few months ago, I started [Philou's Planning Poker](https://github.com/philou/planning-poker), an open source side project to run [planning poker estimate sessions](https://en.wikipedia.org/wiki/Planning_poker) remotely. The main technology is [Rails](http://rubyonrails.org/), and I'd been planning to use [Docker](https://www.docker.com/) as much as possible as a way to learn it. Indeed, I learned that Docker is no Silver Bullet !

![The Docker logo next to a silver bullet]({{site.url}}{{site.baseurl}}/imgs/2017-02-16-how-i-finally-use-docker-on-small-open-source-side-projects/docker-silver-bullet.jpg)


## The Docker love phase

At first everything seemed great about Docker. I'd used it on toy projects and it proved great to quickly setup cheap and fast virtual machines. I even created the [Rubybox](https://github.com/philou/rubybox) project on Github to clone new ruby VMs in a matter of seconds. I also used Docker to host my [Octopress](http://octopress.org/) environment to write this blog. As a long time Linux user, my dev machines have repeatedly been suffering from pollution : after some time, they get plagued with all the stuff I installed to do my various dev experiments, and at some point, re-install seems easier than cleaning up all the mess. If I could use containers for all my projects, Docker would be a cure for this.

Going through all these successes, when I started my planning poker app, I decided to go all into Docker, development, CI and deployment. You can read the log of how I did that in [these posts]({{site.baseurl}}/categories/#docker). Fast forward a bit of searching, experimenting and deploying, all was setup : my dev env was in containers, my CI was running in containers in [CircleCI](https://circleci.com/gh/philou/planning-poker/tree/master) and the app was pushed to containers on [DgitalOcean](https://www.digitalocean.com/).

## Reality strikes back

At first, everything seemed to be working fine. Even if there were a few glitches that I would have to fix down the road like :

* Whenever I wanted to update my app's dependencies, I had to run `bundle update` twice, and not incrementally. Surely, I would manage to fix that with a bit of time
* Obviously, the CI was slower, because it had to build the containers before deploying them to [Docker Hub](https://hub.docker.com/), but that was the price to pay in order to know exactly what was running on the server ... right ?
* And ... [Guard](https://github.com/guard/guard) notifications did not appear on my desktop. I was accessing my dev env through ssh, so I would have to fix that, just a few hours and it should be working

After a while, I got used to my work environment and became almost as productive as I used to be ... but you know, shit happens !

* I had to install [PhantomJS](http://phantomjs.org/) on my CI, and if that comes out of the box on [TravisCI](https://travis-ci.org/), you're all alone in your own containers. Installing this on the Debian container proved unnecessarily complex, but I figured it out
* Then all of a sudden, my CI started to break ... You can read a summary of what I did to fix it [here](/how-i-fixed-devicemapper-error-when-deploying-my-docker-app/). Long story short : I had forgotten to clean up old docker images, and after enough deployments, the server ran out of space, and that corrupted the docker cache somehow. I eventually re-installed and upgraded the deployment VM. That made me lose quite some time though.
* Finally, as I started to play with [ActionCable](https://github.com/rails/actioncable), I could not get the web-socket notifications through my dev host. There must be some settings and configuration to make this work, for sure, but it's supposed to work out of the box.

Eventually, this last issue convinced me to change my setup. All these usages of Docker where definitely worth it from a learning point of view, but as my focus moved to actually building the app, it was time to take pragmatic decisions.

## My use of Docker now

There were 2 main ideas driving my changes to my dev env for this open source side project :

1. Use the thing most people do
2. Use commercially supported services & tools

These should avoid losing my time instead of being productive. My setup is now almost boring ! To summarize I now use [TravisCI](https://travis-ci.org/philou/planning-poker), [Heroku](https://philous-planning-poker.herokuapp.com/), and [rbenv](https://github.com/rbenv/rbenv) on my physical machine. I kept Docker where it really shines : all the local servers required for development are managed by [Docker Compose](https://docs.docker.com/compose/). Here is my [`docker-compose.yml`](https://github.com/philou/planning-poker/blob/master/docker-compose.yml)

```yaml
db:
  image: postgres:9.4.5
  volumes:
    - planning-poker-postgres:/var/lib/postgresql/data
  ports:
    - "5432:5432"

redis:
  image: redis:3.2-alpine
  volumes:
    - planning-poker-redis:/var/lib/redis/data
  ports:
    - "6379:6379"
```

This saves me from installing [Postgresql](https://www.postgresql.org/) or [Redis](https://redis.io/) on my dev machine, and I can start all the services required for app with a single `docker-compose up` command !

## My future uses of Docker

More generally, in the near future, here is when I'll use docker

* As I just said, to manage local servers
* To boot quick and cheap VMs (check [rubybox](https://github.com/philou/rubybox))
* To handle CI and deployment of large or non-standard systems, where Docker can provide a lot of benefits in terms of price, scaling or configurability

Docker came from the deployment world, and this is where it is so great. As of today though, even if it is usable as dev VM, it is still not up to a standard dev machine. Despite that, all the issues I ran into could be fixed, and I'm pretty sure they'll be some day.
