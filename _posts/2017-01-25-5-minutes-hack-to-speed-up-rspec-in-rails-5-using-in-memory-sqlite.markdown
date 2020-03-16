---
layout: single-mailing-list
title: "5 minutes hack to speed up RSpec in Rails 5 using in-memory SQLite"
date: 2017-01-25 07:53
comments: true
categories:
 - ruby
 - rails
 - rspec
 - testing
 - cucumber
 - sqlite
keywords: "Ruby, Rails, Rails 5, RSpec, Testing, Cucumber, Speed up, in-memory, SQLite, in-memory SQLite"
description: "A straightforward (maintainable) step by step guide to speed up your RSpec suite using in-memory SQLite"
---
Here is the story : you have a [Rails 5](http://rubyonrails.org/) app that uses [RSpec](http://rspec.info/), but your RSpec suite is getting slower and slower to run. You've already considered some solutions :

* Use [SQLite](https://sqlite.org/) in memory for your test env.

```yaml
test:
  adapter: sqlite3
  database: ":memory:"
```

That's the most straightforward thing to do, but unfortunately, if you are sharing your test env with [Cucumber](https://cucumber.io/), you might want to use a production like DB with Cucumber ([PostgreSQL](https://www.postgresql.org/) or whatever). So unless you are ready to setup a new env for cucumber (which I tried and don't recommend) you're stuck.

* Use mocks. That's surely going to work, it's going to make your test hell of a lot faster ! It will also make your tests a lot more fragile and more expensive to maintain ... If you want to read more about why I think mocks are a bad idea, just have a look at [these posts]({{site.baseurl}}/categories/#mocking).

## The hack

Here is a third alternative, I've [already written about it](/simplest-way-to-speed-up-rspec-with-in-memory-sqlite-db/), but here it comes updated and tested for Rails 5 :

1. Don't change anything to your `config/database.yml`
2. Obviously, you'll need to add `sqlite3` to your `Gemfile`
3. At the beginning of your `spec/rails_helper.rb`, replace

``` ruby
# Checks for pending migration and applies them before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.maintain_test_schema!
```

with

``` ruby
# In order to keep the same RAILS_ENV for rspec and cucumber, and to make rspec
# faster, patch the connection to use sqlite in memory when running rspec
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')
ActiveRecord::Schema.verbose = false
load "#{Rails.root.to_s}/db/schema.rb"
```


That's it ! Run your specs ... not bad for a 5 minutes investment !

#### Rails 5.1 (2017-03-29 Edit)

My fresh hack started to fail on Rails 5.1 ! If `schema.rb` is generated with the Postgres adapter, it is now incompatible with this injected Sqlite adapter. Here is a patch that removes the glitches :

```ruby
# In order to keep the same RAILS_ENV for rspec and cucumber, and to make rspec
# faster, patch the connection to use sqlite in memory when running rspec
ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: ':memory:')
ActiveRecord::Schema.verbose = false
# load db agnostic schema by default. Needed to remove the ", id: :serial" from
# the table definitions to make it load on sqlite
eval(`cat #{Rails.root.to_s}/db/schema.rb | sed 's/,[^:]*: :serial\//g'`)
```

I admit this is getting a bit crappy, and I don't know how long it is going to work ...


## One more thing ...

If you need even more speed, you can now run your specs in parallel in different processes ! Each in-memory SQLite DB is bound to its process, so unlike a real PostgreSQL dev DB, you won't get any conflicts between your tests ;-)
