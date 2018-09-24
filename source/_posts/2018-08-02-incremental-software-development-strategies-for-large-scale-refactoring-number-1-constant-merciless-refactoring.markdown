---
layout: post
title: "Incremental Software Development Strategies for Large Scale Refactoring #1 : Constant Merciless Refactoring"
date: 2018-08-02 08:31
comments: true
categories: 
 - refactoring
 - incremental-software-development
 - planning
 - large-scale-refactoring-sponsorship-series
keywords: "Constant Merciless Refactoring, Merciless Refactoring, Constant Refactoring, Large Scale Refactoring, refactoring large software projects, refactoring large software systems, refactoring large code base, refactoring in large software projects, incremental software development, incremental software development approach, iterative incremental software development, incremental development of software, incremental and iterative development strategies, incremental software development strategies"
description: "The easiest refactorings to negotiate are the ones we don't have to talk about ! Learn how practices like 'Yesterday's weather', 'the Planning Game', 'the Boy Scout Rule' and other work splitting tricks can help to embed as much constant merciless refactoring as you can in your day to day work."
header:
   teaser: /imgs/2018-08-02-incremental-software-development-strategies-for-large-scale-refactoring-number-1-constant-merciless-refactoring/recurring-cleanup-teaser.jpeg
   og_image: /imgs/2018-08-02-incremental-software-development-strategies-for-large-scale-refactoring-number-1-constant-merciless-refactoring/recurring-cleanup-og.jpeg
---
*Here's everything you need to find the time for constant merciless refactoring ... without asking for the permission!*

[My previous post](/incremental-software-development-techniques-for-large-scale-refactorings/) advocated incremental software development for large scale refactorings. It's less risky and it prevents tunnel effects. Most of all, it's a lot easier to convince business people of engaging in a refactoring this way.

It's one thing to understand why it's the way to go, but it's another to be able to do it ! In this post, I'll start by explaining how to find the time to do constant [merciless refactoring](http://www.extremeprogramming.org/rules/refactor.html).

This is the sixth post in [a series about how to get sponsorship for large scale refactoring](/blog/categories/large-scale-refactoring-sponsorship-series/). If you haven't, I encourage you to start from [the beginning](/how-to-convince-your-business-to-sponsor-a-large-scale-refactoring/).

![Constant Merciless Refactoring illustrated as a recurring cleanup activity]({{site.url}}/imgs/2018-08-02-incremental-software-development-strategies-for-large-scale-refactoring-number-1-constant-merciless-refactoring/recurring-cleanup.jpg)

## ~~Steal~~ Take the time for constant merciless refactoring

> If it hurts, do it more often ! [Wisdom of the internet](https://martinfowler.com/bliki/FrequencyReducesDifficulty.html)

As a child, I used to be a very untidy kid. Every few week, my room would get in a real mess, and my mum would order me to clean all this mess. I would then lose 1 or 2 hours tidying my room up. She used to tell me that if I kept things tidy as I used them, I would not have to lose this time. From the top of my 10 years old, I would judge this advice as nonsense. 

![This is the kind of mess my bedroom used to be in, when I was a kid, before I learned the virtues of constant merciless refactoring]({{site.url}}/imgs/2018-08-02-incremental-software-development-strategies-for-large-scale-refactoring-number-1-constant-merciless-refactoring/messy-bedroom.jpg)

Fast forward a few years, I am myself a parent and I've been working with legacy code for many years. These years have taught me how much I was wrong ...

> 💡 The easiest refactorings to negotiate are the ones we don't have to talk about !

The more refactoring we embed in 'Business As Usual', the more we'll do, and the less we'll argue with the business. We can wonder if this is still 'professional' ? In [The Art Of Agile Development](https://www.amazon.com/Art-Agile-Development-Pragmatic-Software/dp/0596527675/ref=sr_1_1?ie=UTF8&qid=1533190334&sr=8-1&keywords=the+art+of+agile), [James Shore](http://www.jamesshore.com/) explains that managing technical debt is the key to long term productivity. (Details in the [Risk Management section of his book](http://www.jamesshore.com/Agile-Book/risk_management.html)). As developers, _we_ are the only experts in the code, the responsibility to keep it clean falls on us.

> Never ask the permission to do a good job ! [Doc Norton](http://docondev.com/)

There's more to constant merciless refactoring ! It also keeps us in a good position to accept new features or refactorings later down the road.

Following are the 3 practices that make up constant merciless refactoring.

## Yesterday's weather and slack time

20 years ago, a promises of agile software development was to stick to a [sustainable pace](http://www.sustainablepace.net/what-is-sustainable-pace). When we are working with a flavor of [Scrum](https://www.scrum.org/), we can rely on it's literature to inject some [slack time](http://www.jamesshore.com/Agile-Book/slack.html).  Slack time is buffer time at the end of every iteration. We should not plan any work during the slack, to accommodate with the unexpected. It's a way to deliver on forecasts, whatever happens.

In short, if your velocity chart looks something like that :

![Drawing of a fluctuating team velocity. This is often the result of not enough constant merciless refactoring]({{site.url}}/imgs/2018-08-02-incremental-software-development-strategies-for-large-scale-refactoring-number-1-constant-merciless-refactoring/velocity.jpg)

Scrum tells us to plan what you delivered in your worst iteration for the next one ! When things will work bad, we're still pretty likely to deliver what we wanted. When things work well, we'll have time to tackle refactoring.

There's a lot more to say about slack time. How to take some when you are using [Kanban](https://en.wikipedia.org/wiki/Kanban) ? How to make sure you keep some when your velocity becomes pretty stable ? How to do you increase your velocity in the long term ? (I guess I'll have to write a full blog post about this some day.)

## The Boy Scout Rule

I already blogged about the [Boy Scout Rule](http://www.informit.com/articles/article.aspx?p=1235624&seqNum=6). Here is how [Uncle Bob](https://blog.cleancoder.com/) wrote it :

> Always leave the file you are editing a little better than you found it. Bob Martin

Following this simple rule goes a long way to keep the code clean and ready for larger refactorings. It works arm in arm with Yesterday's weather principle. The extra time we take for clean up impacts our capacity to plan stories and features. This creates time to keep on doing the boy scout rule in future iterations.

How 'clean' the code should be is a team decision. Coding conventions and a static code analyzer are very important to track the boy scout rule. I learned that code reviews, pairing, mobbing and [coding dojos](/blog/categories/team-randori-series/) are great to agree on coding conventions.

## Embedding refactoring in features

The Test Driven Development loop goes as Red-Green-Refactor.

![TDD's Red-Green-Refactor loop. Itself highlighting Constant Merciless Refactoring as a recurring activity]({{site.url}}/imgs/2018-08-02-incremental-software-development-strategies-for-large-scale-refactoring-number-1-constant-merciless-refactoring/red-green-refactor.jpg)

The same loop goes on at larger scale for Acceptance or Feature Test. When repeated many times, the loop could as well be Refactor - Red - Green. In fact, it's a lot easier to refactor when you know what feature you want to build than at the end of the previous one. (Nat Pryce [wrote about that](http://natpryce.com/articles/000780.html) in more details)

> 💡 "Disguise" refactoring as first technical sub tasks of features to get them prioritized.

All this to say, we should start our features with the pre-requisite refactoring ! We should not build features on shaky foundations. We should also impact our estimates. In fact, it's a lot easier to justify to business people at that moment. We don't need to mention 'refactoring' or 'clean up'. We can use technical sub-tasks to track these technical refactorings. Technical sub-tasks are the team's and don't need to be understandable by business people.

![Technical tasks drawn "Under the sea" and visible to devs only. This leaves them room to do constant merciless refactoring]({{site.url}}/imgs/2018-08-02-incremental-software-development-strategies-for-large-scale-refactoring-number-1-constant-merciless-refactoring/tech-tasks-sea-level.jpg)

## To be continued

Finding the time for constant merciless refactoring is one thing, but how do we fit the work in these short slots ? In the [next post](/incremental-software-development-strategies-for-large-scale-refactoring-number-2-baby-steps/), I'll continue about how to actually work in baby steps.

This was the sixth post about [how to get sponsorship for large scale refactoring](/blog/categories/large-scale-refactoring-sponsorship-series/).
