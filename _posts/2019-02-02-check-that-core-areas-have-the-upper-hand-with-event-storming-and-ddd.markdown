---
layout: single
title: "Check that core areas have the upper hand with Event Storming and DDD"
date: 2019-02-07
comments: true
categories:
 - architecture
 - squash-BDUF-with-event-storming-series
 - event storming
description: "Event Storming and DDD can identify core functional areas. In any functional areas relationship, one side will have the upper hand. Core areas should have it! Here is an Event Storming follow-up activity to identify which functional areas or bounded contexts should have the upper hand."
header:
   teaser: /imgs/2019-02-02-check-that-core-areas-have-the-upper-hand-with-event-storming-and-ddd/power-to-the-core-teaser.jpeg
   og_image: /imgs/2019-02-02-check-that-core-areas-have-the-upper-hand-with-event-storming-and-ddd/power-to-the-core-og.jpeg
---
_[Event Storming](https://www.eventstorming.com/) and [DDD](https://en.wikipedia.org/wiki/Domain-driven_design) can identify core [functional areas](/drafting-a-functional-architecture-vision-with-ddd-event-storming-part-1/#). In any functional areas relationship, one side will have the upper hand. Core areas should have it!_

[The previous post](/build-or-buy-software-identify-your-core-functional-areas-with-event-storming-and-ddd/) was about how to classify functional areas as core, generic or supportive.

For the system to work, functional areas must collaborate together. As an example, let's see what the cart goes through in an e-commerce system. Once the shopping area did it’s work and filled the cart, the ordering area must receive its content. As long as domains need to interact in some way, there is a relationship.

![A drawing of a raised fist with a slogan 'Power to the Core'. Event Storming and DDD are effective ways to grant the upper hand to core functional areas.]({{site.url}}/imgs/2019-02-02-check-that-core-areas-have-the-upper-hand-with-event-storming-and-ddd/power-to-the-core.jpeg)

Very often, when 2 areas have a relationship, one will have the upper hand. Having the upper hand means having more decision power than the other.

> 💡 Upstream bounded contexts enjoy more focus, prioritization, quality and investment... at the cost of other contexts.

Obviously, we want our core functional areas to have the upper hand.

This is the 11th post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). It might be a good idea to start reading from [the beginning](/misadventures-with-big-design-up-front/).

## Where does decision power come from?

Many things can weight in which functional area gets the upper hand. Unfortunately, not all are good reasons!

*   Because it is very old legacy code that is almost impossible to change
*   Because it's an API that is directly used by some customers that don't want to change it
*   Because it is a core functional area and we constantly make sure it keeps the decision power.
*   Suppose the code is the big boss's own baby, because he wrote it a long time ago. He might always grant more priority to this area! See [Alberto Brandolini](https://twitter.com/ziobrando)’s [post about the Dungeon Master](https://medium.com/@ziobrando/the-rise-and-fall-of-the-dungeon-master-c2d511eed12f) for more details.
*   Suppose there is a big customer who weights 30% of yearly revenues. The features of the systems his business relies on might get more decision power!

Obviously, some of these reasons are good, while others are bad... If your core area does not have the power, you are in trouble.

Again, DDD has the (abstract) concept of [upstream and downstream](https://www.infoq.com/articles/ddd-contextmapping) to identify who as the upper hand. Upstream has the power, Downstream complies.

![The photo of a poster drawing I use to illustrate the DDD concepts of upstream and downstream.]({{site.url}}/imgs/2019-02-02-check-that-core-areas-have-the-upper-hand-with-event-storming-and-ddd/upstream-downstream.jpg)

## An activity to identify upstream-downstream

To teach this notion, I use this simple activity. Start by quickly introducing the concept.  Present the poster, and ask attendees where post-it-X should be. I also ask where it often falls in their current system. It's often enlightening for people to understand the flaws in their current system. I've seen people realize why they suffer so much from their legacy with this activity.

![The photo of an activity to make people think of what should be upstream... and what often is! If not careful, areas of legacy or customer code end up having the upper hand on your core areas.]({{site.url}}/imgs/2019-02-02-check-that-core-areas-have-the-upper-hand-with-event-storming-and-ddd/upstream-downstream-activity.jpg)

Developers often first misinterpret this with code dependencies. It's a good idea to clarify that these 2 concepts don’t necessarily map to one-another. For example, your API might not depend on customer code. Unfortunately if your "Top Customer" does not want to migrate to a new version, you're stuck!

The next step is to ask the group to find relationships between areas. Every time they spot a relationship, ask them which area should have the upper hand. It's usually obvious. We want core areas to be upstream. Deduce which areas should have the upper hand from the core / supportive / generic classification.

![A close-up photo of a relationship between 2 functional areas, where we marked one as upstream and the other downstream. This is the kind of Rough Design Up Front you can get with Event Storming and DDD]({{site.url}}/imgs/2019-02-02-check-that-core-areas-have-the-upper-hand-with-event-storming-and-ddd/relationship-between-areas-zoom.jpg)

Here is how to materialize the relationship. Stick a post-it on the boundary between areas. Find a way to represent what is upstream or downstream. If areas are far away, use some wool string and stick the relationship post-it on it.

## Outcomes

![The full of a big picture Event Storming where we added the Upstream / Downstream DDD relationships between functional areas]({{site.url}}/imgs/2019-02-02-check-that-core-areas-have-the-upper-hand-with-event-storming-and-ddd/event-storming-board-with-relationships.jpg)

First of all, this step introduces a new concept to attendees. This notion is very often new and enlightening to participants. It will help them to think of code and organization dependencies in a new way. They should see problem in the current organization. They will also start to have refactoring ideas to put things in a better state.

If you are developer in a team that is downstream, it might be a good idea to try move to another team. Life in downstream environment is often painful.

> 💡 Moving to an upstream team might be the quickest way to find a more sustainable pace

It can also be a good time to introduce [Hexagonal Architecture](https://softwarecampament.wordpress.com/portsadapters/) and its benefits for core areas. Making a core area free from any dependency keeps it more testable and evolutive.

## To be continued

This is only a fraction of what DDD offers about smart dependency management. In [the next post](/focus-on-core-domain-with-relationships-from-ddd-and-event-storming/), we'll see the patterns of relationships from the [DDD blue book](https://www.amazon.com/Domain-Driven-Design-Tackling-Complexity-Software/dp/0321125215/ref=sr_1_1?ie=UTF8&qid=1549123215&sr=8-1&keywords=domain+driven+design). I'll also walk through an Event Storming follow-up activity to pick the best pattern.

[![Cover of the DDD book by Eric Evans. It contains a lot of relationship patterns to make sure the core functional areas keep the upper hand]({{site.url}}/imgs/2019-02-02-check-that-core-areas-have-the-upper-hand-with-event-storming-and-ddd/ddd.jpg)](https://www.amazon.com/Domain-Driven-Design-Tackling-Complexity-Software/dp/0321125215/ref=sr_1_1?ie=UTF8&qid=1549123215&sr=8-1&keywords=domain+driven+design)

This was the 11th post in a [series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series).

[Continue Reading](/focus-on-core-domain-with-relationships-from-ddd-and-event-storming/).
