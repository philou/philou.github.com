---
layout: single
title: "How to use Event Storming and DDD for Evolutionary Architecture"
date: 2019-02-28
comments: true
categories:
 - architecture
 - squash-BDUF-with-event-storming-series
 - event storming
description: "Big Picture Event Storming and DDD let us build a shared architecture vision. By mixing in incremental refactoring techniques, we can realize the vision through evolutionary architecture and emergent design. This enables early delivery of features, without sacrificing the long term architecture."
header:
   teaser: /imgs/2019-02-12-how-to-use-event-storming-and-ddd-for-evolutionary-architecture/event-storming-emergent-design-teaser.jpeg
   og_image: /imgs/2019-02-12-how-to-use-event-storming-and-ddd-for-evolutionary-architecture/event-storming-emergent-design-og.jpeg
---
_Big Picture [Event Storming](https://en.wikipedia.org/wiki/Event_storming) and [DDD](https://en.wikipedia.org/wiki/Domain-driven_design) let us share an architecture vision. Here is a way to realize it through evolutionary architecture and emergent design._

This is the 14th post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). This post builds on the previous ones, so it might be a good idea to start reading from [the beginning](/misadventures-with-big-design-up-front/). This post will interest you if you are starting a new product or feature.

Let's suppose we went through the workshops from [the previous posts](/categories/#squash-bduf-with-event-storming-series). We should have a good idea of where we would like to eventually be. Here is the tricky part. We don't want to lose our time building this vision right from the start. We need something out of the door fast. We also want a [sustainable pace](http://www.sustainablepace.net/what-is-sustainable-pace), so we must avoid quick and dirty solutions. Remember the beginning of this series about Event Storming? I said that it complements evolutionary architecture and emergent design. Let's see how in more details.

![Drawing of a plant growing from the center of an Event Storming design board. Event Storming and DDD are a perfect fit for evolutionary architecture and emergent design]({{site.url}}/imgs/2019-02-12-how-to-use-event-storming-and-ddd-for-evolutionary-architecture/event-storming-emergent-design.jpeg)

How can we build something incrementally, without sacrificing our target vision?

## Principles

The good news is that we won’t need another intense workshop to get going, we already have everything we need.

We’ll need some skills and practices though. 

### Technical Debt Leverage

What we’ll need is smart [technical deb](https://en.wikipedia.org/wiki/Technical_debt)t management. [Eric Dietrich](https://twitter.com/daedtech) call this [Technical Leverage](https://daedtech.com/how-to-write-software-lessons/).

![Picture of a girl holding a slingshot. Like a slingshot, early Technical Debt is a great leverage to success when done right, with Evolutionary Architecture, Emergent Design, Event Storming and DDD for example]({{site.url}}/imgs/2019-02-12-how-to-use-event-storming-and-ddd-for-evolutionary-architecture/catapult.jpg)

We need to get features out fast. The trick is to make things as simple as possible at the beginning while keeping the ability to refactor. We should not skip steps that are mandatory to let us refactor to the target vision later down the road. For example, suppose we know we’ll need a separate process someday. If we currently only have a single team and the [NFRs](https://en.wikipedia.org/wiki/Non-functional_requirement) are fine, then modularity is enough for now. We don't want to skip modularity though, as it would make future refactoring too difficult.

> 💡 The trick is to make things as simple as possible at the beginning while keeping the ability to refactor.

Another obvious step we cannot skip is automated testing. Even better, I'd say ['fast' tests](/forget-unit-tests/). It does not matter if they are unit, integration or end to end. What matters is that they are fast enough to enable a fast refactoring feedback loop.

Other famous authors also wrote about this principle:

*   [Kent Beck](https://twitter.com/kentbeck)’s [3X](https://ideas.riverglide.com/3x-explore-expand-extract-b9aad6402a5a) explains why taking technical debt is the good strategy at the beginning

![Drawing of the product adoption curve annotated with Kent Beck's 3X phases: eXplore, eXpand, eXtract. Evolutionary Architecture, Emergent Design, Event Storming and DDD help to take leverage during the eXplore phase]({{site.url}}/imgs/2019-02-12-how-to-use-event-storming-and-ddd-for-evolutionary-architecture/3X.jpeg)

*   [Dan North](https://dannorth.net/)’s [Spike and Stabilize](https://dannorth.net/2011/01/15/on-craftsmanship/) technique contains more practical advices about how to do it.

### Incremental Refactoring Techniques

Obviously, on this path, you'll need to master [incremental refactoring techniques](/categories/#refactoring). Without them, it will be very difficult to transform the system as you go. [Martin Fowler](https://martinfowler.com/)’s [Refactoring book](https://www.amazon.fr/Refactoring-Improving-Design-Existing-Code/dp/0134757599/ref=sr_1_1?s=amazon-devices&ie=UTF8&qid=1547652711&sr=8-1&keywords=refactoring) is the perfect reference to learn these techniques.

[![Cover of Martin Fowler's 2nd edition of the Refactoring book. A great reference to learn refactoring in baby steps, which is mandatory for evolutionary architecture and emergent design]({{site.url}}/imgs/2019-02-12-how-to-use-event-storming-and-ddd-for-evolutionary-architecture/refactoring.jpg)](https://www.amazon.fr/Refactoring-Improving-Design-Existing-Code/dp/0134757599/ref=sr_1_1?s=amazon-devices&ie=UTF8&qid=1547652711&sr=8-1&keywords=refactoring)

If you can, [start a coding dojo](/how-to-start-a-team-coding-dojo-randori-today/) to practice and master these techniques.

A last advice is that whenever you need to refactor your code, do so in the direction of your vision. Let's come back to our modularity example. We can make our modules have the same boundaries as our expected future services.

## What’s the path then?

Remember the 2 scenarios from the previous workshop? We ended up with 2 functional architectures:

*   That of the veteran startup
*   That of the college dropout startup

The veteran architecture should be our end goal. Let's use the college dropout architecture as our starting point. The 2 architectures follow the same boundaries, so it should be possible to migrate from one to the other.

[Remember](/focus-on-core-domain-with-relationships-from-ddd-and-event-storming/) we constrained the [DDD Domain relationships](https://www.slideshare.net/PhilippeBourgau/ddd-domain-relationships-radars) available to the college dropouts. This architecture will use customer supplier, ball of mud, and inner source relationships. This is the classic way by which [monolith](https://en.wikipedia.org/wiki/Monolithic_application) are born. While the team and the code are small, this monolith should remain manageable.

The Veteran-target architecture will contain services and Anti Corruption Layers. With tests and a modular monolith, we should be able to incrementally refactor to the vision. That's the Event Storming, DDD, evolutionary architecture and emergent design synergy.

![Photo of the great wall of China. The Anti-Corruption Layer is a pattern that is very useful when designing complex systems. It is possible to inject them step by step using evolutionary architecture and emergent design techniques.]({{site.url}}/imgs/2019-02-12-how-to-use-event-storming-and-ddd-for-evolutionary-architecture/great-wall-of-china.jpg)

Don’t forget, the main point is to be able to deliver features early.

## Tips

Here are some tips to get the most out of this practice

*   Repeat. Nothing prevents us from running a new Event Storming from time to time. Every time we do it, it will be faster, as more and more knowledge is shared in the team. By repeating it, the target architecture will evolve with the domain knowledge.
*   As you focus on a functional area, you can also run finer grain, [design level event storming](https://buildplease.com/pages/fpc-6/) sessions. This shorter workshop yields a more detailed target design for one functional area.
*   I found the `// TODO XXX comment ...` technique great at taking technical debt leverage. You can read more about it [here](/a-seamless-way-to-keep-track-of-technical-debt-in-your-source-code/). Other interesting techniques are [Architecture Decision Records](https://adr.github.io/) and [Living Documentation](https://leanpub.com/livingdocumentation). By documenting past decisions, they help us to change the system later down the road.

[![Cover of Cyrille Martraire's Living Documentation book. By documenting past decisions, Living Documentation let us change the system later down the road. A key to evolutionary architecture and emergent design]({{site.url}}/imgs/2019-02-12-how-to-use-event-storming-and-ddd-for-evolutionary-architecture/living-documentation.jpg)](https://leanpub.com/livingdocumentation)

> 💡 By documenting past decisions, Living Documentation let us change the system later down the road.

## Summary

If you went through the Big Picture Event Storming, you have everything you need to get started today.

Are you lacking evolutionary architecture or emergent design skills? [Start your coding dojo today](/how-to-start-a-team-coding-dojo-randori-today/) to improve your refactoring skills.

Are you afraid that this strategy will lead to unsolvable NFR problems at the end? For example, who said that this target architecture is going to handle the load we’ll need? You are right, and that is what I am going to talk about in [the next post](/using-event-storming-and-ddd-to-prototype-microservices-and-nfrs-1/).

This was the 14th post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series).

[Continue reading...](/using-event-storming-and-ddd-to-prototype-microservices-and-nfrs-1/)
