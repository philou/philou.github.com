---
layout: post
title: "Spork alternative compatible with cucumber"
date: 2013-08-03 08:51
comments: true
categories:
 - ruby
 - rspec
 - cucumber
 - testing
published: true
---
Version 1.3.0 of [Cucumber](http://cukes.info/) droped spork support, so I had to find something else. I am using [Guard](https://github.com/guard/guard) setup with [rspec](http://rspec.info/) and Cucumber for my [Rails](http://rubyonrails.org/) app.

I first tried [Zeus](https://github.com/burke/zeus) with [guard-zeus](https://github.com/qnm/guard-zeus), it kind of worked, but it ruined my Guard console with the Zeus server status, and it left zombie processes on guard exit ...

Eventually, I tried [Spring](https://github.com/jonleighton/spring), and once I made sure [rspec and cucumber both ran on the test environment](/simplest-way-to-speed-up-rspec-with-in-memory-sqlite-db/), it worked fine with minimal configuration. Here is what I had to do to get it working

* remove spork from your Gemfile
* remove require 'spork', Spork.prefork and Spork.each_run calls from spec/spec_helper.rb and features/support/env.rb
* install spring

```
gem install spring
```

* add spring to your Gemfile ! Also [they say it is not required](https://github.com/jonleighton/spring/blob/master/README.md) I later had an error complaining it wasn't.

```ruby
group :test, :development do
  ...
  gem 'spring'
  ...
group
```

* update your Guardfile example :

```ruby
guard :rspec, cli: "--tag ~@slow", all_after_pass: true, all_on_start: false, keep_failed: true, spring: true, bundler: false do
  ...
end


guard 'cucumber', all_on_start: false, cli: '--format progress --no-profile', command_prefix: 'spring', bundler: false do
  ...
end
```

* add a .spring.rb file to automaticaly restart Spring on main file changes. I think I'll have to update this file when I discover that a test failed because spring needs to be restarted

```ruby
Spring.watch ".spring.rb"
Spring.watch "spec/factories"
Spring.watch "features/env.rb"

Spring.watch_method = :listen
```
