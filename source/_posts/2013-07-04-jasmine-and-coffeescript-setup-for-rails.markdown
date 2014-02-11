---
keywords: "ruby, testing, rails, javascript, coffeescript, Jasmine, setup"
layout: post
title: "Jasmine and coffeescript setup for rails"
date: 2013-07-04 07:44
comments: true
categories:
 - ruby
 - testing
 - rails
 - javascript
 - coffeescript
 - jasmine
published: true
---
As I started to write more javascript code in my [rails app](https://www.mes-courses.fr), it became obvious that I should be testing it ! I wanted to use [jasmine](http://pivotal.github.io/jasmine/) and [coffeescript](http://coffeescript.org). I searched a long time to find out what was the most common and supported setup for a rails app, so now I recommand

```ruby
gem 'jasmine'
gem 'jasminerice'
gem 'guard-jasmine'
```

* The [jasmine gem](https://github.com/pivotal/jasmine-gem) is by far the most common jasmine gem, it is supported by [Pivotal Labs](http://pivotallabs.com) so there is no fear of it being droped soon.
* The [guard-jasmin gem](https://github.com/netzpirat/guard-jasmine) is supported by [MKSoft](https://mksoft.ch), and is not only handling continuous [phantomjs](http://phantomjs.org/) headless jasmine testing through guard, but it also provides command line and rake tools to run your jasmine specs during continuous integration.
* Eventually, the [jasminerice gem](https://github.com/bradphelan/jasminerice) makes it easy to write your jasmine specs with coffeescript. It also wraps a version of [jasmine-jquery](https://github.com/velesin/jasmine-jquery) to assist client javascript testing. Although there is a "looking for maintainer" message on the README page, there are some recent commits, so it seems that pull requests are still being merged even if the project is not actively developpped anymore ... I belive volunteers are welcome.

All 3 have detailed and up to date setup and usage instructions.
