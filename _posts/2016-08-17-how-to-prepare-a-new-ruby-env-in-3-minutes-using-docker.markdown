---
layout: single
title: "How to prepare a new Ruby env in 3 minutes using Docker"
date: 2016-08-17 05:21
comments: true
categories:
 - ruby
 - docker
 - software
keywords: "Ruby, Ruby VM, Ruby Container, Ruby Docker, Docker"
description: "A quick description about how to use the rubybox github repo to setup a ruby dev env in 3 minutes"
---
One or two weeks ago, I registered to the [Paris Ruby Workshop Meetup](http://www.meetup.com/fr-FR/Paris-Ruby-Workshop/) and needed a Ruby env. I have been using [Vagrant](https://www.vagrantup.com/) quite a lot to isolate my different dev envs from each other and from my main machine. As I've been digging more into [Docker](http://www.docker.com) lately, I thought I'd simply use Docker and Docker Compose instead.

I turned out to be dead simple. All that is needed is a ```docker-compose.yml``` file to define the container, record the shared volume and set a bundle path inside it :

```yaml
rubybox:
  image: ruby:2.3
  command: bash
  working_dir: /usr/src/app
  environment:
    BUNDLE_PATH: 'vendor/bundle'
  volumes:
    - '.:/usr/src/app'
```

Without the custom bundle path, bundled gems would be installed elsewhere in the container, and lost at every restart.

To use the Rubybox, just type ```docker-compose run rubybox``` and you'll get a shell from within your ruby machine, where you can do everything you want.

In fact, I found the thing so useful, that I created the [Rubybox](https://github.com/philou/rubybox) git repo to simplify cloning and reusing. I've already cloned it at least 3 times since then !

```bash
git clone git@github.com:philou/rubybox.git
cd rubybox
docker-compose run rubybox
```
