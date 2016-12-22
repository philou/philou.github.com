---
layout: post
title: "Overclocking a Scrum Team to 12"
date: 2016-12-21 04:57
comments: true
categories:
 - agile
 - software
keywords: "Agile, Team, Software Team, Scaling agile, Software"
description: "Description of a kind of hack to increase the size of a Scrum team up to around 12 people"
---
*From [Wikipedia](https://en.wikipedia.org/wiki/Overclocking) :*
> Overclocking is configuration of computer hardware components to operate faster than certified by the original manufacturer ...

It is said that Scrum teams work best at 7 people, and that they break at about 10. The trouble is that sometimes there is just too much work for 7 people, but no enough for a full Scrum of Scrums. What if there was a simple way to hack this number up to 12 ?

{% img center /imgs/2016-12-21-overclocking-a-scrum-team-to-12/overclocking.jpg An overclocked motherboard working with extra fans and cellar tape %}

## An Idea

### The Surgical Team

In his classic [The Mythical Man Month](https://www.amazon.com/Mythical-Man-Month-Software-Engineering-Anniversary/dp/0201835959/ref=sr_1_1?s=books&ie=UTF8&qid=1482298579&sr=1-1&keywords=the+mythical+man+month) Fred Brooks presents an idea to organize software development the way surgeons work. The master performs the surgery while the rest of his team (intern or junior surgeon and the nurses) are there to support him. Fred Brook imagined an organization where master developers could be the only ones with access to the production code, while other more junior developers would have the task to provide them with tools and technical libraries.

I admit that this idea sounds out-of-fashion in contrast with modern agile teams of generalists ... Still ...

### Tools

At work, we are working on a pretty technical and complex product which requires some time getting into both the code and the domain. We took a few interns during the past years, and a bit like Fred Brooks, we came to the conclusion that internships yield more results when focused on building supporting tools rather than joining the team and working on production code.

We've also been doing [retrospectives](http://philippe.bourgau.net/how-we-introduced-efficient-agile-retrospectives/) for 3 years now, we've stolen a lot of best practices from the industry and the team is working a lot better than it used to. The pending side of this is that nowadays, the opportunities for improvement that we discover are a lot more specific, and they often need us to take some time to build new tools to support our work.

### The Agile Surgical Team

Agile method such as Scrum or XP are all about creating real teams instead of a collection of individual. That means that if we wanted to adopt the surgical team idea, we could use teams instead of individuals : a team of experts, and a tooling team of apprentice developers !

Why not, there's not nothing really new here, but the challenge is to run such a tooling team efficiently !

* 3 people or less : there's [evidence in the industry](http://pm.stackexchange.com/a/10075) that micro teams can self organize in an ad-hoc manner
* Mandate ScrumBan, Continuous Delivery and Devops : on site customer makes this possible, it should reduce project management overhead to almost nothing, and enforce quality
* A sandbox for junior developers : there's no risk of messing up production code here, the domain (tools for software developers) is straightforward and the fast feedback provides a great environment for learning

Obviously, for this to work, you'll also need to have enough tooling work to do for a 3 people team. That's usually the case, the CI alone can take quite some time (see Jez Humble's talk [Why Agile Doesn't Work](https://www.youtube.com/watch?v=2zYxWEZ0gYg)) and any team will have its own custom tools to do. For example, in our team, we built our own benchmark framework and we could benefit a lot from [Saros](http://www.saros-project.org/) on IntelliJ.

[{% img center /imgs/2016-12-21-overclocking-a-scrum-team-to-12/why-agile-doesnt-work.jpg The slide in Jez Humble's Why Agile Doesn't Work about the time taken for CI %}](https://www.youtube.com/watch?v=2zYxWEZ0gYg)

## Not quite there yet

I promised to scale up to 12. Let's do the maths :

* 3 people in the tooling team
* 8 people in the product team if we push Scrum a bit

That's only 11, 1 is missing. This one is more specific to each team's context.

As I said earlier, the product we are building is pretty technical and complex. Sometimes, we simply don't know how we are going to do something. We need to try different ways before finding out the good one. The typical agile way of doing that is by conducting time-boxed [spikes](http://agiledictionary.com/209/spike/). Spikes are fine for code and design related issues but way too short to deal with hard R&D problems. These need a lot of uninterrupted time for research and experiments, so it's not really possible to split them in backlog stories that any one can work on either ...

### The R&D Role

Here is what you want : some uninterrupted time to learn and experiment different ways to do something difficult.

Here is what you don't want :

* specialists in the team
* people out of sync with the daily production constraints
* a never ending 'research' topic

Here is a simple solution in the context I describe : add someone in the product team, and do some 2 month round robin on hard subjects. This should leave plenty of time to study something different, but so much time that one looses connection with the rest of the team. Plus it brings a bit of diversity in every one's daily work. One issue I can think of is that working on isolation might leave someone on a bad track, regularly presenting what was done to the rest of the team might alleviate this concern.

## A final word

Obviously, this has a smell of specialization, we're bending Scrum principles a bit. So take it for what it is : just like overclocking, it's a hack to get a bit of extra juice before investing in something a lot more expensive ([Scrum of Scrums](https://www.agilealliance.org/glossary/scrum-of-scrums/), [Less](http://less.works/) or whatever).
