---
layout: single-mailing-list
title: "Docker Compose trick : How to have an overridable environment variable in development mode ?"
date: 2016-07-04 03:55
comments: true
categories:
 - docker
 - heroku
keywords: "Docker, Docker Compose, Heroku, Environment Variable, Rails"
description: "How using a combination of docker-compose.override.yml and .env files made it easy to customize environment variables in docker"
---
I have recently been playing with [Docker](https://www.docker.com/) and [Docker Compose](https://docs.docker.com/compose/) while starting [my new side project](https://github.com/philou/planning-poker). I've fallen into a situation where my production container uses a value for an environment variable, but while developing, I'll need both a different default and the ability to override this value.

I'm using [Rails](http://rubyonrails.org/) and found various references about how to deploy Rails app using Docker, but in the end, I decided to use [Heroku](http://www.heroku.com) which handles a lot of ops for me. Rails uses the RAILS_ENV environment variable to know if it's going to run in development, test or production mode. The [heroku/ruby](https://hub.docker.com/r/heroku/ruby/) image sets ```RAILS_ENV=production```, but we usually want to use ```RAILS_ENV=development``` locally. I could have overridden RAILS_ENV in a docker-compose.override.yml file, but that would prevent me from running my app in production locally.

## The trick

I eventually fixed my issue with combination of 2 files.

### docker-compose.override.yml

```yaml
web:
  ...
  environment:
    RAILS_ENV: "${RAILS_ENV}"
...
```

### .env

```bash
RAILS_ENV=development
```

### The logs

My app starts in development mode by default :

```bash
philou@philou-UX31E:~/code/planning-poker$ docker-compose up web
Starting planningpoker_herokuPostgresql_1
Recreating planningpoker_web_1
Attaching to planningpoker_web_1
web_1               | Puma starting in single mode...
web_1               | * Version 3.4.0 (ruby 2.2.3-p173), codename: Owl Bowl Brawl
web_1               | * Min threads: 5, max threads: 5
web_1               | * Environment: development
web_1               | * Listening on tcp://0.0.0.0:8080
web_1               | Use Ctrl-C to stop
```

But I can still override RAILS_ENV to test for example :

```bash
philou@philou-UX31E:~/code/planning-poker$ RAILS_ENV=test docker-compose up web
planningpoker_herokuPostgresql_1 is up-to-date
Recreating planningpoker_web_1
Attaching to planningpoker_web_1
web_1               | Puma starting in single mode...
web_1               | * Version 3.4.0 (ruby 2.2.3-p173), codename: Owl Bowl Brawl
web_1               | * Min threads: 5, max threads: 5
web_1               | * Environment: test
web_1               | * Listening on tcp://0.0.0.0:8080
web_1               | Use Ctrl-C to stop
```
