---
layout: single-mailing-list
title: "Sustainable productivity in eXtreme Programming"
date: 2017-10-27 18:21
comments: true
categories:
 - agile
 - lean
 - extreme programming
keywords: "Agile, Lean, eXtreme Programming, Sustainable Pace, Work In Progress, WIP, WIP Limitations, Prioritization, Modern XP"
description: "An explanation of how the original and modern eXtreme Programming do WIP limits and prioritization to achieve long term productivity and a sustainable pace"
---
[eXtreme programming](http://extremeprogramming.org/) will not improve your short term productivity. But it will drastically improve your long term productivity.

My [last post](/are-software-developers-overworked-or-undecided/) detailed how prioritization and Work In Progress limits are the keys to less work and higher productivity.

> XP is an experiment in answer to the question, "How would you program if you had enough time?” [Kent Beck](https://www.amazon.com/Extreme-Programming-Explained-Embrace-Change/dp/0321278658/ref=sr_1_1?ie=UTF8&qid=1509114442&sr=8-1&keywords=xp+explained)

{% assign figure_path="/imgs/2017-10-27-sustainable-productivity-in-extreme-programming/cost-of-change-over-time.jpg" | absolute_url %}

{% assign figure_alt="Cost of changes over time, for traditional and XP ways of building software" %}

{% capture figure_caption %}
From ["Extreme Programming Explained: Embrace Change"](https://www.amazon.com/Extreme-Programming-Explained-Embrace-Change/dp/0321278658/ref=sr_1_1?ie=UTF8&qid=1510040835&sr=8-1&keywords=extreme+programming+explained) by Kent Beck
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

## The best jam is made in old jars

As I was writing the post, I could not stop thinking :

> Once again, XP has been addressing these WIP and prioritization issues for 20 years now !

Let's see exactly how.

### WIP limitation

XP has a drastic way to reduce WIP by 2 : pair programming. Instead of 6 developers taking on 6 stories at the same time, they only tackle 3. I won't dive into the ton of other advantages to pair programming here. If you want to learn more, these [blog posts]({{site.baseurl}}/categories/#pair-programming) might help.

Although it is now seen as a Scrum practice, Planning Game was part of original XP. Sticking to a basic planning game will give room for slack at the end of iterations. The trick is to leave the [infamous focus factor](https://www.infoq.com/minibooks/scrum-xp-from-the-trenches-2) away.

> 💡 A simple planning game will give room for slack.

Suppose a team member takes vacations for a sprint. The team should deliver less user stories that sprint. They'll have less story points to schedule on next sprint. This leaves room for slack and long term improvements such as refactoring, learning ... If half the team goes on holiday, that's a different story, adapt your schedule with gut feeling.

A funny aspect of this is that XP teams are now the most likely to switch to the more extreme [#NoEstimates](https://twitter.com/hashtag/noestimates).

### Priorities

XP's on-site customer is a straightforward way to work only on the most valuable features. Who better than an end user would be able to make this estimation ?

The YAGNI ([You Ain't Gonna Need It](https://en.wikipedia.org/wiki/You_aren%27t_gonna_need_it)) and simple design principles avoid building unnecessary features. TDD's strict point of not writing code before a failing test prevents over-engineering.

## Modern XP

<iframe src="https://player.vimeo.com/video/221024846" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>

In this wonderful talk from [Rachel C. Davies](http://rachelcdavies.github.io/), she presents how her team has been improving XP for 15 years. She explains how they organize as 2 mobs and 1 solo. At any moment, one mob is working on stories. The other mob works on important long term technical improvements. The solo does some learning. This is an even greater WIP reduction technique than pair programming.

Having a dev doing learning all the time is a form of continuous slack. If the team feels that they cannot deliver something by an important date, he can join the mob to help them.

There's even more to this learning. It can be about anything. Developers work on their technical skills, but they also learn about the domain. Little by little this turns them into domain experts. Guess what : domain experts are great at optimizing value !

> 💡 With time and efforts, developers can become domain experts !

## Afterthoughts

Unfortunately, there is no easy way to prove the long term productivity of XP. We cannot split the world to run the same project with and without XP. Another difficulty is that after a years of XP, work remains smooth and sustainable. Nothing like crunch mode. People used to the hero culture are hard to convince that they can be more productive by doing less.

Hopefully, lean theory and gut feeling of programmers who have switched to XP can back up my claims.
