---
layout: post
title: "How we used the improvement kata to gain 25% of productivity - Part 5"
date: 2017-09-27 07:00
comments: true
categories:
 - agile
 - lean
 - continuous improvement
 - testing
 - improvement kata
 - first-improvement-kata-series
keywords: "Toyota Kata, Continuous Improvement, Software teams, Lean, Lean Software, Agile, Scrum, Measure, Data, Bug Policy, Exploratory Testing"
description: "Fifth post in a series relating our first improvement kata. Covers the end of the Plan-Do-Check-Act phase, when we decide to do more exploratory testing, and the end consequence on the team"
---
This is the fifth (and last) post of a [series of 5](/blog/categories/first-improvement-kata-series/) about the improvement kata. If you haven't read the beginning of the story, I recommend you start from [part 1](/how-we-used-the-improvement-kata-to-gain-25-percent-of-productivity-part-1/).

In the [previous post](/how-we-used-the-improvement-kata-to-gain-25-percent-of-productivity-part-4/), we decided to adjust our definition of a bug to limit the time lost on nice-to-have bug fixes.  

It would take a while to know if adjusting the definition of a bug would help us or not. At the same time, we knew it would not help us to reduce the number of bugs we escaped to other teams.

![A 'SUCCESS' banner in the wind](../imgs/2017-09-27-how-we-used-the-improvement-kata-to-gain-25-percent-of-productivity-part-5/success-banner.jpg)

## Idea 3 : More exploratory testing

We decided to push on this matter as well. This means that we would be running two [PDCAs (Plan-Do-Check-Act)](https://en.wikipedia.org/wiki/PDCA) at the same time. This is not the improvement kata procedure by the book. That could have been an error from our side, as first time users of the kata. Or maybe it's a pragmatic habit to adapt the kata to real life ... I guess we'll know better as we apply the kata more often. The danger is that the different experiments can conflict with each other. When measuring the results, it becomes difficult to link observations with experiments. Anyway, back to our own situation, as you'll see, it ended up well for us.

The first thing was to know a bit more about our bugs. Checking the recently closed bugs yielded suspicions about a recent features. Analyzing further proved our gut feeling.

###### Curve of how bugs were fixed on the last 2 months

![Curve of how bugs were fixed on last 2 months](../imgs/2017-09-27-how-we-used-the-improvement-kata-to-gain-25-percent-of-productivity-part-5/fixed-bugs.png)

###### Curve of the origin of bugs on the last 2 months

![Curve of the origin of bugs on the last 2 months](../imgs/2017-09-27-how-we-used-the-improvement-kata-to-gain-25-percent-of-productivity-part-5/kind-of-bugs.png)



Ignoring the Christmas drop at the middle of the curve, we concluded 2 things from these graphs :

* We were leaking bugs to the product
* Bugs mostly came from newly added features

> Despite all our automated tests and regular  exploratory testing, we were leaking bugs.

We decided to do more exploratory testing for a while ! We were already doing exploratory testing at the end of every story. We added an extra 1 hour team session of exploratory testing every sprint.
## Do, Check & Act

We used these new conventions for a few weeks. We did more exploratory testing, and would be more strict about what a bug was. We stuck to our prioritization : first improvements, then bugs and only after, stories.

After a few weeks of that, we were able to update our bug trend and do a linear regression on it again. Here were the results :

![Curve of the origin of bugs on the last 2 months](../imgs/2017-09-27-how-we-used-the-improvement-kata-to-gain-25-percent-of-productivity-part-5/final-bug-trend.png)

Hurray ! As you can see, we were to be done with bugs around April 2017, which was 3 months away at that time.

> 💡 Quality is free, but only for those willing to pay for it ! [[Tom DeMarco](https://en.wikiquote.org/wiki/Tom_DeMarco) in [Peopleware](https://www.amazon.com/Peopleware-Productive-Projects-Teams-3rd/dp/0321934113/ref=pd_lpo_sbs_14_t_0?_encoding=UTF8&psc=1&refRID=9SX9Y3RG61NB7N9VJ6KS&dpID=61lAwzXfQiL&preST=_SX218_BO1,204,203,200_QL40_&dpSrc=detail)]

[![Cover of the 'Peopleware' book by Tom DeMarco & Timothy Lister](../imgs/2017-09-27-how-we-used-the-improvement-kata-to-gain-25-percent-of-productivity-part-5/peopleware.jpg)](https://www.amazon.com/Peopleware-Productive-Projects-Teams-3rd/dp/0321934113/ref=pd_lpo_sbs_14_t_0?_encoding=UTF8&psc=1&refRID=9SX9Y3RG61NB7N9VJ6KS&dpID=61lAwzXfQiL&preST=_SX218_BO1,204,203,200_QL40_&dpSrc=detail)

We confidently adopted these practices as part of our working agreements. This brought our first improvement kata to its end.

> 💡 The improvement kata not only brings improvements, it also teaches you why they work.

## 3 months later

As you know, April 2017 is long gone. I can now give you a more up to date report of the actual effects on the team's daily work. 

First, the backlog does not contain bugs anymore. We payed the bug debt back. Second, we still discover some bugs from time to time, but a lot less than we used to. To summarize, there is now a pair of developers (25%) of the team that can work on user stories instead of fixing bugs.

As we are still fixing bugs as they appear, the 25% productivity gain claim might be an overstatement, but 20% is not. At the same time, less bugs are now escaping. This means that the whole organization is saving on interruptions and rework. 25% might not be such a bold claim after all !

## This is it !

This was post 5 in a [series of 5](/blog/categories/first-improvement-kata-series/) about the improvement kata. I'm not completely done writing about this improvement kata though. In the coming weeks, I'll post about the [lessons learned](/lessons-learned-from-running-our-first-improvement-kata/) and how to start your own improvement kata.
