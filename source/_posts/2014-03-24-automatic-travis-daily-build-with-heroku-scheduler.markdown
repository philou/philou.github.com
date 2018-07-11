---
layout: post
title: "Automatic Travis daily build with Heroku scheduler"
date: 2014-03-24 06:31
comments: true
categories:
 - travis
 - continuous-integration
 - open-source
 - heroku
 - rake
keywords: "travis, travis-ci, ci, continuous-integration, open-source, heroku, heroku scheduer, daily build, cron, rake"
description: "Description of a simple open source library that can be used to quickly setup an Heroku scheduled task to run a Travis daily build of an open source project"
published: true
---
As [I just released](/auchandirect-scrapi-an-unofficial-api-ruby-gem/) [auchandirect-scrAPI](https://github.com/philou/auchandirect-scrAPI), and that it relies on scrapping, I needed a daily build.

The [Travis](https://travis-ci.org) team [is already working](https://github.com/travis-ci/travis-ci/issues/582) on this, and I found a small utility app called [TravisCron](http://traviscron.pythonanywhere.com/) where anyone can register his repo for an automatic build.

Unfortunately, the feature is not yet ready in Travis, and the TravisCron guys did not yet activate my repo. After having a look at the [TravisCron source code](https://github.com/FiloSottile/travis-cron) and the [Travis API](https://github.com/travis-ci/travis.rb), I found out that it is really simple to do the same thing on my own.

That's how I created [daily-travis](https://github.com/philou/daily-travis). It's a tiny Rake task, ready to be pushed and automaticaly scheduled on heroku that will restart the latest build when run.

Details are in the [README](https://github.com/philou/daily-travis/blob/master/README.md)

@Travis : Thanks again for your service.

![I love Travis logo]({{site.url}}/imgs/2014-03-24-automatic-travis-daily-build-with-heroku-scheduler/travis-ci.jpeg)
