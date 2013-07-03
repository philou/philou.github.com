---
layout: post
title: "Be careful not to bundle FakeWeb in production"
date: 2013-07-03 06:31
comments: true
categories:
 - testing
 - ruby
published: true
---
For testing purpose, I added [FakeWeb](https://github.com/chrisk/fakeweb) to my app. Later, I deployed it to a staging env on heroku to find out that my scrapper started to fail with some strange Net::HTTPForbidden were occuring after about 90 minutes of scrapping, with no clear reason. It turned that I had mistakenly added FakeWeb to all environments, and that just removing it fixed the issue !

As it is working now, I didn't take the time to dig deeper into it ...
