---
layout: single-mailing-list
title: "How to mock your browser's timezone with Jasmine and MomentJS"
date: 2017-03-30 06:29
comments: true
categories:
 - testing
 - javascript
 - jasmine
keywords: "Javascript, Javascript Testing, JS, JS Testing, Jasmine, MomentJS, Moment Timezone, Timezone"
description: "An east way to set the time and timezone when testing JS with Jasmine"
---
Last week, I've been working at adding a distributed countdown to my [Online Planning Poker App](https://github.com/philou/planning-poker). As our team works from Paris and Beirut, I wanted to unit test that it would work well through different timezones. I found a surprisingly simple solution.

## What Google told me

I first searched Google to see how to do it. I found 2 answers that looked promising :

* [You can use moment-timezone to mock timezones in Jasmine](https://balanceiskey.github.io/2016/01/27/mocking-timezones.html) which I unfortunately did not manage to use
* [How to mock the browser's timezone?](http://stackoverflow.com/questions/12220717/how-to-mock-the-browsers-timezone) which seemed a bit of hack

Known results for such a simple situation were disappointing !

## What I ended up with

After a good deal of dabbling around, I eventually found a pretty simple solution using [Jasmine](https://jasmine.github.io/) and [Moment Timezone](https://momentjs.com/timezone/) :

```javascript
jasmine.clock().install();
...
jasmine.clock().mockDate(moment.tz("2017-03-23 10:00:00", "Europe/Paris").toDate())
```

Obviously, the drawback is that it implies setting both the timezone *and the time*. This should be ok in most of unit tests though, but might be an issue in some cases.
