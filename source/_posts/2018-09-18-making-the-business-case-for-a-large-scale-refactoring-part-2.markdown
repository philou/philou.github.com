---
layout: post
title: "Making the business case for a large scale refactoring - Part 2"
date: 2018-09-27 19:00
comments: true
categories: 
 - refactoring
 - technical debt
 - business value
 - planning
 - large-scale-refactoring-sponsorship-series
keywords: "Business Case, Making the Business Case, Large Scale Refactoring, refactoring large software projects, refactoring large software systems, refactoring large code base, refactoring in large software projects"
description: "Using real numbers to make a business plan for a large scale refactoring is only the first step. Here are techniques to make the business plan more compelling. Not only will they improve the numbers, but some also increase the value of the refactoring!"
header:
   teaser: /imgs/2018-09-18-making-the-business-case-for-a-large-scale-refactoring-part-2/refactoring-trim-teaser.jpeg
   og_image: /imgs/2018-09-18-making-the-business-case-for-a-large-scale-refactoring-part-2/refactoring-trim-og.jpeg
---
_How to improve a factual business case for a refactoring to make it even more compelling to business people._ 

In last post, I explained how to make a business case for a large scale refactoring using real numbers. Numbers are great, but they won't get us sponsorship by themselves. We need to understand them. We need to make sure they make sense. We need to make sure they are backing our refactoring up. In the end, we might need to improve them.

![Drawing of a hammer removing the G from refactoring written with stones. Trimming a refactoring is an effective way to increase its value, and make the business case better.]({{site.url}}/imgs/2018-09-18-making-the-business-case-for-a-large-scale-refactoring-part-2/refactoring-trim-teaser.jpeg)

This is the thirteenth post in a [series about how to get sponsorship for large scale refactorings](/blog/categories/large-scale-refactoring-sponsorship-series/). If you haven't, I encourage you to start from [the beginning](/how-to-convince-your-business-to-sponsor-a-large-scale-refactoring/).

## What If Payback Period is too long?

If payback period is close enough, then great, we can go out and pitch the refactoring. Most of the time though, large scale refactorings take quite some time to payback.

### Product Life Expectancy

The first thing to do is to put this in the perspective of the company's or product's life expectancy. Imagine a product which is 10 years old and expected to cash-in for another 10 years. In this context, a refactoring that pays for itself in 1 year _is_ a great opportunity!

> 💡 The longer the life expectancy of your product, the more refactoring you should invest in!

Picking the age of the product as its life expectancy is realistic most of the time. New products have low life expectancy, but legacy systems seem to last forever!

### Split the refactoring!

A strategy to reduce the payback period is to split this large scale refactoring. Can we make it smaller, more focused, or find sub steps that pay for themselves faster? Here again, [incremental refactoring techniques](/blog/categories/incremental-software-development/) will be critical.

### Did we do an error?

It's also possible that we did an error in the business case computation. Sampling and logging are error-prone techniques.

Is the iteration we took for sample is representative enough of the future work ? In doubt, we can re-do the sampling or the computation. Using better data leads to a better conclusion.

There are also other costs we did not take into account to be able to stick to man.hours. Let's have a look at these.

## Ideas for Improvements

### Convert to Money

If we have access to money numbers, we should be able to improve the figures with new costs.

First, we'll need the average wage of team members to convert our figures in real money.

If we have the figure, we can add the image cost of a bug to the non-refactoring cost.

Finally, if we have the revenue per feature, we can add the opportunity cost to the refactoring cost. Opportunity cost is the cost of not working on features !

![Stacks of coins. If we have access to the good figures, it is possible to make the business case for large scale refactoring with real money instead of man.hours.]({{site.url}}/imgs/2018-09-18-making-the-business-case-for-a-large-scale-refactoring-part-2/money.jpg)

### Use a similar refactoring

Did someone do a similar refactoring in the past? If so, we can use it to improve your estimates about:

*   Refactoring time
*   Productivity improvement
*   Time saved on bugs and support.

### Is it a good idea in the end?

Are the numbers still arguing against the refactoring? Maybe it's not such a great idea afterwards ... We ought not to argue for something of dubious value, our credibility is at stake.

At this point, it might be a good idea to look for another improvement to do. Maybe there is other code to refactor or a new productivity tool to build.

> 💡 Avoiding bad moves is a key benefit of making a business case for large scale refactoring!

## Other References

I'm fond of this way of prioritizing software. It's the way out of bickering about best practices, and towards sustainable pace. If you want to learn more about this, here are 2 helpful references :

*   A blog post [Making Technical Debt Visible](https://www.scrum.org/resources/blog/making-tech-debt-visible) . It explains how to use the scrum sprint backlog to display the cost of technical debt.
*   A PluralSight course [Making the Business Case for Best Practices](https://www.pluralsight.com/courses/making-business-case-for-best-practices). It's just great. It contains a ton of practices to help us to get realistic numbers and estimates.

[![Visual notes from the Plural Sight course "Making the Business Case for Best Practices". It contains many techniques that can be used for large scale refactoring]({{site.url}}/imgs/2018-09-18-making-the-business-case-for-a-large-scale-refactoring-part-2/making-the-business-case-small.jpg)]({{site.url}}/imgs/2018-09-18-making-the-business-case-for-a-large-scale-refactoring-part-2/making-the-business-case.jpg)<div class="image-credits">Visual notes from <a href="https://www.pluralsight.com/courses/making-business-case-for-best-practices">Making the Business Case for Best Practices</a></div><br>

## Next post

This is the thirteenth post in a [series about how to get sponsorship for large scale refactorings](/blog/categories/large-scale-refactoring-sponsorship-series/). We're reaching the end ! In [next week's post](/become-a-business-partner-and-stop-begging-for-refactoring/), I'll go over Business Partnership. There are some practices we can put in place once we have earned the trust from business people. Stay tuned !
