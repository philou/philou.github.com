---
layout: post
title: "eXtreme eXtreme Programming (2017)"
date: 2017-08-25 07:01
comments: true
categories: 
 - extreme programming
 - agile
 - pair programming
 - remote
keywords: "eXtreme Programming, Agile Software, Pair Programming, TDD, Continuous Delivery, Remote Work" 
description: "What would eXtreme Programming look like if it was invented today ?"
---
What would [XP](http://www.extremeprogramming.org/) look like if it was invented today ?

A few days ago, I stumbled upon these two talks that got me thinking about this question.

<iframe width="560" height="315" src="https://www.youtube.com/embed/cGuTmOUdFbo" frameborder="0" allowfullscreen></iframe>

<iframe width="560" height="315" src="https://www.youtube.com/embed/h62n09XtS-A" frameborder="0" allowfullscreen></iframe>

So I looked deeper into the question, while sticking to the same [values](http://www.extremeprogramming.org/values.html) and principles. Here is what I came up with.

## Practices

### Continuous Deployment

Why should we only deliver at every iteration in 2017 ? [Lot's of companies](https://blog.newrelic.com/2016/02/04/data-culture-survey-results-faster-deployment/) demonstrated how to deploy every commit to safely production. Amazon for example, [deploys new software every second](http://www.zdnet.com/article/how-amazon-handles-a-new-software-deployment-every-second/) !

### [DevOps](https://en.wikipedia.org/wiki/DevOps)++

As a team starts doing continuous deployment, devs get more and more involved in ops. This privileged view on the users's behaviour can turn devs into product experts. Why not push the logic further and make them _the_ product guys as well ?

### Test in prod

Continuous deployement opens up many opportunities. Deploying safely requires bulletproof rollbacks. Once devs take care of product, code and ops they can shortcut testing and directly [test in prod](https://www.theguardian.com/info/developer-blog/2016/dec/05/testing-in-production-how-we-combined-tests-with-monitoring) with some users ! Rollback remains an option at any time.

### [#NoBugs](http://www.jamesshore.com/Agile-Book/no_bugs.html)

That seems like wishful thinking. The idea is to fix bugs as soon as they appear, but also to prevent them in the first place. Continuous Deployment requires great engineering practices, which enable this way of working. A story cannot be "finished" until test in prod is over, and bugs fixed.

### Kanban

At its core, [Kanban](https://en.wikipedia.org/wiki/Kanban) is a way to limit the work in progress. It's almost a side effect of the previous practices. [#noBugs almost kills interruptions for rework](https://medium.com/quality-functions/the-zero-bug-policy-b0bd987be684). On top of that, devs have full control on their end to end work, so why would they multitask ?

### #NoBacklog

In [Getting Real](https://gettingreal.37signals.com/), basecamp guys said that their [default answer to any new feature request was "No"](https://gettingreal.37signals.com/ch05_Start_With_No.php). Only after the same thing got asked many times would they start thinking of it. Maintaining a long backlog is a waste of time. Dumping backlog items but the current ones saves time. Important ideas will always come up again later.

### #NoEstimates

This one is famous already. [Some teams](https://www.thoughtworks.com/insights/blog/how-estimating-story-counts-worked-us) have saved time by using story count instead of story points. What's the point anyway if the team is already :

*   working as best as it can
*   on the most important thing
*   and deploying as soon as possible

### Data Driven

This is how to drive the system evolution. Instead of relying on projects, backlogs and predictions, use data. Data from user logs and interviews proves if a new feature is worth building or dumping. Exploring logs of internal tools can help to continuous improve.

### Lean startup & Hackathons

Incremental improvements, in either product or organization, is not enough. As [Tim Hardford](http://timharford.com/) explained in [Adapt](https://www.amazon.com/gp/product/1250007550/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1250007550&linkCode=as2&tag=pbourgau-20&linkId=1f1a29f9454328c6606e12b40399eb06), survival requires testing completely new ideas. [Lean startup](https://en.wikipedia.org/wiki/Lean_startup) & [hackathons](https://en.wikipedia.org/wiki/Hackathon) experiments can do just that.

[![The cover of the Adapt book](../imgs/2017-08-25-extreme-extreme-programming-2017/adapt.jpg)](https://www.amazon.com/gp/product/1250007550/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=1250007550&linkCode=as2&tag=pbourgau-20&linkId=1f1a29f9454328c6606e12b40399eb06)

### [Improvement kata](/how-we-used-the-improvement-kata-to-gain-25-percent-of-productivity-part-1/)

[Improvement kata](https://en.wikipedia.org/wiki/Toyota_Kata#The_Improvement_Kata) is a way to drive long term continuous improvement. It's the main tool for that at Toyota (read [Toyota Kata](https://www.amazon.com/gp/product/0071635238/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0071635238&linkCode=as2&tag=pbourgau-20&linkId=93a84b0867a3e0f3dd915d87cba78b90) to learn more). It provides more time to think of the problem than a retrospective. It also fits perfectly in a data driven environment.

### Mob programming

Pair programming is great for code quality and knowledge sharing. [Mob programming](https://en.wikipedia.org/wiki/Mob_programming#cite_note-8) is the more extreme version of pairing where _all_ the team codes together.

### [Throw code away frequently](/throwing-code-away-frequently/)

An alternative to refactoring with unit tests is throwaway and rewrite once it gets too bad. Companies have been doing that for years. I worked at a bank that used to throwaway and rewrite individual apps that were part of a larger system. It can be a huge waste of money if these sub systems are too large. Scaling down to individual classes or microservices could make this cost effective.

### Remote

With access to a wider pool of talents, [remote teams usually perform better](https://martinfowler.com/articles/remote-or-co-located.html). It also makes everybody's life easier. Finally, teams have reported that mob & remote programming [work great together](https://www.infoq.com/presentations/distributed-teams-remote-collaboration).

## Afterthought

What's striking from this list is that it's not that far from the original XP ! For example, continuous deployment and generalists have always been part of it. Another point is that is not science fiction ! I found many teams reporting success with these practices on the internet ! A well-oiled XP team might very well get there through continuous improvement.

The more I look at it, the more XP stands as a unique lighthouse in the foggy Agile landscape.

As for me, I'm not sure I'd dare to swap TDD & refactoring for throwaway & rewrite. I'm particularly worried about the complex domain specific heart of systems. Nothing prevents from using both strategies for different modules though.

I should give it a try on a side project with a microservice friendly language, such as Erlang or Elixir.