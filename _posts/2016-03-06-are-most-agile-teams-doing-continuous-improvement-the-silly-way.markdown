---
layout: single
title: "Are Most Agile Teams Doing Continuous Improvement The Silly Way ?"
date: 2016-03-06 07:33
comments: true
categories:
 - lean
 - agile
 - book
 - continuous improvement
keywords: "book, lean software development, lean software, agile, agile software development"
description: "A summary / review of the book 'Petit guide de management lean a l'usage des équipes agiles'"
---
A few weeks ago, as I was looking the internet for Lean principles to improve our way of working, I fell upon this book [Petit guide de management lean a l'usage des équipes agiles](http://www.leanagilecamp.fr/) (NB: the book is in French, the title means 'Little lean management guide at the usage of agile teams'). It made me think and I thought it deserved a blog post.

[![The book cover]({{site.url}}{{site.baseurl}}/imgs/2016-03-06-are-most-agile-teams-doing-continuous-improvement-the-silly-way/cover.svg)](http://leanagilecamp.fr)

It explains that agility can be though of as a set of practices and principles, shared through a huge community. This makes it a great production system, where improvement are mostly brought by gut feeling retrospectives and trial of other teams practices. At the contrary, Lean is very light framework for continuous improvement, relying on a more systematic waste elimination.

After this introduction, the bulk of the book is composed of a set of 9 detailed real life stories demonstrating the lean way of bringing improvements. Are is a summary of 3 of these :

## [Unknown Category at Project Condor](http://leanagilecamp.fr/guide.html#scène-de-crime-la-catégorie-mystère-du-projet-condor)

![Issue indicators]({{site.url}}{{site.baseurl}}/imgs/2016-03-06-are-most-agile-teams-doing-continuous-improvement-the-silly-way/condor.jpg)

The team maintains a virtual call center of poor quality, resulting in lots of incidents in production. Here is how they deal with the situation :

1. They start by showing the issues, by categorizing them from the logs, they discover that they are mainly related to training, network, but surprisingly, the majority (30%) cannot be categorized and fall in the 'unknown' category.
2. By improving logging, the unknown category falls to 5% ! Fixing network timeout issues then makes the client a lot happier.
3. Eventually, they go to client's site while monitoring the logs at the same time. They discover that remaining issues are explained by

    * some users are using a double click to hack the system and jump ahead of the queue
    * the hang up and hang off buttons being too close, which results in operator misleadingly ending their communication
    * calls to wrong numbers being logged as incidents

The authors conclude that while uncomfortable, going to the clients increased motivation for everyone, fixed issues and made the client happier.

## [All Guilty !](http://leanagilecamp.fr/guide.html#scène-de-crime-tous-coupables)

An author is called to help a team which is working on unifying reimbursement systems after a merge. The project is late and the product is unreliable.

The first step he takes is to visualize a target (next batch in 3 months) and the flow

![Details of the 3 months target]({{site.url}}{{site.baseurl}}/imgs/2016-03-06-are-most-agile-teams-doing-continuous-improvement-the-silly-way/target.jpg)

The flow whiteboard shows that tasks get stuck when in need of clarifications from business analysts. Tension between people is already increasing. They Team decides to visualize this with 'blocker' post-its.

After an inquire with the BAs, it turns out that they don't see the waiting tasks the issue management software.

The final step is to agree all together (developers and BAs) on an uniform way of defining and following blocking issues

![The shared blocked issues follow up wall board]({{site.url}}{{site.baseurl}}/imgs/2016-03-06-are-most-agile-teams-doing-continuous-improvement-the-silly-way/blockers.jpg)

Tickets are discussed at the stand-up, and unblocked issues are also visualized. As a result in only 2 weeks, the process fluidifies, and the tensions decrease.

The authors conclude that cross functional teams work better

## [PDCA](http://leanagilecamp.fr/guide.html#scène-de-crime-joue-la-courte-et-précise)

This story starts in a rather typical way : the client would like the team to go faster.

The team engages into a series of [Plan Do Check Act](https://en.wikipedia.org/wiki/PDCA) cycles.

### Hypothesis 1 : There must be some obvious waste

The team decides to log any waste occurring for 2 weeks. Even with discipline, only 2 hours are spotted during the 60 man.days of the sprint

### Hypothesis 2 : Too much refactoring or too much test writing

For a few weeks, the authors keeps a daily log of the team activities during after every stand-up meeting.

It turns out that writing tests accounts for 5,5% of the time, refactoring for only 2% but programming for 40% !

### Hypothesis 3 : if there is something to improve, it must be in programming.

For 20 half days, the author embarks on the tedious task of keeping a very detailed log of activities while taking the role of [navigator](https://en.wikipedia.org/wiki/Pair_programming#Remote_pair_programming) in pair programming sessions.

![The detailed log of programming activities]({{site.url}}{{site.baseurl}}/imgs/2016-03-06-are-most-agile-teams-doing-continuous-improvement-the-silly-way/log.jpg)
![Ratio of different programming activities]({{site.url}}{{site.baseurl}}/imgs/2016-03-06-are-most-agile-teams-doing-continuous-improvement-the-silly-way/activities.jpg)

They clearly understand that most time is taken not in writing tests, doing refactoring or writing complicated code, but in understanding existing code, third-parties and APIs

### Aftermath

First, they avoided loosing time on improving the wrong thing
The team also agreed on the practice of asking for help at the good person when starting stories. Doing that, they got a nearly 100% speed boost !

## The rest of the book

The book highlights a lot of other continuous improvement practices. For example :

* The 'problem box' where team members can log any waste they are going through during their work. This made me think of my [Plan For Technical Debt](/a-plan-for-technical-debt-lean-software-development-part-7/)
* Individual improvement follow up : a single team member is responsible to drive an improvement to its conclusion, in order to make sure that it is not forgotten

I personally found this book to be just great ! It's short and focused, pragmatic, and a pretty easy read. If you liked [Scrum and XP from the trenches](http://www.infoq.com/minibooks/scrum-xp-from-the-trenches-2) I think you should read it. More generally, I think it's very useful for anyone involved in the development process who would like to push agility a little further.

There's a catch though, it's in french ! I guess I could take the time to translate it, tell me if you are interested.
