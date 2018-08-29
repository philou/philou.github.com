---
layout: single
title: "How we used the improvement kata to gain 25% of productivity - Part 2"
date: 2017-09-12 09:00
comments: true
categories:
 - agile
 - lean
 - continuous improvement
 - improvement kata
 - first-improvement-kata-series
keywords: "Toyota Kata, Continuous Improvement, Software teams, Lean, Lean Software, Agile, Scrum, Measure, Data"
description: "Second post in a series relating our first improvement kata. Covers the first half of the 'understand' phase, where we start to have suspicions about the way we were handling bugs."
---
In my [previous post](/how-we-used-the-improvement-kata-to-gain-25-percent-of-productivity-part-1/), I described the productivity issue our team was facing. How retrospectives did not work, and how I started looking at the [improvement kata](http://www-personal.umich.edu/~mrother/The_Improvement_Kata.html).

We had gone through the first phase of the improvement kata : set the end goal.

> Generating enough profit for the business while sticking to a sustainable pace.

Time to start the second phase : Understand.

![Drawing of a question mark transforming into a light bulb]({{site.url}}{{site.baseurl}}/imgs/2017-09-12-how-we-used-the-improvement-kata-to-gain-25-percent-of-productivity-part-2/question-light.jpeg)

## Understand

Where we really slower ? Or was it an illusion ?

When trying to understand, you have to start with the data you have. You continue digging until you get a deeper understanding of the situation.

### Velocity

We started with available data : story points and velocity. For sure this is a pretty bad measure of productivity. (Note : we should never use velocity for performance appraisal) In our case though, it felt like a good starting proxy measure.

Here is our velocity curve over 2 years.

[![Velocity graph]({{site.url}}{{site.baseurl}}/imgs/2017-09-12-how-we-used-the-improvement-kata-to-gain-25-percent-of-productivity-part-2/velocity-small.jpg)]({{site.url}}/imgs/2017-09-12-how-we-used-the-improvement-kata-to-gain-25-percent-of-productivity-part-2/velocity.jpg)

It's obvious that something changed. There are 2 parts to this graph. The velocity dropped between sprint 54 and 16.01. That's a clue that our gut feeling was not completely wrong. Our productivity did change.

### Man days

Our first hypothesis was that team members turnover was the cause. As with any team, some people came, and some people left. Let's superpose the man days and velocity curves.

[![Velocity vs Manpower graph]({{site.url}}{{site.baseurl}}/imgs/2017-09-12-how-we-used-the-improvement-kata-to-gain-25-percent-of-productivity-part-2/velocity-vs-manpower-small.jpg)]({{site.url}}/imgs/2017-09-12-how-we-used-the-improvement-kata-to-gain-25-percent-of-productivity-part-2/velocity-vs-manpower.jpg)

That could only explain _part_ of the problem !

We tried to fine tune the man days curve. We took people's involvement in tasks outside of programming into account. We used coefficients depending on the developers' experience. That did not provide a better explanation.

We had to find another explanation.

### Velocity computation

As I said earlier, velocity is not a measure of productivity. Any change in the way we were computing velocity would impact this curve.

We had kept photos and Trello boards of our [retrospectives meetings](/trellospectives-remote-retrospectives-with-trello/). We searched them through for anything that could impact velocity. Here is what we found :

* At sprint 55, we decided to ditch the [focus-factor](https://www.scrum.org/resources/deadly-disease-focus-factor)
* At sprint 61, we started to do regular [exploratory-testing](/how-we-started-exploratory-testing/). Exploratory testing discovers more bugs on top of user reported bugs. This made us spend more time on fixing bugs.
* At sprint 62, as we opted for a [No Bug policy](https://medium.com/quality-functions/the-zero-bug-policy-b0bd987be684) we decided not to count story points for bugs

> 💡Keep Photos and Trello boards of Retrospectives as a log of your working agreements changes

The timings almost perfectly matched what we had observed in the first place. The question that came to our minds was :

> Are we spending too much time on bugs ?

## Halfway through understanding

This is how we started to dig into our situation. It's a good time to give you a bit of feedback about how we felt at that point.

It was the first time we tried the improvement kata. More than that, we did not find any tutorial or guides about how to run it. The only instructions we had were theoretical descriptions or super concrete examples. We had to bridge the gap and come up with our own way.

To summarize, we felt a bit lost, we had gathered data from here and there, and we did not know what to look at next. On top of that, the quality of the data we were collecting was not great. We were wondering if we would get anything out of these investigations.

[![The cover of the book 'The First 20 Hours']({{site.url}}{{site.baseurl}}/imgs/2017-09-12-how-we-used-the-improvement-kata-to-gain-25-percent-of-productivity-part-2/the-first-20-hours.jpg)](https://www.amazon.com/First-20-Hours-Learn-Anything/dp/1591846943/ref=sr_1_1?tag=pbourgau-20&amp;ie=UTF8&qid=1483258282&sr=8-1&keywords=the+first+20+hours)

It felt a bit like when I did the [20 hours experiment to learn anything](/how-i-got-my-feet-wet-with-machine-learning-with-the-first-20-hours/). We did exactly what had worked with the learning experiment : we pushed through !

> 💡If you feel lost when doing something for the first time. Push through !

In [next week's post](/how-we-used-the-improvement-kata-to-gain-25-percent-of-productivity-part-3/), I'll continue to detail the 'understand' phase. [The series](/blog/categories/first-improvement-kata-series/) also gained an extra post, and will now be 5 posts long.

More to read next week.
