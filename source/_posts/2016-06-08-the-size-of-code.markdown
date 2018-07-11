---
layout: post
title: "The Size Of Code"
date: 2016-06-08 04:45
comments: true
categories:
 - joke
 - programming
 - technical debt
keywords: "Programming, Technical Debt, Lines of Code"
description: "Crazy ideas to demonstrate the size of your code base to non developers"
---
The CFO's debt is visible in his balance sheet. The CTO's technical debt is invisible. What about making it visible ?

Developers have an intuitive sense of the technical debt in some parts of the system. But few have an accurate estimation of its full extent. Even the size of a code base is difficult to grasp. In the same way, the size of the code is just a number. But the fact are there : between 10 000 and 10 000 000 lines of code, the rules aren't the same, but it's only invisible data on hard drives ...

## Showing It

If we had a device or a trick to show to non-developers the size of the source code, people might start to feel the embarrassment of working in a bloated code base. Unfortunately, for the moment, the only ideas I had are somehow unrealistic, albeit funny !

### First Idea : Printouts

Suppose we printed all the source code every Monday, and then keep it around for everyone to feel its size. We could leave it in the middle of the place, or in the CTO's office, so that he'd actually be hindered by the space loss. The larger the code, the bigger the troubles.

It's possible to print 50 lines on a sheet of paper, that's 100 on both sides.
That's 50 000 in a pack of 500 pages. And eventually, 200 000 in this kind of standard case :

![A 2000 sheets paper case]({{site.url}}/imgs/2016-06-08-the-size-of-code/paper-case.jpg)

Keeping these printouts in sync with the real cost would make the thing even more ~~painful~~ realistic. Imagine all the printings costs, and moving around cases of paper every day ... ;)

### Second Idea : Inflatable Device

What about an inflatable device linked to [SonarQube](http://www.sonarqube.org/) (or any other code metrics tracking system) ? It could grow as new code is written. We could make it as large as we want : 1m<sup>3</sup> for every 10K lines of Code, making the whole office a difficult place to walk around. Try to figure out how to work with this thing in the office :

[![Large Inflatable Art (Jimmy Kuehnle)]({{site.url}}/imgs/2016-06-08-the-size-of-code/Large_Inflatable_Art.jpg)](http://www.jimmykuehnle.com/artblog/inflatable-bigger-than-the-studio/)<div class="image-credits">[By Jimmy Kuehnle](http://www.jimmykuehnle.com/artblog/inflatable-bigger-than-the-studio/) </div>

### Third Idea : Sand

For maximum pain, let's use real sand instead of an inflatable device ! Imagine the mess with some sand lying around in the office. If the only way to clean up the mess was to clean up the code, surely everyone would take the issue seriously !

![A sand pile on the pavement]({{site.url}}/imgs/2016-06-08-the-size-of-code/sand-pile.jpg)

## Final Word

Obviously, these are jokes, but I guess there's a real need there. If we managed to make non developers feel the size and cost of the code base, it would be easier to agree on priorities.
