---
layout: single
title: "Incremental Software Development for Large Scale Refactorings"
date: 2018-07-26 09:32
comments: true
categories: 
 - refactoring
 - incremental-software-development
 - large-scale-refactoring-sponsorship-series
keywords: "Large Scale Refactoring, become a badass developer, refactoring large software projects, refactoring large software systems, refactoring large code base, refactoring in large software projects, incremental software development, incremental software development approach, iterative incremental software development, incremental development of software, incremental and iterative development strategies"
description: "When negotiating a large scale refactoring with business people, it's very important to know how to deliver. Incremental Software Development is the best way to mitigate risks and keep business people happy while performing a large scale refactoring. Here is why !"
---
My [previous post](/principles-that-will-make-you-become-a-badass-developer/) was about the badass developer attitude. More specifically, how it can buy sponsorship for large scale refactorings. Unfortunately, attitude is not enough. We also need to be able to deliver in a way that builds trust with the business. Most of all, business [is scared of the tunnel effect](/how-to-convince-your-business-to-sponsor-a-large-scale-refactoring/). [Incremental software development](https://en.wikipedia.org/wiki/Iterative_and_incremental_development) techniques allows to deliver large scale refactoring step by step. Not only that, but it also allows to do so alongside business features. That's how badass developers walk their talk and gain the business people's trust.

This is the fifth post in [a series about how to get sponsorship for large scale refactoring]({{site.baseurl}}/categories/#large-scale-refactoring-sponsorship-series). If you haven't, I encourage you to start from [the beginning](/how-to-convince-your-business-to-sponsor-a-large-scale-refactoring/).

![Drawing of a plant at different stages of growth, illustrating Incremental Software Development]({{site.url}}{{site.baseurl}}/imgs/2018-07-20-incremental-software-development-techniques-for-large-scale-refactorings/incremental-plant.jpg)

## Why does incremental software development matter ?

### A short story

A few years ago, I joined a team whose work involved a [Domain Specific Language](https://en.wikipedia.org/wiki/Domain-specific_language) and a parser. The parser had grown in an ad-hoc way for a few years, and was now both very brittle and difficult to extend. We knew the way to go was to adopt a more solid parsing approach. We wanted to migrate to [ANTLR](http://www.antlr.org/) and a [multi pass parser](https://en.wikipedia.org/wiki/Multi-pass_compiler).

As always, the business was very pushy for new features. There was no way we could have stoped everything for a full parser re-write. We explained to them that some of their features would be impossible to write without the new parser. We suggested that we work on migrating the parser as a background technical Epic. We did so using incremental software development techniques.

It took us a few months to migrate the parser. Meanwhile, we kept the software in a releasable state. This allowed us to validate our progress on the refactoring. We could continue to release features. We were able to share our progress on the refactoring with  the business people. They were very happy with the way we did this refactoring. In fact, it set a standard about how to prepare the software for big features later on.

### The real problems

To understand why incremental software development works, let's understand the alternatives' problems. The main alternative it to do the refactoring in one massive task. This kind of initiative screams "Tunnel effect waiting to happen" ! The [tunnel effect](http://www.wethetalent.co/data-robots-ai/the-tunnel-effect-and-the-abstruse-trap/) scares business people for 3 reasons :

1.  Because they don't know how much money they'll need to put in the tunnel to get out of it
2.  Because they don't know when they'll get the other features which they are also waiting for
3.  To be blocked in the tunnel if something unexpected and important comes along

![Picture of someone holding a light, alone in a tunnel. Incremental Software Development helps to avoid the tunnel effect when performing a large scale refactoring]({{site.url}}{{site.baseurl}}/imgs/2018-07-20-incremental-software-development-techniques-for-large-scale-refactorings/tunnel-effect.jpg)

Delivering a large scale refactoring with incremental software development fixes these 3 points.

*   Every commit is a step forward while keeping the system in a releasable state. If ever something unexpected comes along, we can pause the refactoring for a while. (point 3)
*   Not all the team has to work on refactoring at the same time. Working on the refactoring does not block the delivery of other features. (point 2)
*   Finally, after working on a refactoring for a while, it becomes easier to have an idea of how long it will take. (point 1)

> 💡 Incremental software development fixes the business people's fear of refactoring tunnel.

It is true that performing the refactoring in one team-wide batch would be more efficient. It would reduce the overall Work In Progress and get it done quicker. Unfortunately, it's also a lot more scary for business people !

## Incremental Software Development techniques

Like any skills, we can learn these techniques. Some are easy, and we can learn them from books. Others are more difficult and are usually learned through hard won experience. They can also be learned from a veteran developer in your team who's been through all this already. If you aren't or don't have a veteran around, we can still manage. [Deliberate practice](https://medium.com/the-crossover-cast/deliberate-practice-learn-like-an-expert-cc3114b8a10e) is a great way to [learn almost anything](http://philippe.bourgau.net/how-i-got-my-feet-wet-with-machine-learning-with-the-first-20-hours/). [Coding dojos](http://philippe.bourgau.net{{site.baseurl}}/categories/#coding-dojo) are the thing here (I'll write more about this later).

Once we master these skills, a lot of things change. First, we can do refactoring without harming our relationship with business people. Second, it builds enough self confidence among developers to negotiate with business people. This in itself, makes us more credible in their eyes. As a result, they are more likely to compromise on prioritizing refactoring.

> 💡 Mastering incremental software development builds self-confidence for developers.

## To be continued

This was the fifth post about [how to get sponsorship for large scale refactoring]({{site.baseurl}}/categories/#large-scale-refactoring-sponsorship-series). In the next posts, I'll deal headlong with the actual techniques. [How to get bandwidth](/incremental-software-development-strategies-for-large-scale-refactoring-number-1-constant-merciless-refactoring/) ? [How to work in baby steps](/incremental-software-development-strategies-for-large-scale-refactoring-number-2-baby-steps/) ? How to track the progress ? How to deal with the large scale ? Finally how to go further ? As you can see, there is still a lot to come, so [stay tuned](http://eepurl.com/dxKE95) !
