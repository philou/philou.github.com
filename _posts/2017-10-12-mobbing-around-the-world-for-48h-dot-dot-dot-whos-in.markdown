---
layout: single-mailing-list
title: "Mobbing around the world for 48h ... who's in ?"
date: 2017-10-12 19:00
comments: true
categories:
 - agile
 - extreme programming
 - pair programming
 - remote
keywords: "Mob Programming, Remote, Remote work, Remote Programming, Remote Mob, eXtreme Programming, Experiment"
description: "A call for volunteer to try a programming experiment : to run a remote mob round robin around the globe for 48h"
---
In [Far From the mobbing crowd](https://www.infoq.com/presentations/distributed-teams-remote-collaboration) the [Cucumber](https://cucumber.io/) guys explain how they combined [mob programming](https://en.wikipedia.org/wiki/Mob_programming) and remote work. [Matt](https://twitter.com/mattwynne?lang=fr) and [Steve](https://twitter.com/tooky?lang=fr) also explain that a mob is both resilient and fast. They explain that they sometimes have to leave the mob for 15 minutes or so. When they come back the code has changed a lot ! It's as if the mob continues no matter who's in.

One of them then suggests an idea. 

> With enough people around the world, we could run a mob that never stops!

![A drawing of a mob walking around a binary world]({{site.url}}{{site.baseurl}}/imgs/2017-10-12-mobbing-around-the-world-for-48h-dot-dot-dot-whos-in/mob-drawing.jpg)

## What's the point ?

In [The Ultimate Guide To Remote Work](https://zapier.com/learn/remote-work/) the [Zapier](https://zapier.com/) team explains how to take advantage of time zones and remote work. We can get a feature done faster by having a pair of programmers from different time zones work on it ! Instead of a single day of work in 24h, you get 2 ! We could get features in half the time.

[![The cover of The Ultimate Guide To Remote Work]({{site.url}}{{site.baseurl}}/imgs/2017-10-12-mobbing-around-the-world-for-48h-dot-dot-dot-whos-in/ultimate-guide-remote-work.png)](https://zapier.com/learn/remote-work/)

In Lean Management, the time to get a feature is called the cycle time. A short cycle time has a lot of benefits. You get feedback faster. The needs of the users have less risk of changing. You'll get less interruptions, which increases your focus and effectiveness.

Zapier found that time zones and remote work can divide the cycle time by 2. This is already a major improvement. Let's replace this pair of programmers by a mob ! The cucumber guys explain that 4 hours of mobbing is about the most someone can do in a single day. With a mob of 5 people at any time, that's around :

_24/4 * 5 = 30_

30 developers working on the same feature, full time !

What would be the effect of this on cycle time ? I don't expect it to cut the cycle time by 30, but from my experience with pairing, I'd still expect a drastic reduction. Imagine a complex feature that you estimated to 30 days to finish. Could it be done in less than a week ?

Working on a single story at a time, we could forget merges and complex CIs ! More generally, it would lead to an important Work In Progress (WIP) reduction. Very related to cycle time, reducing the WIP also brings a lot of improvements. One of the most important is an increased throughput. [Here](https://developers.soundcloud.com/blog/deliver-software-faster-by-managing-work-in-progress-not-by-adding-overtime) is a great article detailing the benefits of reducing the WIP.

> 💡 Mob programming reduces WIP and cycle time

And what about the team structure ? Could a team of 30 be effective in this setting ? 7 is the magic count for a team size. If we could grow past this number, we could imagine completely new org charts :

*   More decentralized
*   More resilient 
*   Less synchronization and coordination overhead

[![A screen capture of 'Far from the mobbing crowd']({{site.url}}{{site.baseurl}}/imgs/2017-10-12-mobbing-around-the-world-for-48h-dot-dot-dot-whos-in/far-from-mobbing-crowd.jpg)](https://www.infoq.com/presentations/distributed-teams-remote-collaboration)


## Let's try it !

As any new idea, it's also very likely to fail miserably ... The communication overhead could turn out overwhelming. The mob might not be resilient to frequent changes after all. It could work but not bring any reduction to cycle time. There is a ton of reasons for this to fail.

The best way to find out is to try !

> 💡 Stupid ideas that work become great ideas. [[XP moto](https://ronjeffries.com/articles/tricks/pick-something-stupid/)]

We just need to find enough people spread around the world to give it a try. Could we do 48 hours straight of mobbing and go twice around the globe ?

We would need people distributed across all time zones. Pairing and incremental design would be de-facto practices. It would work better with people used to XP.

We'd need at least a mob of 3 doing 5h of mobbing per day for 2 days. That would be :

_24/5*3 = 15_

We could go with 15 people but 30 would be ideal. Once we have enough volunteers, we'll have to agree on a few other things :

*   A date for the experiment
*   A subject we can all understand
*   Technologies and tools to use
*   A time-schedule

There's nothing impossible here !

## Call for volunteers

If you want to participate, leave a comment below or contact me through [twitter](https://twitter.com/pbourgau). I'll keep you updated about the status of the experiment.

One last thing ... as you've guessed this is an experiment, not paid work. Anything we would produce will be open sourced on [Github](https://github.com/).
