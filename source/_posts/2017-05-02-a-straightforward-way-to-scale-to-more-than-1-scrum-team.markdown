---
layout: post
title: "A Straightforward Way to Scale to More Than 1 Scrum Team"
date: 2017-05-02 06:11
comments: true
categories:
 - agile
 - scrum
keywords: "Agile, Agile at scale, Scrum, Scrum at scale, Scaled Scrum, SAFe"
description: "A walkthrough how we managed to improve the organization of 4 scrum teams simply by doing their ceremonies in common"
---
How come the "agile scaling" landscape seems so daunting and bloated ?

Being agile should be about taking baby steps, doing things incrementally, starting with the simplest thing that could possibly work, slowly but continuously improving and trying out experiments. 

Here's a real-life 2 hours change that kicks-off a very efficient organization for a few scrum teams.

![A guy jumping from a cliff into the sea]({{site.url}}/imgs/2017-05-02-a-straightforward-way-to-scale-to-more-than-1-scrum-team/dive-jump.jpg)<div class="image-credits">"SafeLess" : everything will go fine as long as you follow the principles</div>

## A classic story

Without doing anything about it, there are a lot of situations in where [Scrum](https://www.scrum.org/) teams will collaborate inefficiently. For example if you are a developer within a medium or large company, suffering from communication loss between your team and others. Or you could be the owner of a software startup, needing to dramatically grow your dev team.

Whatever your situation, without good collaboration, the output of two Scrum teams is bound to be a fraction of the sum of their individual outputs.

### Our own situation

We are a group of 4 teams that spun out of the R&D division. We are working to build a highly reusable component for the future versions of [Murex](http://www.murex.com)'s main product.

While in R&D, teams were aligned with technologies. Now shifting to a product focus, this layered team structure makes it hard for us to organize efficiently. To make things even more tricky, the component we are building is something huge by itself, and we really need to find a way to deliver it incrementally.

This tech-oriented, low synchronization organization of team backlog was really underdelivering. It was not rare to see stories jump from one team to another, as dependencies were discovered, taking one full sprint every time. Integrating end to end features often took a few sprints instead of a few hours ...

Clearly, we needed to do something.

### The simplest things that could possibly work

Hopefully, all teams were following Scrum. We first had a look at scaling frameworks, especially since other parts of the company are moving to [SAFe](http://www.scaledagileframework.com/) but we found that they required too much budget and re-organization for our means (remember, we are just a few motivated developers).

While we were discussing what to do, someone had an idea that was simple, cheap and easy : "Let's start by doing all our scrum ceremonies together".

We took the opportunity to add a 'product' retro after the teams retros, and a 'product' planning just before the teams plannings. We were hoping that regular higher level retros would bring continuous improvement at the product scale and bring in all the other practices required to make it work.

### The situation now

It's now been 2 sprints that we have set this up. Every 2 weeks, Friday is what we call Demo-Day. It's a meeting heavy day where all the teams have their scrum ceremonies together

* Product demo
* Team retros
* Product retro
* Product planning
* Team planning

Sure as hell, 1 day of meetings is exhausting, but unfortunately, it is not possible to efficiently grow a team without increasing the communication overhead. The good side of the coin is that it allows the teams to focus on building valuable stuff during the 9 other days.

Here are the first effects we have seen.

#### Improved team spirit & product focus

The first noticeable effect was on team spirit. Having a demo and planning for the whole team showed to everyone that we are all pulling towards the same goal. It helped everyone to understand what his current role is in this greater scheme, but also ways to tweak our individual roles to bring more value.

#### Visible problems

The second good effect is that problems are now visible. If teams are not working in the same direction, it's visible at the demo and plannings. If a team delivers a story too late for another one to integrated it, it's again visible at demo and planning.

Another example : after the product planning, Product Managers had to admit that they had not managed to feed high value stories to all teams. They asked to do a pre-planning preparation meeting (which is a standard practice in [LeSS](https://less.works) for example)

#### Better continuous improvement

During our first team retro in this setting, we directly stumbled upon on a recurring systemic issue that we never managed to do anything about. Instead of going around in circle on the topic again, we pushed it to the product retro. We worked on another team related problem, for which we scheduled improvement actions.

During the product retro, we raised our recurring unsolved issue. With everyone in place, people higher in the organization had the chance to understand its consequences. Eventually, we managed to come up with concrete actions.

## How to do it

### Pre-requisites

There's only one thing required : that the teams are already following Scrum. All the rest is easy stuff.

This technique is a bottom-up agile adoption. If you want to switch your whole company from waterfall to something more agile, take a look at [SAFe](http://www.scaledagileframework.com/).

### Organizing the Demo-Day

Here is our planning for our demo day

| Time | Meeting | Who | Details |
|------|---------|-----|---------|
| 10h - 12h | Demo | Everyone | 30m per team |
| 12h30 - 14h | Team Retro | Teams | Every team has a different retro in a different room |
| 14h30 - 15h30 | Product Retro | Scrum master, volunteers, and decision makers | Decision makers are important to be able to take actions |
| 16h - 17h | Product Planning | Product managers or owners, volunteers | Product people present what they would like to see in the product in one sprint |
| 17h - 18h | Team Planning | Teams | Every team has a different planning in a different room |

We had to negotiate a bit with other people in the company to get enough rooms for all these meetings at the same time, but all in all, it did not take more than 2 hours.

All meetings are open to anyone, everyone should have the right to come to any of them !

Obviously, that's a long day ! It's also full of team energy. In 2 sprints, we found the following improvements :

#### Food

We pre-order food to be delivered at work, so that we can all eat together. Did you know that food makes retros more efficient ?

#### Product Retro

You might have noticed that the product retro is only 1 hour long. To make it all fit in one day, we had to cut some time here and there ... In order to gain some time on the product retro, we decided to pre-fill its 'gather data' phase.

During team retros, if people find product scale issues, they can directly save them for the product retro items (As we are distributed, we use [Trello for retrospectives](/trellospectives-remote-retrospectives-with-trello/)). This way, when the product retro starts, the gather data phase is almost done, pre-filled with genuine points.

#### Keep the energy high

One full day of meetings is long. People get tired. In order to keep the energy high and the overall experience fun, we deliberately added some fun throughout the day :

* [Energizers](http://www.funretrospectives.com/category/energizer/) at beginning of meetings
* Board games during breaks
* End of day celebration outside the office. You could go out and have a drink all together for exemple.

[![The Timeline board game box]({{site.url}}/imgs/2017-05-02-a-straightforward-way-to-scale-to-more-than-1-scrum-team/timeline.jpg)](https://www.amazon.com/Asmodee-TIM01USASM-Timeline/dp/B005N57CNU/ref=sr_1_1?tag=pbourgau-20&amp;ie=UTF8&qid=1493870547&sr=8-1&keywords=timeline)<div class="image-credits">We had fun playing this game between the meetings</div>

### Preparing the product Backlog

Depending on your situation, you might (or not) have a prioritized product backlog. My advice is to start with what you have.

If you are scaling your single team to 2, keep a unique backlog for both teams and create 2 feature teams. You'll be heading to the [LeSS](https://less.works) organization, which you'll be able to refer to.

If you are applying this on existing scrum teams with their own backlogs, it might be easier to create a product backlog for the product managers. This is more akin to what [SAFe](http://www.scaledagileframework.com/) suggests. It's not as straightforward as having a single backlog for everyone, you'll need to add some links between team and product stories to be able to track progress. Nevertheless, it provides visibility to everyone. As a side note, this is what we actually did.

Keep in mind that it's only a starting point anyway, product retrospectives might transform all this down the road any way.

### Start where you are now !

The most important thing to do is to start ! There are always a ton of reasons why things are not ready and need more preparation. Remember the agile principles : integrate early and often, adapt, experiment ... Here are few examples of bad reasons  not to start

* You cannot get all the good people in the room : start, invite them anyway, and send them a report of what has been decided without them. I cannot promise that's it's going to work at the end, but at least, it will create some discussions
* The product backlog is not ready : start, and see what happens ! It will make it clear to everyone that product backlog is super important. People will organize to provide enough product features next sprint.
* You need some other regular meetings for X, Y or Z. For example, [Scrum of Scrum](https://www.agilealliance.org/glossary/scrum-of-scrums/) has daily SoS Meetings. Start anyway, if there's a need, people will ask for these extra meetings, which will save you some goodwill. You might also discover that you don't need these meetings at all and save some time !

With a product retrospective every sprint, important issues will get addressed !

![Just Do It]({{site.url}}/imgs/2017-05-02-a-straightforward-way-to-scale-to-more-than-1-scrum-team/just-do-it.jpg)

## Does 'Agile Scaling' even exist ?

We did this on 4 teams. I have no ideas how it would work with more teams. We did not use any framework, even though we took ideas here and there. What we really did is to follow the agile principles, for example :

* KISS
* Do the simplest thing that could work
* Baby steps
* Continuous improvement
* Experiment

Others have noticed similar things :

* LeSS : ["Truly scaled scrum is Scrum scaled."](https://less.works/less/framework/introduction.html)
* In the [Nature of Software](https://www.amazon.com/Nature-Software-Development-Simple-Valuable/dp/1941222374/ref=sr_1_1?tag=pbourgau-20&amp;ie=UTF8&qid=1493870372&sr=8-1&keywords=the+nature+of+software+development) [Ron Jeffries](http://ronjeffries.com/) explains that for a company is agile if it just focuses on delivering software "feature by feature"
* In [A Practical Approach to Large-Scale Agile Development [...]](https://www.amazon.com/Practical-Approach-Large-Scale-Agile-Development/dp/0321821726/ref=sr_1_1?tag=pbourgau-20&amp;s=books&ie=UTF8&qid=1493870423&sr=1-1&keywords=large+scale+hp), the authors explain that they did not use any frameworks at HP, but just followed the agile principles

Agile scaling frameworks might be a good starting point (the Shu in [Shu-Ha-Ri](https://fr.wikipedia.org/wiki/Shuhari)), but only as long as the agile principles and values have not been understood by the organization.
