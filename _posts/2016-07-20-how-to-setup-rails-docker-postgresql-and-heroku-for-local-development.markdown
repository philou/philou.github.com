---
layout: single
title: "How to setup Rails, Docker, PostgreSQL (and Heroku) for local development ?"
date: 2016-07-20 06:12
comments: true
categories:
 - rails
 - docker
 - heroku
 - postgre
keywords: "Rails, Docker, Heroku, Docker Compose, Postgres, Tutorial"
description: "How I created a development friendly configuration for Rails, Postgres, Heroku and Docker"
---
[My current side project](https://github.com/philou/planning_poker) is an online tool to do remote planning pokers. I followed my [previous tutorial](/how-to-boot-a-new-rails-project-with-docker-and-heroku/) to setup Rails, Docker and Heroku.

Naturally, as a BDD proponent, I tried to install [cucumber](https://cucumber.io) to write my first scenario.

Here is the result of my first cucumber run :

```bash
$ docker-compose run shell bundle exec cucumber
rails aborted!
PG::ConnectionBad: could not translate host name "postgres://postgres:@herokuPostgresql:5432/postgres" to address: Name or service not known
...
```

It turned out that I had taken instructions from a [blog article on codeship](https://blog.codeship.com/deploying-docker-rails-app/) that mistakenly used ```host:``` instead of ```url:``` in their ```config/database.yml```

After fixing that in my database.yml file, things where only slightly working better :

```bash
$ docker-compose run shell bundle exec cucumber
rails aborted!
ActiveRecord::StatementInvalid: PG::ObjectInUse: ERROR:  cannot drop the currently open database
: DROP DATABASE IF EXISTS "postgres"
```

The thing is the config was still using the same database for all environments. That's not exactly what I wanted. I updated my ```config/database.yml``` :

```yaml
default: &default
  adapter: postgresql
  encoding: unicode
  pool: 5
  timeout: 5000
  username: postgres
  port: 5432
  host: herokuPostgresql

development:
  <<: *default
  database: planning_poker_development

test: &test
  <<: *default
  database: planning_poker_test

production:
  <<: *default
  url: <%= ENV['DATABASE_URL'] %>
```

Victory ! Cucumber is running

```bash
$ docker-compose run shell bundle exec cucumber
Using the default profile...
0 scenarios
0 steps
0m0.000s
Run options: --seed 45959

# Running:



Finished in 0.002395s, 0.0000 runs/s, 0.0000 assertions/s.

0 runs, 0 assertions, 0 failures, 0 errors, 0 skips
```

## Fixing rake db:create

By searching through the web, I found that people were having similar issues with rake db:create. I tried to run it and here is what I got :

```bash
$ docker-compose run shell bundle exec rake db:create
Database 'postgres' already exists
Database 'planning_poker_test' already exists
```

Why is it trying to create the postgres database ? It turns out that the DATABASE_URL takes precedence over what is defined in my ```config/database.yml```. I need to unset this variable locally. I already have the ```docker-compose.override.yml``` for that :

```yaml
web:
  environment:
    DATABASE_URL:
  ...

shell:
  environment:
    DATABASE_URL:
  ...
```

Rake db:create works just fine now :

```bash
$ docker-compose run shell bundle exec rake db:create
Database 'planning_poker_development' already exists
Database 'planning_poker_test' already exists
```

## Starting a psql session

During all my trouble-shootings, I tried to connect to the Postgresql server to make sure that the databases where created and ready. Here is how I managed to do that :

### 1. Install psql client

On my Ubuntu machine, that was a simple ```sudo apt-get install postgresql-client-9.4```.

### 2. Finding the server port

The port can be found through ```config/database.yml``` or through ```docker ps```. Let's use the later, as we'll need it to find the server IP as well.

```bash
$ docker ps
CONTAINER ID        IMAGE            COMMAND                  CREATED             STATUS              PORTS           NAMES
b58ce42d2b2b        postgres         "/docker-entrypoint.s"   46 hours ago        Up 46 hours         5432/tcp        planningpoker_herokuPostgresql_1
```

Here the port is clearly 5432.

### 3. Finding the server IP

Using the container id we got on previous ```docker ps``` command, we can use ```docker inspect``` to get further details :

```bash
$ docker inspect b58ce42d2b2b | grep IPAddress
            "SecondaryIPAddresses": null,
            "IPAddress": "172.17.0.2",
                    "IPAddress": "172.17.0.2",
```

### 4. Connecting to the database

Connecting is now just a matter of filling the command line.

```sql
$ psql -U postgres -p 5432 -d planning_poker_development -h 172.17.0.2
planning_poker_development=# select * from schema_migrations;
 version
---------
(0 rows)
```

### 5. Installing psql client directly in the shell

It should be possible to install the psql client in the shell container automatically, but I must admit I did not try this yet. It should just a matter of adding this to the ```Dockerfile```

```
RUN apt-get install postgresql-client-<version>
```
