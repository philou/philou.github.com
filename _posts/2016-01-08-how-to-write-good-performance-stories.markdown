---
layout: single-mailing-list
title: "How To Write Good Performance Stories"
date: 2016-01-08 07:58
comments: true
categories:
 - agile
 - performance
keywords: "Agile, Stories, Performance, Performance Stories, Uncertainty"
description: "The pitfalls and a guide about how to write performance stories in an uncertain context"
---
If you're having difficulties writing good performance related stories for your project, that's no surprise ! We've been through the same troubles and we found a way that works a lot better.

![A Mb speed counter]({{site.url}}{{site.baseurl}}/imgs/2016-01-08-how-to-write-good-performance-stories/speed.jpg)

## Solution 1 : [Performance is a feature](/performance-is-a-feature/)

Right ? In typical agile way, a story about performance would be written like

> As marketing, I want the page load to perform under 1 second, In order for the customers to stay on the site

If the performance bottleneck and the fix are obvious, that might work very well. If that's your case, then go on, that's the simplest way!

Unfortunately for us, we are not in that case. [At work](http://www.murex.com) we are building a risk engine and we need to perform extremely well on a wide set of different scenarios. Imagine a story such as

> As a risk manager, I want the VAR scenario to compute in less than 1 second, in order to have real time data

* we're pretty sure that there won't be 1 but many bottlenecks to fix before reaching the expected performance
* speeding up the VAR scenario might slow down other scenarios

That makes this kind of story too fuzzy. We tried them, and we had difficulties to estimate and close them.

## Solution 2 : Back to the traditional way

Without an agile backlog, developers would have worked on tasks such as

> Add caching to the computation engine

That's estimable, but we've got no clue of the *why* ! When it's done, we won't be able to know whether it's worth to keep it or not. In fact, it's just not a [story](https://en.wikipedia.org/wiki/INVEST_(mnemonic)) !

## Solution 3 : Mixing both

Here is how we we are now writing performance stories at work :

> As a risk manager, I want to have caching in the computation engine, in order to the VAR scenario compute under 1 second (in order to have real time data)

It's now estimable, we know what it's there for. It's obviously not enough though : we know that we will very likely need to do other performance stories after this one.

## Embrace uncertainty

![A Maserati engine]({{site.url}}{{site.baseurl}}/imgs/2016-01-08-how-to-write-good-performance-stories/engine.jpg)

The fact is that in our context, getting better performances is *hard* :

* it requires a lot of work
* we don't know how much at the beginning
* we often try things that don't work

This makes the whole project more uncertain, so we're better off embracing this uncertainty in the way we write and prioritize our performance stories.
