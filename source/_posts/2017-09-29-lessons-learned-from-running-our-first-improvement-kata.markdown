---
layout: post
title: "Lessons learned from running our first improvement kata"
date: 2017-09-29 06:15
comments: true
categories:
 - agile
 - lean
 - continuous improvement
 - testing
 - improvement kata
 - retrospectives
keywords: "Improvement kata, Lean, Agile, Continuous Improvement, Exploratory Testing, Retrospective"
description: "Takeaways from applying the improvement kata : development best practices as well as lessons as how to apply the kata"
---
During the past few weeks, I blogged the [story of our first improvement kata](/how-we-used-the-improvement-kata-to-gain-25-percent-of-productivity-part-1/).

Doing this first [improvement kata](http://www-personal.umich.edu/~mrother/The_Improvement_Kata.html) taught us many lessons. We re-discovered best practices of the software industry. We also learned more general things about the improvement kata itself.

![Drawing of books]({{site.url}}/imgs/2017-09-29-lessons-learned-from-running-our-first-improvement-kata/lessons.jpg)

## Rediscovered best practices

As we went through the kata, we 'proved' many known best practices. We did not have to _believe_ them, we had data explaining that they worked. For example :

*   [#NoEstimate](https://twitter.com/hashtag/noestimates) works. Back in [part 3](/how-we-used-the-improvement-kata-to-gain-25-percent-of-productivity-part-3/) we saw that the story point and story count curves were very similar, almost identical
*   [#NoBug policy](https://www.infoq.com/articles/0-bugs-policy) was part of the solution to our problem
*   Doing more exploratory testing resulted in less bug fixing and increased our productivity. This proves principles like "[Build quality in"](http://deming14points.com/quotes/build-quality-in/) and ["Quality is free"](https://en.wikiquote.org/wiki/Tom_DeMarco)

We also pushed the #NoBug policy further than it is usually done. We defined a clear definition for bugs that anyone could use. Doing so, we removed the product owner (or on-site customer) from the picture. Very often, the PO is the only one who can sort stories from bugs out. We created what [Donald Reinertsen](http://reinertsenassociates.com/category/tips/) calls a distributed rule in the [flow book](https://www.amazon.fr/Principles-Product-Development-Flow-Generation/dp/1935401009). It increased empowerment, removes bottlenecks, while ensuring alignment.

[![The 'Flow' book cover]({{site.url}}/imgs/2017-09-29-lessons-learned-from-running-our-first-improvement-kata/flow-book-cover.jpg)](https://www.amazon.fr/Principles-Product-Development-Flow-Generation/dp/1935401009)

## The improvement kata

The first general lesson that we learned is that the improvement kata works !

At the beginning, we were very uneasy not to have perfect data. Remember how we had to resort to velocity as a proxy measure for productivity. In the end, that was not a severe problem. It still allowed us to understand what was going on.

We also learned that [retrospective](http://philippe.bourgau.net/blog/categories/retrospectives/) is not the only road to continuous improvement. In fact, the improvement kata and retrospectives are very different :

*   The time frame is different. A retrospective lasts for 1 or 2 hours and yield immediate results. An improvement kata is a background task that could take months in theory !
*   But the improvement kata also digs a lot deeper in the topic and brings true understanding. In our case, it fixed a problem that retrospectives where failing to address.
*   Ownership is also different. Retrospectives are a team activity. The improvement kata needs one or a few owners. It would be very difficult to align everyone on the same path of thoughts if we did it as a group activity.
*   Being a team activity, retrospectives have built-in alignment. The conclusions of the improvement kata must explained and agreed for a team to act on them. A good practice is to have regular (short) team meetings to share the current state of an improvement kata.
*   As the improvement kata is a more individual activity, it is more remote friendly. Team members can run the kata on their side, sharing everything through a wiki, or a blog for example.

Keep in mind that this was our first try at the kata. Some of our difficulties might disappear with a bit of practice !

## What's next ?

### Hybrid continuous improvement

I clarified the differences between the improvement kata and retrospectives. That's not the end of it. I'm sure a mixed format could be very interesting ! Start with a retrospective to collect the team's problems, and vote on the more important. Add a corresponding improvement kata task to the backlog. Someone would then handle this improvement task, sharing with the team along the way.

This might be a great opportunity to reduce meeting time with shorter retrospectives.

> 💡 Reduce meeting time with mixed retrospective & improvement kata

### Data science for software

Going through this improvement kata made me realize something else. It is very difficult to get quality data to investigate. We had to resort to what was available all the way.

What's striking is that we use software tool for all our work ! These tools have logs and could record usage data somewhere. Imagine all we could learn by mining all this data ! Our IDEs, CI servers, quality monitors, test tools, version control and project management tools should store everything we do at the same place !

With all this data, could we improve our estimations ? Could we find creative ways to be more productive ? Could we estimate the speed up that fixing some technical debt would bring ?

> 💡 What are we waiting to apply data science to the development process ?

As the saying goes, "The cobbler's children go barefoot". We are building such systems for others, but not for ourselves.

Hopefully, new tools like [CodeScene](https://codescene.io/) are emerging to fill this gap. You can learn more about CodeScene on their [website](https://codescene.io/), or from the [founder's book](https://www.amazon.com/Your-Code-Crime-Scene-Bottlenecks/dp/1680500384). It analyses the version control history to find hot spots and other things in your code.

[![The 'Code as a Crime Scene' book cover]({{site.url}}/imgs/2017-09-29-lessons-learned-from-running-our-first-improvement-kata/code-as-crime-scene.jpg)](https://www.amazon.com/Your-Code-Crime-Scene-Bottlenecks/dp/1680500384)

While we keep dreaming of such tool, I'll continue to blog. Next week, I will write a short guide of [how to run your first improvement kata](/how-to-run-your-first-improvement-kata/).

