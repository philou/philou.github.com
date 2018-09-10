---
keywords: "Postgre, rails, ruby, Postgre 9.1, Setting, development"
layout: post
title: Setting up Postgre 9.1 for rails development
published: true
date: 2012-05-28
categories:
- postgre
- rails
- ruby
posterous_url: http://philippe.bourgau.net/setting-up-postgre-91-for-rails-development
posterous_slug: setting-up-postgre-91-for-rails-development
comments: true
---
I am using rails to build [www.mes-courses.fr](http://www.mes-courses.fr). I use ubuntu for my development os, and heroku for deployment. As heroku enforces the usage of Postgre, I chose to use Postgre on my development setup also. When I upgraded from ubuntu 10.04, I had to review my database configuration.

I have a script in script/setup that installs dependencies and databases to setup a new dev environment :

```sh
#!/bin/sh

## packages dependencies
 sudo apt-get install libxml2-dev libxslt1-dev postgresql libpq-dev sqlite3 libsqlite3-dev

## installing gems
 bundle install   rbenv rehash

## creating dbs
 sudo -u postgres createuser --superuser mes_courses
 sudo -u postgres psql --command="alter user mes_courses with encrypted password 'secret'"
 sudo sed -i 's/\(local *all *all *\)peer/\1md5/' /etc/postgresql/9.1/main/pg_hba.conf
 bundle exec rake db:create:all

## initializing dbs
 bundle exec rake db:migrate
 RAILS_ENV=test bundle exec rake db:migrate
 RAILS_ENV=production bundle exec rake db:migrate
```

Here is the corresponding config/database.yml

```yaml
development:
 adapter: postgresql
 database: mes_courses_development
 encoding: utf8
 pool: 5
 timeout: 5000
 username: mes_courses
 password: secret
 host: localhost
 port: 5433

test:
 adapter: postgresql
 database: mes_courses_test
 encoding: utf8
 pool: 5
 timeout: 5000
 username: mes_courses
 password: secret
 host: localhost
 port: 5433

production:
 adapter: postgresql
 database: mes_courses_production
 encoding: utf8
 pool: 5
 timeout: 5000
 username: mes_courses
 password: secret
 host: localhost
 port: 5433

```

Hope this helps !
