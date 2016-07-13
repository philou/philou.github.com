---
layout: post
title: "How to boot a new Rails project with Docker and Heroku"
date: 2016-07-13 04:55
comments: true
categories:
 - rails
 - docker
 - heroku
keywords: "Rails, Docker, Heroku, Docker Compose, Tutorial"
description: "A walkthrough about how to bootstrap a new Rails app using Docker, and then to deploy it to Heroku"
---
A few years ago, I used [Heroku](http://www.heroku.com) to deploy my [side-project](https://github.com/philou/mes-courses). It provides great service, but I remember that updates to the Heroku Stack was a nightmare ... Versions of the OS (and nearly everything) changed. The migration was a matter of days, and while doing a side-project, this was difficult. At the time, I remember thinking that using branches and VMs would have been the solution.

Now that I started to use Heroku again, I decided to use [Docker](http://www.docker.com) from the beginning. More specifically, I am expecting :

- to have a minimal setup on my host machine
- to use the same infrastructure in dev than in production
- to simplify switching to a new machine
- to simplify the migration to the next Heroku stack

As an added benefit, if ever someone else joins me in my side-project, it will be a matter of minutes before we can all work on the same infrastructure !

Heroku provides a [tutorial](https://devcenter.heroku.com/articles/local-development-with-docker) about how to deploy an existing [Rails](http://rubyonrails.org/) app to heroku using containers. Unfortunately, I did yet have an existing rails app ... So the first challenge I faced, was how to create a Rails app without actually installing Rails on my machine. The trick is to bootstrap rails in docker itself before packaging all this for Heroku.

{% img center /imgs/2016-07-13-how-to-boot-a-new-rails-project-with-docker-and-heroku/logos.jpg The 3 logos of Rails, Docker and Heroku %}

## 1. Install the required software

I installed only 4 things on my host machine
- Docker [instructions](https://docs.docker.com/engine/installation/)
- Docker Compose [instructions](https://docs.docker.com/compose/install/)
- Heroku Toolbelt [instructions](https://toolbelt.heroku.com/)
- Heroku container plugin ```heroku plugins:install heroku-container-tools```

That's all I changed to my host machine.

## 2. Setup docker

First, let's create a new dir and step into it. Run :
```bash
mkdir docker-rails-heroku
cd docker-rails-heroku
```
To prepare the Heroku setup, create a ```Procfile```
```
web: bundle exec puma -C config/puma.rb
```
and ```app.json```
```json
{
  "name": "Docker Rails Heroku",
  "description": "An example app.json for container-deploy",
  "image": "heroku/ruby",
  "addons": [
    "heroku-postgresql"
  ]
}
```
To generate docker files for Heroku, run :
```bash
heroku container:init
```
You want to run Rails in dev mode locally, so we need to override Heroku's default env ([Check my previous post for details](/docker-compose-trick-how-to-have-an-overridable-environment-variable-in-development-mode/))

Create an ```.env``` file
```
RAILS_ENV=development
```
and ```docker-compose.override.yml```
```yaml
web:
  volumes:
    - '.:/app/user'
  environment:
    RAILS_ENV: "${RAILS_ENV}"

shell:
  environment:
    RAILS_ENV: "${RAILS_ENV}"
```

## 3. Create the Rails app

It's now time to follow [the official docker-compose rails tutorial](https://docs.docker.com/compose/rails/) to bootstrap the rails app and directories :

Change ```Dockerfile``` to
```
# FROM heroku/ruby

FROM ruby:2.2.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /myapp
WORKDIR /myapp
ADD Gemfile /myapp/Gemfile
ADD Gemfile.lock /myapp/Gemfile.lock
RUN bundle install
ADD . /myapp
```

Create a bootstrap ```Gemfile``` with the content
```ruby
source 'https://rubygems.org'
gem 'rails', '4.2.0'
```
Bundle install within the container requires a existing ```Gemfile.lock```
```bash
# Create an empty Gemfile.lock
touch Gemfile.lock
```

It's now time to build your docker container to be able to run rails and generate your source files. Run the following :
```bash
# Build your containers
docker-compose build

# Run rails within the shell container and generate rails files
docker-compose run shell bundle exec rails new . --force --database=postgresql --skip-bundle
```

Unfortunately, rails is ran as root inside the container. We can change ownership and rights with this command :
```bash
# Change ownership
sudo chown -R $USER:$USER .

# Change rights
sudo chmod -R ug+rw .
```

## 4. Make it Heroku ready

Now that the rails files are generated, It's time to replace the bootstrap settings with real Heroku Dockerfile

Revert ```Dockerfile``` to simply :
```
FROM heroku/ruby
```

Heroku uses [Puma](http://puma.io/) so we need to add it to our ```Gemfile```
```ruby
# Use Puma as the app server
gem 'puma', '~> 3.0'
```
We also need to add a config file for Puma. Create ```config/puma.rb``` with this content (you can check [heroku doc](https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server#adding-puma-to-your-application) for details)
```ruby
workers Integer(ENV['WEB_CONCURRENCY'] || 2)
threads_count = Integer(ENV['RAILS_MAX_THREADS'] || 5)
threads threads_count, threads_count

preload_app!

rackup      DefaultRackup
port        ENV['PORT']     || 3000
environment ENV['RACK_ENV'] || 'development'

on_worker_boot do
  # Worker specific setup for Rails 4.1+
  # See: https://devcenter.heroku.com/articles/deploying-rails-applications-with-the-puma-web-server#on-worker-boot
  ActiveRecord::Base.establish_connection
end
```

It should now be possible to rebuild the container, and run the app :
```bash
# Rebuild the containers
docker-compose build

# Start the rails app using the web container
docker-compose up web
```
The app should be accessible at http://0.0.0.0:8080

{% img center /imgs/2016-07-13-how-to-boot-a-new-rails-project-with-docker-and-heroku/rails-homepage.jpg The default homepage for a new Rails application %}

## 5. Deploying to heroku

We're almost ready to deploy to heroku.

First, we need to exclude development files from our image. For this, we need to create a ```.dockerignore``` file with the content
```
.git*
db/*.sqlite3
db/*.sqlite3-journal
log/*
tmp/*
Dockerfile
.env
docker-compose.yml
docker-compose.override.yml
README.rdoc
```
It's then classic Heroku deploy commands :

```bash
# create an Heroku app
heroku apps:create <your-app-name>

# And deploy to it
heroku container:release --app <your-app-name>
```

Your app should be accessible on line at https://<your-app-name>.herokuapp.com/

{% img center /imgs/2016-07-13-how-to-boot-a-new-rails-project-with-docker-and-heroku/deployed-to-heroku.jpg The typical error message when you deploy a new Rails app to heroku %}

Rails does not provide a default homepage in production. But you can check the logs with

```bash
heroku logs --app <your-app-name>
```

## 6. Running commands

When in development mode, you might want to run rails or other commands on your source code again. The shell container exists just for that, run ```docker-compose run shell ...```.
```bash
# For example, to update your bundle
docker-compose run shell bundle update
```
