---
layout: single
title: "4 Effective warning signals that will get you sponsorship for a large scale refactoring"
date: 2018-09-13 13:01
comments: true
categories:
 - refactoring
 - joke
 - technical debt
 - psychology
 - large-scale-refactoring-sponsorship-series
keywords: "Effective Warning Signals, Warning Signals, Effective Warning, Refactoring Effective Signal, Large Scale Refactoring, refactoring large software projects, refactoring large software systems, refactoring large code base, refactoring in large software projects"
description: "Highlighting possible dangers is a very effective way to persuade people to act in a certain way. Learn how to use pranks, serious games, metaphors and horror stories to raise your business people's concerns about legacy code and get you sponsorship for your large scale refactoring."
published: false
---
In 2005, professors Bizer and Petty showed something interesting about human behavior. People make more efforts to avoid what they don't want, than to get what they would like. The study itself is interesting, you can have a look at it [here](https://www.jstor.org/stable/41057679?seq=1#page_scan_tab_contents). For example, it explains why political campaigns are getting more and more nasty. There's also a lesson for us, mere developers. We'll get more sponsorship for our refactorings if we highlight the dangers of not doing them !

![Drawing of a warning panel with legacy code written below an awful monster. Sending effective warning signals is a good way to get sponsorship for large scale refactorings]({{site.url}}{{site.baseurl}}/imgs/2018-08-27-effective-warning-signals-to-get-sponsorship-for-a-large-scale-refactoring/legacy-monster.jpg)

This is the 11th post of a [series about how to get sponsorship for large scale refactoring]({{site.baseurl}}/categories/#large-scale-refactoring-sponsorship-series). If you haven't already, start by [the beginning](/how-to-convince-your-business-to-sponsor-a-large-scale-refactoring/).

From the inside, many systems are in such a messy state that seem like a catastrophe waiting to happen. Unfortunately, this mess is completely invisible to non-developers ! Here are a few techniques to show how close we are from a total breakdown !

## Effective Warning Signal #1 Pranks

If you have the guts and your company is fun enough, you can try one of [these pranks](/the-size-of-code/) 😉.

[![A photo of a desk littered under paper. As if we had printed the whole source code and dumped in on a non-developer desk. Pranks are a good way to get sponsorship for large scale refactorings]({{site.url}}{{site.baseurl}}/imgs/2018-08-27-effective-warning-signals-to-get-sponsorship-for-a-large-scale-refactoring/paper-on-desk.jpg)](https://www.flickr.com/photos/kk/18768224)
<div class="image-credits">What if we printed the whole source code and dumped in on non-developers desks ? By <a href="https://www.flickr.com/photos/kk/">Kris Krüg</a>, <a href="https://creativecommons.org/licenses/by-sa/2.0/" title="Attribution-ShareAlike 2.0 Generic">CC BY-SA 2.0</a>, <a href="https://www.flickr.com/photos/kk/18768224">Link</a></div><br>

They're bound to have a big impact ... but they might also get you fired ! We should be creative and find both effective and acceptable pranks. Pranks are a lot more effective than we first think. [Non-Violent Revolution](https://en.wikipedia.org/wiki/Nonviolent_revolution) activists have actually used [Laughitism](http://laughtivismgroup5.blogspot.com/2016/04/laughtivism.html) to take dictators down ! For a good (and unexpectedly fun) read on the topic, have a look a [Blueprint for a Revolution](https://www.amazon.com/Blueprint-Revolution-Nonviolent-Techniques-Communities/dp/0812995309). It was written by Serb non violent activist [Srdja Popovic](https://en.wikipedia.org/wiki/Sr%C4%91a_Popovi%C4%87_(activist)) member of [OTPOR!,](https://en.wikipedia.org/wiki/Otpor!) who brought [Millosevic](https://en.wikipedia.org/wiki/Slobodan_Milo%C5%A1evi%C4%87) down .

[![Cover of the book Blueprint for Revolution. Laughitism is a non violent technique that we can use against Legacy Code to get sponsorship for large scale refactorings]({{site.url}}{{site.baseurl}}/imgs/2018-08-27-effective-warning-signals-to-get-sponsorship-for-a-large-scale-refactoring/blueprint-revolution.jpg)](https://www.amazon.com/Blueprint-Revolution-Nonviolent-Techniques-Communities/dp/0812995309)

Promised, as soon as I manage to use such a prank without getting fired at work, I'll blog about it !

## Effective Warning Signal #2 Dice of Debt Game

While doing my researches for this article, I found the [Dice of Debt](https://www.agilealliance.org/dice-of-debt-game/) game. It's aimed at making business people experience the long term legacy code drag. It has good reviews, have a try at it with your business people and post back your feedback ! I'll do so as soon as I have a chance to test it myself.

## Effective Warning Signal #3 Metaphor

I was recently working with a team that is preparing a pitch to get sponsorship for a refactoring. They want to rework multithreaded code that uses locks and other low level synchronization. The hand written synchronization is becoming difficult to maintain. They would like to refactor it with the [actor model](https://en.wikipedia.org/wiki/Actor_model). Business people will likely argue that this module is now stable enough and should stay as is. We all know that this is not the case with bogus multithreaded code : the more you use it, the more bugs you find ! They had the idea to use the email vs phone metaphor. No one in the room could have handled all his daily emails with a phone only ! Everyone understood why it was necessary to switch to actors.

In [A Taxonomy of Technical Debt](https://engineering.riotgames.com/news/taxonomy-tech-debt), [Bill Clark](https://www.linkedin.com/in/bill-clark-37444a133/) adds another dimension to technical debt. On top of the classic principal and interests he adds contagion. In fact, it's a bit as if he's ditching the [technical debt metaphor](https://martinfowler.com/bliki/TechnicalDebt.html) for the disease metaphor ! Disease have a cost to live with, a cost to heal from and a contagion rate. People at the agile alliance also noted this [self reinforcing behavior](https://www.agilealliance.org/technical-debt-systemic-problem/). This metaphor might be better for "[cruft](https://en.wikipedia.org/wiki/Cruft)". [Ward Cunningham](https://twitter.com/wardcunningham?lang=fr)'s original metaphor of technical debt only applied to tested code.

<iframe width="560" height="315" src="https://www.youtube.com/embed/pqeJFYwnkjE" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

> 💡 A disease might be a better metaphor than debt for code cruft.

## Effective Warning Signal #4 A horror story

We said that a successful refactoring story will be useful to frame ours as an opportunity. We can have more impact with the opposite ! We should relate a large software failure, that had impact on the business to bad code. The bigger the impact on the business, the better it is. If you (unluckily) have something like that at your company, it should be a very powerful argument. If you don't, try to find a public story on the internet, or a public conference. For example here is one from [The 10 Worst Programming Mistakes in History.](https://www.makeuseof.com/tag/worst-programming-mistakes-in-history/) 

> 💡 The [Therac-25](https://en.wikipedia.org/wiki/Therac-25) (a radiation therapy machine) killed 6 people because it was difficult to perform automated tests !

We can draw parallels and forecasts, to highlight the high risk of failure.

## Almost there

This was the 11th post in a [series about how to get sponsorship for large scale refactoring](http://philippe.bourgau.net{{site.baseurl}}/categories/#large-scale-refactoring-sponsorship-series). Unfortunately, presenting refactoring in a good way only brings us so far. If we want to be really convincing, we need to use quantitative data. That's going to be the topic of my [next post](http://eepurl.com/dxKE95).
