---
keywords: "Agile, Enterprise, Lean, Scrum, XP, Scaling"
layout: single
title: Scaling Agile
published: true
date: 2012-01-19
categories:
- agile
- enterprise
- lean
- scrum
- extreme programming
posterous_url: http://philippe.bourgau.net/scaling-agile
posterous_slug: scaling-agile
comments: true
---
I have worked in small agile teams, and it does indeed work a lot better than the classical waterfall & hierarchic environment. When speaking with other people who have been through the same experience, we started to wonder how could this be scaled to a big organization ?

I read two good books on the subject from Craig Larman and Bas Vodde:

* [Scaling Lean & Agile Development: Thinking and Organizational Tools for Large-Scale Scrum](http://www.amazon.com/Scaling-Lean-Agile-Development-Organizational/dp/0321480961/ref=sr_1_1?tag=pbourgau-20&amp;s=books&amp;ie=UTF8&amp;qid=1326974242&amp;sr=1-1)
* [Practices for Scaling Lean & Agile Development: Large, Multisite, and Offshore Product Development with Large-Scale Scrum](http://www.amazon.com/Practices-Scaling-Lean-Agile-Development/dp/0321636406/ref=sr_1_2?tag=pbourgau-20&amp;s=books&amp;ie=UTF8&amp;qid=1326974242&amp;sr=1-2)

There made a lot of good points and techniques, but it still sounded a bit theoretical. Later I read ["Producing Open Source Software"](http://producingoss.com/) from Karl Fogel. At first it did not seem to have any link with scaling agile, but successful open source projects have to handle distributed development and high turnover, so I thought that maybe large agile organizations have something to learn from open source development mechanics. Why wouldn't these technics that are successful at sharing code between companies be used internally to share code between teams ?

At the same time, at work, I learnt the hard way that I should avoid to work for a "library, framework, engine ..." team. It's both frustrating and unrewarding :

* You never really understand what you are working for, what is the final goal
* You are always doing a poor job at prioritizing requests from different sponsors
* You are doing too much on some areas, but too few on others

Agile & incremental development and architecture solves this the nice way, by extract framework and libraries from running software ! Successful open source projects often start like that ([Rails](http://rubyonrails.org/) being the canonical example).

So why couldn't we just let libraries and framework emerge the same way inside a company ? Why don't we maintain these projects as we would maintain an open source project : as a side product of our main output ?

Craig Larman and Bas Vodde speak of feature teams, 20% free time, communities : all this fits nicely with this idea. Suppose we could have 20% of our time to work on what we like, any developper could take this time to extract a library from his team's codebase and promote it as a company library, he could become dictator in chief as long as he wishes to. Other teams could reuse it and submit patches. All of the time proven open source development best practices could be used.

Edit: [Github builds Github](http://zachholman.com/talk/how-github-uses-github-to-build-github/) with something a lot like this !
