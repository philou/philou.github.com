---
layout: post
title: "7 reasons why learning refactoring techniques will improve your life as a software engineer"
date: 2017-07-10 09:10
comments: true
categories:
 - programming
 - refactoring
 - extreme programming
keywords: "Refactoring, Incremental Refactoring, eXtreme Programming, TDD, Programming, Software"
description: "A list of things that incremental refactoring improves, and how it makes software developers more productive and less stressed"
---
This post is a bold promise. Mastering incremental refactoring techniques makes our lives as software engineers more enjoyable.

I have already made the [same statement about TDD before](/from-apprentice-to-master-how-to-learn-tdd-test-driven-development/). As [refactoring](http://www.extremeprogramming.org/rules/refactor.html) is a part of TDD, one could think I am repeating myself. At the same time, a [recent Microsoft blog post](https://blogs.msdn.microsoft.com/ericgu/2017/06/22/notdd/) argued that refactoring is more important than TDD. Even though I'm a TDD fan, that's an interesting point.

Incremental refactoring is key to make releases non-events ! As early as 2006, using [XP](https://en.wikipedia.org/wiki/Extreme_programming), we were releasing mission critical software without bugs ! We would deliver a new version of our software to a horde of angry traders and go to the movies without a sweat !

What's so special about incremental refactoring ?

## Avoid the tunnel effect

![A long tunnel](../imgs/2017-07-10-7-reasons-why-learning-refactoring-techniques-will-improve-your-life-as-a-software-engineer/tunnel.jpg)

Mastering incremental refactoring techniques allows to break a feature down to baby steps. Not only smaller commits, but also smaller releases ! You can deploy and validate every step in production before we move to the next !

Small releases are also a lot easier to fix than big bang deployments. That alone is a good enough reason to deploy in baby steps.

There are a lot of other advantages to small deployments. Merges become straightforward. Someone can take over your work if you get sick. Finally, it's also easier to switch to another urgent task if you need to.

## Deliver early

When you know that you will be able to improve your work later on, it becomes possible to stick to what's needed _now_. After spending some time working on a feature, it might turn out that you delivered enough value. Between enhancing this feature and starting another one, pick the most valuable. Don't be able to switch. Incremental refactoring, makes it easy to resume later on if it makes sense.

Real productivity is not measured through code, but through feature value. This explains why incremental refactoring is more productive than up-front / big-bang development.

## Know where you stand

As you'll work through your feature, you'll have to keep track of the done and remaining steps. As you go through this todo list and deliver every successive step, you get a pretty clear idea of where you stand. You'll know that you've done 3 out of 7 steps for example. It helps everyone to know what's the remaining work and when you'll be able to work on something else.

![Tangled wool](../imgs/2017-07-10-7-reasons-why-learning-refactoring-techniques-will-improve-your-life-as-a-software-engineer/wool-tangled.jpg)

A few times, I fell in the trap of features that should have taken a few hours and that lingered for days. I remember how stupid I was feeling every morning, explaining to my colleagues that it was more complex than I had thought, but that it should be finished before tomorrow ... Learning incremental refactoring techniques saved me from these situations.

## Deliver unexpected feature

Incremental refactoring techniques improves the code. As a systematic team wide effort, it keeps the code healthy and evolutive. When someone requests an unexpected feature late, you'll be able to deliver it.

This should improve your relation with product people. They will be very happy when you build their latest idea without a full redesign.

## Avoids rewrites

Joel Spolsky wrote a long time ago that rewriting a large piece of software is the [number 1 thing not to do](https://www.joelonsoftware.com/2000/04/06/things-you-should-never-do-part-i/) ! All my experiences in rewriting systems have been painful and stressful.

It always starts very rosy. Everyone is feeling very productive with the latest tools and technologies. Unfortunately, it takes a lot of features to replace the existing system. As always with software, the time estimates for the rewrite are completely wrong. As a result, everyone starts grumbling about why this rewrite is taking so long. The fact that the legacy system is still evolving does not help either. Long story short, the greenfield project ends up cutting corners and taking technical debt pretty fast ... fueling the infamous vicious circle again.

Incremental refactoring techniques offer an alternative. It enables to change and improve the architecture of the legacy system. It _looks_ longer, but it's always less risky. And looking back, it's almost always faster as well !

## Ease pair programming

eXtreme Programming contains a set of practices that reinforce each other. As I wrote at the beginning, refactoring goes hand in hand with TDD. [Pair programming](/blog/categories/pair-programming/) is another practice of XP.

[![Tangled wool](../imgs/2017-07-10-7-reasons-why-learning-refactoring-techniques-will-improve-your-life-as-a-software-engineer/xp-practices.GIF)](http://www.extremeprogramming.org/map/code.html)<div class="image-credits">From [www.extremeprogramming.org/](http://www.extremeprogramming.org/)</div>

TDD and Refactoring simplify pair programming. When a pair is doing incremental refactoring, they only need to discuss and agree on the design at hand. They know that however the design needs to evolve in the long term, they'll be able to refactor it. It's a lot easier to pair program if you don't have to agree on all the details of the long term design ...

In turn, pair programming fosters [collective code ownership](http://www.extremeprogramming.org/rules/collective.html). Collective code ownership increases the [truck factor](https://en.wikipedia.org/wiki/Bus_factor). Which reduces the project risks and makes the team's productivity more stable. In the long run, this makes the work experience more sustainable and less stressful.

## Simplify remote work

Refactoring will also save you from the commutes and allow you to work closer to the ones you love !

Refactoring techniques enable small commits. Small commits simplify code reviews, which are key to remote or distributed work. Even if you are doing [remote pair programming](/rexp-remote-extreme-programming/), small commits help to switch the control between buddies more often.

[![Tangled wool](../imgs/2017-07-10-7-reasons-why-learning-refactoring-techniques-will-improve-your-life-as-a-software-engineer/remote-pairing.jpg)](https://www.amazon.com/gp/product/B00I800FFY/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=B00I800FFY&linkCode=as2&tag=pbourgau-20&linkId=9873e69d645cba27701f4b3744acab0e)

## To be continued

I hope that by now I persuaded you to learn incremental refactoring techniques. My next post will dig into the details about how to do that.