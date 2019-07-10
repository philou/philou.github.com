---
layout: single
title: "How to use Mob Programming at the rescue of Pair Programming burnout"
date: 2019-07-11
comments: true
categories:
 - pair programming
 - mob programming
 - remote
 - sustainable pace
description: "Full-time pair programming is awesome, except that it burns introverts out. Part-time mob programming yields the same benefits but is sustainable. Plus, it is easier to sell to management, works great for remote teams and supports diversity! How to start mob programming? Try a few coding dojos!"
header:
   teaser: /imgs/2019-07-10-how-to-use-mob-programming-at-the-rescue-of-pair-programming-burnout/pairing-extrovert-introvert-teaser.jpeg
   og_image: /imgs/2019-07-10-how-to-use-mob-programming-at-the-rescue-of-pair-programming-burnout/pairing-extrovert-introvert-og.jpeg
published: false
---
_Full-time [pair programming](https://en.wikipedia.org/wiki/Pair_programming) burns introverts out. Regular [mob programming](https://en.wikipedia.org/wiki/Mob_programming) sessions yield the same benefits but are more sustainable._

![Picture of a pair of programmers. One is an extrovert full of energy, talking and standing. The other is an introvert, sitting on his chair, wishing to be left alone for a while. Full-time pair programming can burn introverts out]({{site.url}}/imgs/2019-07-10-how-to-use-mob-programming-at-the-rescue-of-pair-programming-burnout/pairing-extrovert-introvert.jpeg)

As many, I got into pair programming through [eXtreme Programming](https://en.wikipedia.org/wiki/Extreme_programming). I started pairing at my first XP project, almost 15 years ago, in a large bank. Since then, I've tried my best to find XP projects to work on. I had to take a few 'traditional' programming jobs though. As a consequence, I've alternated periods of intense pairing and solo programming. [The longest streak of full-time pair programming I have done was around 3 years.](/from-zero-to-pair-programming-hero/)

## What's great about pairing

> Given enough eyeballs, all bugs are shallow. [Linus Law](https://en.wikipedia.org/wiki/Linus%27s_Law)

With this experience under my belt, the advantages of pair programming are obvious to me.

*   2 pairs or eyes catch more bugs than 1\. Pairing improves quality and reduces bugs.
*   Better skills. It's natural to learn from each other when pairing. It just happens. [The more senior or expert developers might have to slow down and get used to this new 'mentor' attitude.](/pair-programming-from-pain-zone-to-skill-zone/) But it's a habit worth taking.
*   Better team work. People skills will improve while you pair. You will also discuss coding conventions. It's going to be easy to raise a point to the team for a pair than for a solo programmer. In the end, everyone starts working more like a team. Today, I cannot feel part of a team that does not pair program!
*   Smaller code base. In the end, all this knowledge exchange increases code re-use. When pairing, we're cutting the risk of re-writing something because you did not know it existed by 2.
*   All in all, it's just more productive! I know some [studies say that it's 15% slower](https://collaboration.csc.ncsu.edu/laurie/Papers/XPSardinia.PDF). In the long run, though, [all these improvements compound](http://web.mit.edu/nelsonr/www/Repenning=Sterman_CMR_su01_.pdf), and more than make up for these 15%. [I'm not the only one to say so](http://sunnyday.mit.edu/16.355/williams.pdf).

You might think that pair programming is ponies and unicorns...

## *The* problem with pairing

> 💡 Full-time pair programming burns introverts out!

Given the choice, I'd always go for the pair programming job. It's so much more productive that it annoys me to work any other way. I'm an introvert though, and after a few years, it wears me out. This might explain why I've been in and out of pair programming for 15 years!

I'm not alone to think this way. Erik Dietrich comes to the same conclusion in [Should You Take a 100% Pair Programming Job?](https://daedtech.com/should-you-take-a-100-pair-programming-job/)

What should we do then? How good is a practice if it's not sustainable for half the people? There's an agile soundbite that says ["If it hurts, do it more often"](https://martinfowler.com/bliki/FrequencyReducesDifficulty.html).

More than full-time pair programming? The only thing I can think of is mob programming!

## Mob programming in the morning

> All the brilliant people working on the same thing, at the same time, in the same space, and on the same computer. [Woody Zuill](https://twitter.com/woodyzuill), [mobprogramming.org](https://mobprogramming.org/)

I've been working as a technical coach for a few years now. I started mobbing as a way to coach all the team at the same time. It's a lot more time effective to coach through a mob than an individual pair.

I often have 3 to 4 mob sessions within a single week. Up to now, I never felt it was burning me out.

Other teams have also adopted this work schedule. For example, [the cucumber pro team has been doing this for a few years now](https://www.infoq.com/presentations/distributed-teams-remote-collaboration/).

{% assign figure_path="/imgs/2019-07-10-how-to-use-mob-programming-at-the-rescue-of-pair-programming-burnout/far-from-mobbing-crowd.jpg" | absolute_url %}
    
{% assign figure_alt="Picture from cucumber.pro team presentation at QCon London 2016. They present how they use mob programming in the mornings" %}
    
{% capture figure_caption %}
From [Cucumber pro](https://cucumber.io/) team [Far from the Mobbing Crowd](https://www.infoq.com/presentations/distributed-teams-remote-collaboration/) presentation at [QCon London 2016](https://qconlondon.com/london-2016/index.html), available on [InfoQ](https://www.infoq.com)
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

### How is it more sustainable for introverts

Here are a few key points:

*   If you mob program for half day only, you get regular solo time to recharge batteries
*   There is less personal involvement in a mob than in a pair. When a pair disagrees, it can easily slip into a me versus you argument. This is lot less likely to happen in a mob. When a mob disagrees, it usually tries to identify tradeoffs or experiments.
*   Mob programming favors [strong style pairing](http://llewellynfalco.blogspot.com/2014/06/llewellyns-strong-style-pairing.html). It means that the driver only types what he understood from the rest of the mob. It makes the driver's job the easiest! Unlike the driver in a pair, who can feel scrutinized by his buddy.
*   Finally, mobsters use a timer to switch the keyboard. It's less likely for a control freak to keep the keyboard all the time.

### What about effectiveness?

Even though [we don't all agree](https://www.brightball.com/articles/reality-driven-development-fixing-project-management-in-software), we need a high dose of pairing to reap all the advantages. But even a small dose of mobbing brings huge advantages. I'm always astonished by the ton of knowledge sharing that goes through mob sessions. Even in teams where people have been working together for years! Samuel Fare explains it [the science behind mob programming](https://medium.com/comparethemarket/you-asked-me-to-prove-mob-programming-works-heres-the-proof-70eb6a1d0279).

Suppose you are mob programming 10 hours per week. It's quite realistic to find topics that will leverage on everyone being together. 

### Bonus: easier to sell to management

I haven't seen many forbid morning mobbing:

*   They understand the value of knowledge sharing
*   They get that some complex tasks are better dealt with by all the team. For example: complex design or architecture, complex refactoring.

Need some social proof? [Read Rebecca Campbell, a manager at New Relic explain what she loves in mob programming.](https://blog.newrelic.com/engineering/mob-programming-managers/)

## Remote mobbing

Even though [we did remote pair programming](/from-zero-to-pair-programming-hero/), today, it remains very uncommon. Surprisingly, it does not seem so with remote mob programming! Many teams are embracing the practice:

*   The [cucumber pro team](https://cucumber.io/blog) again
*   There is a [website dedicated to remote mob programming](https://www.remotemobprogramming.org/)
*   I do it at [Murex](https://twitter.com/work_at_murex) with teams I coach
*   I know a few teams enjoying remote mob programming

I've seen it myself, remote mob programming is a great way to keep team spirit within a distributed team.

> 💡 Remote mob programming works surprisingly well!

### One more thing...

![Picture of a team of different people. Remote mob programming is an unexpected plus for diversity and inclusiveness in teams]({{site.url}}/imgs/2019-07-10-how-to-use-mob-programming-at-the-rescue-of-pair-programming-burnout/diversity-team.jpg)

There is one topic where remote mob programming becomes magic!

It's about inclusiveness and diversity!

People from anywhere can work together. People from different countries and cultures. Busy parents can work with startup-kids. People can setup their desk to what suits them best! [The cucumber pro team](https://cucumber.io/blog/inclusive-benefits-of-mob-programming/) (again) experienced and wrote about it themselves.

As [remote work is the future](https://www.fastcompany.com/90318974/the-rise-of-remote-working-will-continue?utm_source=hackernewsletter&utm_medium=email&utm_term=working), remote mob programming might become more and more relevant.

## How to start?

Whatever experts say, nothing beats first-hand experience. Give it a try and you'll know if it works for you! It's also a lot easier to get people to try than to jump-in.

Here are a 4 steps to put regular mob sessions in place in your team:

1.  [Run regular team coding dojo sessions](/how-to-start-a-team-coding-dojo-randori-today/). Use Randori mode: all together on the same problem and computer. Stick to strong-style pairing.
2.  Experiment a with few morning [group reviews, like people at New Relic suggest](https://blog.newrelic.com/engineering/mob-programming-introduction/)
3.  Run a few morning mob sessions
4.  [Retrospect](https://mobprogramming.org/the-power-of-retrospection/) and decide how you want to continue from there

These steps should get you through the technique, et let you make and informed decision.

However this turns out for you, I'd love to read your comments about it!
