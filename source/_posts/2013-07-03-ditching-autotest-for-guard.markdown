---
layout: post
title: "Ditching autotest for guard"
date: 2013-07-03 06:35
comments: true
categories:
 - testing
 - ruby
published: true
---
I have been using [autotest](https://github.com/grosser/autotest) for 2 years, and it's been great ! The first time I ran it I thought "This rocks !" and I have always been using it since ...

A little later I read the book [Continuous Testing: with Ruby, Rails and JavaScript](http://pragprog.com/book/rcctr/continuous-testing) and it suggested to use [watchr](https://github.com/mynyml/watchr) instead. I never switched, partly because I did not take the time, and partly because watchr seemed to need quite a bit of manual configuration. Then, while contributing to other gems, I stumbled upon [guard](https://github.com/guard/guard) and this one seemed great.

Switching to guard was in fact very simple, It took about 15 minutes, a lot less than the time I had spent configuring or tweaking autotest. I simply added these to my Gemfile
```ruby
gem 'guard'
gem 'guard-rspec'
gem 'guard-cucumber'
```
I ran the install steps, and everything was working ! It's a shame I did not do the change earlier.

