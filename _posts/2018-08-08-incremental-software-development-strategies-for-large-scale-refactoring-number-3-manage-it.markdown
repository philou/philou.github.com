---
layout: single
title: "Incremental Software Development Strategies for Large Scale Refactoring #3 : Manage it !"
date: 2018-08-23 06:53
comments: true
categories:
 - refactoring
 - incremental-software-development
 - mikado-method
 - code-analysis
 - selforganizing
 - large-scale-refactoring-sponsorship-series
keywords: "Manage it, Managing large scale refactoring, Planning large scale refactoring, Organizing large scale refactoring, Managing incremental software development, Large Scale Refactoring, refactoring large software projects, refactoring large software systems, refactoring large code base, refactoring in large software projects, incremental software development, incremental software development approach, iterative incremental software development, incremental development of software, incremental and iterative development strategies, incremental software development strategies"
description: "Here are a few best practices to manage incremental software development of large scale refactoring for self organized teams. Maintaining collaboration and focus on only the most important initiatives is key to make constant merciless refactoring efficient."
excerpt: "Refactoring step by step generate a ton of small tasks here and there. Here are some organization best practices to keep track of them."
header:
  teaser: /imgs/2018-08-08-incremental-software-development-strategies-for-large-scale-refactoring-number-3-manage-it/manage-it-teaser.jpeg
---
[My previous posts](/incremental-software-development-strategies-for-large-scale-refactoring-number-1-constant-merciless-refactoring/) where about how to find and use small time slots for large scale refactorings. [Refactoring step by step](/incremental-software-development-strategies-for-large-scale-refactoring-number-2-baby-steps/) is a series of slack slots, sub tasks of features and boy scout rule increments. Unfortunately, keeping track of all these is a challenge of its own. Here are some organization best practices for that.

Here is a little story of what can go bad. I used to work in a team which [had a high 'refactoring culture'.](/refactoring-trick-to-insert-a-wrapper/) Everyone in the team wanted to apply the kind of practices I mentioned in my previous posts. To make things more tricky, we were [working from 2 cities](/from-zero-to-pair-programming-hero/). We had introduced slack time and developers would tackle refactoring at the end of every iteration. As we did not particularly organize or collaborate on slack time, we soon ran into conflicts. People wanted to refactor the same code, maybe in different ways ! After a while we also had too many large scale refactorings going on at the same time. This slowed down progress, increased the [bus factor](https://en.wikipedia.org/wiki/Bus_factor) and the failure rate. Worst of all, it made it difficult to refocus on a newly discovered but urgent refactoring.

With a bit of organization though, we got things to work. Let's see how we managed it.

![Drawing of a calendar entitled "Manage It !". Collaboration and organization are key to succeed to use incremental software development for large scale refactorings.]({{site.url}}{{site.baseurl}}/imgs/2018-08-08-incremental-software-development-strategies-for-large-scale-refactoring-number-3-manage-it/manage-it.jpg)

This is the eighth post in a [series about how to get sponsorship for large scale refactoring]({{site.baseurl}}/categories/#large-scale-refactoring-sponsorship-series). If you haven't, I encourage you to start from [the beginning](/how-to-convince-your-business-to-sponsor-a-large-scale-refactoring/).

##Manage it with a Design Vision

To succeed at anything, we need to know where we are going. It's the same for large scale refactorings. We don't need to have all the details of what we want to build. We do need a good enough draft to avoid going in the wrong direction. That's even more true when we work as a team. Without a shared design vision, people will refactor in conflicting directions.

It's very important to share the vision with all the team. We can stick high level UML sketches on the walls for example. As [Kent Beck](https://twitter.com/kentbeck) suggests, we can also use [metaphores](http://www.extremeprogramming.org/rules/metaphor.html) to communicate the design. In [this talk](https://vimeo.com/275530146), [Nat Pryce](http://www.natpryce.com/) explains that it's a great way start, but that we will have to drop the metaphore later.

<iframe src="https://player.vimeo.com/video/275530146?title=0&byline=0&portrait=0" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
<div class="image-credits">By <a href="https://vimeo.com/275530146">Nat Pryce - What we talk about when we talk about software</a> from <a href="https://vimeo.com/newcrafts">NEWCRAFTS Conferences</a> on <a href="https://vimeo.com">Vimeo</a></div><br>

The idea is not to waste time in a [Big Design Up Front](https://en.wikipedia.org/wiki/Big_Design_Up_Front). We just want to draft a vision :

* We can run a Design level Event Storming (I guess I'll have to blog about this some day)
* We can grab a copy of [Gamestorming](https://www.amazon.com/Gamestorming-Playbook-Innovators-Rulebreakers-Changemakers/dp/0596804172/ref=sr_1_1?ie=UTF8&qid=1534409953&sr=8-1&keywords=gamestorming) and run another kind of collaborative design game
* Or a few team members could work on something the way they prefer

Whatever the technique we start with, we'll be able to refine and evolve the vision down the road.

## Manage it with Mikado Graphs

Remember the '[Mikado Method](http://mikadomethod.info/)' from [my previous post](/incremental-software-development-strategies-for-large-scale-refactoring-number-2-baby-steps/) ? It's a technique to code and deploy large scale refactorings in baby steps. If you had a look at the reference links, you'll might seen mentions of a 'Mikado Graph'. Here is what it looks like :

[![Sample Mikado Graph. The Mikado graph is a great tool to manage and collaborate on incremental software development of large scale refactoring.]({{site.url}}{{site.baseurl}}/imgs/2018-08-08-incremental-software-development-strategies-for-large-scale-refactoring-number-3-manage-it/mikado-graph.png)](http://mikadomethod.info/)
<div class="image-credits">Sample mikado graph from <a href="http://mikadomethod.info/">http://mikadomethod.info/</a></div><br>

As the number of refactoring steps grows, it becomes tricky to keep track of them all. A simple way is to draw them as nodes in a graph, and tackle the work from the leaves. If you are interested, check [these posts about the Mikado Method]({{site.baseurl}}/categories/#mikado-method). In my previous team, we became fans of the Mikado Method. We even built a tool to generate mikado graph from [JIRA](https://www.atlassian.com/software/jira) (our ticket management system) dependencies ! Using colors, we could track where we stood in the refactoring.

![Sample Mikado Graph generated by our tool. Automating around Mikado graphs is of great help for large scale refactoring.]({{site.url}}{{site.baseurl}}/imgs/2018-08-08-incremental-software-development-strategies-for-large-scale-refactoring-number-3-manage-it/generated-mikado-graph.jpg)

The key advantage of mikado graphs is that we can stick them on the wall. This enables all the team to know where we stand in a refactoring. This way, team members can collaborate during their slack. It can also make the boy scout rule more effective. When a developer happens to touch a file that appears in the graph, he or she can move it further in the good direction.

> 💡 A key benefit of mikado graphs is that we can stick them on the wall for everyone to know where we stand in a refactoring.

## Manage it with Metrics

I mentioned coding conventions and a clear [Definition of Done](https://www.agilealliance.org/glossary/definition-of-done/) in [a previous post](/incremental-software-development-strategies-for-large-scale-refactoring-number-1-constant-merciless-refactoring/).  Having code quality constraints is the compass of constant merciless refactoring. To make this actionable and real, we should take the time to setup an automatic metrics system. For example :

[![Doc Norton's talk about "The Technical Debt trap". His metrics are very useful to manage large scale refactoring.]({{site.url}}{{site.baseurl}}/imgs/2018-08-08-incremental-software-development-strategies-for-large-scale-refactoring-number-3-manage-it/tech-debt-trap.jpg)](https://youtu.be/Env47tQewIA?t=2685)

*   [Doc Norton suggests](https://www.youtube.com/watch?v=Env47tQewIA) to track maintainability, coverage, complexity and coupling over time.
*   The [A2DAM model](https://www.agilealliance.org/the-agile-alliance-debt-analysis-model/) suggests using specific rules to create Definition of Done constraints

Putting this in place will help everyone in the team to know if she or he should do more or less refactoring. The first benefit is that it prevents under and over engineering on new code. The second benefit is progress validation through metrics changes as we refactor.

[![Sample metrics dashboard. Out of the box, Code Climate supports 3 out of the 4 metrics suggested by Doc Norton. This can be really helpful to manage incremental software development.]({{site.url}}{{site.baseurl}}/imgs/2018-08-08-incremental-software-development-strategies-for-large-scale-refactoring-number-3-manage-it/code-climate-dashboard.jpg)](https://codeclimate.com/github/philou/planning-poker)

## Manage it with a bit of Planning

Granted, planning is not the most fun part of our job. It can save us a ton of work though. [Joe Wright explains](https://code.joejag.com/2018/lego-workstream-visualisation.html) how they doubled their productivity by spending more time planning. If we want to make a good job of incremental refactoring, we'll need to spend enough time preparing it. Important questions are :

*   What are the most important refactorings to work on ?
*   How many refactorings should we tackle at the same time ?
*   Are we making good progress on our refactorings ?
*   Why is this refactoring not yielding any visible results through our metrics system ?
*   Are there any news that should change our plans ?
*   Are we doing enough refactoring to keep things under control ?
*   What are the next steps in these refactorings ?
*   etc

I'm not talking about a big 6 month planning but rather regular short planning sessions. In [Scrum](https://www.scrum.org/) this kind of planning happens every sprint. To make plannings more visual, engaging and fun, we might us something like [Story Mapping](https://jpattonassociates.com/user-story-mapping/). (I guess I should blog about this someday.)

> 💡 Keeping a Work In Progress limit on refactorings is essential.

## Manage it through Time-Boxing

One last advice before I'm done. We must be very careful to time-box our work on refactoring increments. It's all too easy, to get caught up in a refactoring during the slack at the end of the iteration. If we let the refactoring spill on features we risk loosing the business people's trust.

Here again, using extra small baby steps helps to pause the refactoring. Another way is to do [Kanban](https://en.wikipedia.org/wiki/Kanban_(development)) style slack. Replace end of sprint slack by a fixed number of people slacking all the time. But I'll come back to this in more details in a future post.

## Next post

Using this set of practices my team was able to deliver large scale refactorings in small steps. That said, some refactorings are very difficult to technically deliver incrementally. Fortunately, people have come up with patterns like the Strangler and the Bubble Context to cope with this. That's what I'll go over in the [next post](/incremental-software-development-strategies-for-large-scale-refactoring-number-4-a-pattern-language/).

This was the eighth post in [a series about how to get sponsorship for large scale refactoring]({{site.baseurl}}/categories/#large-scale-refactoring-sponsorship-series). I've already been through why it's so difficult to get sponsorship for a refactoring. Why a badass developer attitude is important ? How to deliver refactorings steps by steps ? If you haven't start by [the beginning](/how-to-convince-your-business-to-sponsor-a-large-scale-refactoring/) !
