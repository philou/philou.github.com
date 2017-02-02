---
layout: post
title: "How I fixed 'devicemapper' error when deploying my Docker app"
date: 2017-02-01 17:41
comments: true
categories:
 - docker
 - exploitation
keywords: "DigitalOcean, Docker, Rails, CircleCI"
description: "A walkthrough of how I managed to fix some unexpected errors on my Digital Ocean Docker deployment box"
---
A few months ago, I started continuously deploying my [latest side project](https://github.com/philou/planning-poker) to a [Digital Ocean](https://cloud.digitalocean.com) box. If you are interested, [here](/continuously-deliver-a-rails-app-to-your-digital-ocean-box-using-docker/) is the full story of how I did it. All was going pretty well until last week, when the builds unexpectedly started to fail. I wasn't getting the same error at every build, but it was always the [Docker](https://www.docker.com/) deployment that failed. Here are the kind of errors I got :

```bash
# At first, it could not connect to the db container
PG::ConnectionBad: could not translate host name "db" to address: Name or service not known

# Then I started to have weird EOF errors
docker stderr: failed to register layer: ApplyLayer exit status 1 stdout:  stderr: unexpected EOF

# Eventually, I got some devicemapper errors
docker stderr: failed to register layer: devicemapper: Error running deviceCreate (createSnapDevice) dm_task_run failed
```

You can read the full error logs [here](https://circleci.com/gh/philou/planning-poker/tree/master).

## That's what happens when you go cheap !

After searching the internet a bit, I found [this issue](https://github.com/docker/docker/issues/6325) which made me understand that my server had ran out of disk space because of old versions of my docker images. I tried to remove them, but the commands were failing. After some more search, I found [this other issue](https://github.com/docker/docker/issues/26015) and came to the conclusion that there was no solution except resetting docker completely. Hopefully, Digital Ocean has a button for rebuilding the VM.

[{% img center /imgs/2017-02-01-how-i-fixed-devicemapper-error-when-deploying-my-docker-app/reset-digitalocean-small.jpg A screenshot of the rebuild screen on digitalocean %}](/imgs/2017-02-01-how-i-fixed-devicemapper-error-when-deploying-my-docker-app/reset-digitalocean.jpg)

Once the VM was rebuilt, the first thing that I did was to try to connect from my shell on my local machine. I had to clean up my known host file, but that was simple enough.

```
nano ~/.ssh/known_hosts
```

Once this was done, I just followed the steps I had documented in my [previous blog post](/continuously-deliver-a-rails-app-to-your-digital-ocean-box-using-docker/)

Was I all done ?

Almost ... I ran into another kind of errors this time. Processes kept getting killed on my VM.

```bash
INFO [cc536697] Running /usr/bin/env docker-compose -f docker-compose.production.yml run app bundle exec rake db:migrate as root@104.131.47.10
rake aborted!
SSHKit::Runner::ExecuteError: Exception while executing as root@104.131.47.10: docker-compose exit status: 137
docker-compose stdout: Nothing written
docker-compose stderr: Starting root_db_1
bash: line 1: 18576 Killed
```

After some more Google searching, I discovered that this time, the VM was running out of memory ! The fast fix was to upgrade the VM (at the extra cost of 5$ / month).

[{% img center /imgs/2017-02-01-how-i-fixed-devicemapper-error-when-deploying-my-docker-app/resize-digitalocean-small.jpg A screenshot of the resize screen on digitalocean %}](/imgs/2017-02-01-how-i-fixed-devicemapper-error-when-deploying-my-docker-app/resize-digitalocean.jpg)

After increasing the memory (and disk space) of the VM, deployment went like a charm. Others have fixed the same issue for free by [adding a swap partition to the VM](https://www.digitalocean.com/community/questions/npm-gets-killed-no-matter-what).

## The end of the story

I wasted quite some time on this, but it taught me some lessons :

1. I should have taken care of cleaning up the old images and containers, at least manually, at best automatically
1. I should write a script to provision a new server
1. The cheap options always come at a cost
1. For an open source side project like this one, it might be a better strategy to only use Docker to setup my dev env, and use free services like [Travis-ci](https://travis-ci.org/) and [Heroku](https://www.heroku.com/) for production
1. Doing everything myself is not a good recipe to getting things done ... I well past time I leave my developer hat for an entrepreneur cap
1. In order to keep learning and experimenting, focused [20h sessions](/how-i-got-my-feet-wet-with-machine-learning-with-the-first-20-hours/) of deliberate practice might be the most time effective solution
