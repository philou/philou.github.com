---
layout: post
title: "Simplest way to speed up rspec with in memory sqlite db"
date: 2013-08-02 09:16
comments: true
categories:
 - ruby
 - rails
 - rspec
 - testing
 - cucumber
published: true
---
There are already a lot of articles explaining how to setup an in memory [SQLite](http://www.sqlite.org/) database to speed up [Rails](http://rubyonrails.org/) specs or unit tests. Most of them explain how to change your database.yml and to run setup your schema before running the tests. It works fine.

There's a catch though : suppose you are using [cucumber](http://cukes.info/), it's likely you'd rather run cucumber on a real database ([PostgreSQL](http://www.postgresql.org/), [MySQL](http://www.mysql.com/) or whatever). Most gems expect cucumber and [rspec](http://rspec.info/) to both run in the test environment ... Every time I updated my bundle or that I wanted to use a new test gem, I would hit an issue about cucumber being run in its own 'cucumber' environment : unexpected warnings and things not working out of the box.

Eventually, I ditched the cucumber env, setup a PostgreSQL db on the test env, and injected the in memory sqlite database right inside spec_helper.rb :

In database.yml :

```yaml
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
```

At the bottom of spec_helper.rb

```ruby
setup_sqlite_db = lambda do
  ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')

  load "#{Rails.root.to_s}/db/schema.rb" # use db agnostic schema by default
  # ActiveRecord::Migrator.up('db/migrate') # use migrations
end
silence_stream(STDOUT, &setup_sqlite_db)
```
