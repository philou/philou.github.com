---
layout: single
title: "How to use Event Storming to introduce Domain Driven Design"
date: 2019-05-02
comments: true
categories:
 - event storming
 - architecture
 - change management
 - collaborative work
 - ddd
description: "Although incredibly effective, DDD is overlooked by developers because of its abstractness. Here is a set of hacks to introduce DDD during an Event Storming workshop. Ex: Alternatives to convoluted DDD names. Group activities to pass a concept through. Presentation material for tricky notions."
header:
   teaser: /imgs/2019-03-28-how-to-use-event-storming-to-introduce-domain-driven-design/event-storming-to-ddd-teaser.jpeg
   og_image: /imgs/2019-03-28-how-to-use-event-storming-to-introduce-domain-driven-design/event-storming-to-ddd-og.jpeg
published: false
---
_Although incredibly effective, [DDD](https://en.wikipedia.org/wiki/Domain-driven_design) is overlooked by developers because of its abstractness. [Event Storming](https://en.wikipedia.org/wiki/Event_storming) is a great way to introduce DDD without naming it!_

![Drawing of an event storming board with post-its forming DDD. Event Storming is a great way to introduce Domain Driven Design without naming it.]({{site.url}}/imgs/2019-03-28-how-to-use-event-storming-to-introduce-domain-driven-design/event-storming-to-ddd.jpeg)

## State of DDD

I first read about [Domain Driven Design](https://en.wikipedia.org/wiki/Domain-driven_design) about 15 years ago. It's after reading the [blue book](https://www.amazon.com/Domain-Driven-Design-Tackling-Complexity-Software/dp/0321125215/ref=sr_1_1?keywords=domain+driven+design&qid=1553847240&s=gateway&sr=8-1) that I decided to move to the rich domain of Corporate Finance... for the better and the worse!

I still remember the first project where we tried to follow the DDD principles. We were working in a bank, and writing a connector to an electronic broker. For 2 days following the deployment of the first version of our system, we heard nothing about it. This was quite unusual. The broker finally called us to say there was a bug in the way we were handling one message. We did not open the debugger. We only checked our logs. This was enough to explain which business rules where used, and that we thought we were right. 2 more days later, they admitted the bug was on their side.

Granted, this success might also have resulted from all our other [eXtreme Programming](https://en.wikipedia.org/wiki/Extreme_programming) practices. Still, putting the business logic before technology proved both very effective and sustainable.

15 years later, we're only starting to hear a bit more about DDD. With the [microservices](https://en.wikipedia.org/wiki/Microservices) trend, people are wondering "What boundaries should our services have?" DDD's [Context Map](https://www.infoq.com/articles/ddd-contextmapping) is one of the few serious answers available.

Why isn't an effective concept like DDD more widely adopted?

## The barriers to DDD

![A picture of a locked door. Domain Driven Design can remain shut to people because of its awkward vocabulary. Many people will judge it too abstract and only work astronaut architecture.]({{site.url}}/imgs/2019-03-28-how-to-use-event-storming-to-introduce-domain-driven-design/locked-fence.jpg)

There are many reasons why DDD is not ubiquitous 😉. First of all, the complexity it brings is not justified for every project. Second, it explicitly builds on top of XP. It almost states [merciless refactoring](/categories/#refactoring), unit testing and 'whole team' as pre-requisites. XP's adoption is already small, which does not help DDD's adoption either!

> 💡 Its awkward vocabulary is one of the reasons why DDD is not more widely adapted.

There's a third reason why DDD still does not have the place it deserves: its awkward vocabulary! Here are a few examples:

*   [Ubiquitous language](https://martinfowler.com/bliki/UbiquitousLanguage.html)
*   [Bounded contexts](https://martinfowler.com/bliki/BoundedContext.html)
*   [Upstream / Downstream](/check-that-core-areas-have-the-upper-hand-with-event-storming-and-ddd/)
*   [Aggregates](https://martinfowler.com/bliki/DDD_Aggregate.html)
*   [Relationships patterns](/focus-on-core-domain-with-relationships-from-ddd-and-event-storming/) (Shared Kernel, Conformist, Open Host API, Published Language ...)
*   [Hexagonal architecture](http://wiki.c2.com/?PortsAndAdaptersArchitecture) (even if not directly DDD)
*   ...

All these contribute to make DDD look very abstract, and not practical. This is where Event Storming can help. Let's see how.

## Event Storming in a nutshell

Event Storming is a collaborative design workshop. Using a big wall and post-its, a group of people can draft a software system design in a few hours.

[Alberto Brandolini](https://twitter.com/ziobrando) invented it as a way to design [Event Sourced](https://martinfowler.com/eaaDev/EventSourcing.html) systems. The workshop itself is pretty intuitive. The rules are straightforward and rely on [natural human metaphors](https://vimeo.com/275530146). After 1 hour in, people feel at home with Event Storming.

If you want to learn more about Event Storming, check my [series of post on the topic](https://philippe.bourgau.net/misadventures-with-big-design-up-front/#).


## How to use Event Storming to get people to do DDD without knowing?

> 💡 1st rule of DDD, don't talk about DDD

Alberto was an early member of the DDD community. Event Storming has huge bias towards analyzing the system from the point of view of the domain. During the Event Storming workshop, many DDD concepts will emerge. For example: Business Events, Bounded Contexts, Actors, Aggregates...

This natural emergence of concepts is a great opportunity to explain to people what they are. Here are a few Event Storming tricks I use to make DDD more accessible.

### Functional Area

Although nobody understands Bounded Context from the start, everyone gets 'Functional Area'. Granted, Bounded Context is a more precise name. It's also a lot easier to forget it and only mention 'Functional Areas' during the Event Storming. People will understand it straightaway.

> 💡 Use Functional Area instead of Bounded Context.

### Vocabulary

Ubiquitous Language is a great name... once you get it! It's easier not to scare everyone out by using 'shared vocabulary' instead.

> 💡 Use Shared Vocabulary instead of Ubiquitous Language.

### Having the upper hand

The blue book introduces the notion of upstream/downstream relationship between bounded contexts. This concept is very valuable in practice. Unfortunately, it's not so easy to explain during a workshop. The best introduction I found is "Who has the upper hand in the relationship?"

I also use a special activity to explain it further. I ask people to place a few typical situations upstream or downstream. If you want more details, I wrote [a whole post](/check-that-core-areas-have-the-upper-hand-with-event-storming-and-ddd/) about this activity.

![A poster of an activity to teach what is downstream / upstream. It's the drawing of a river, with upstream pollution. People have to place things like 'domain code' and 'legacy code' where it should be, and think of where it usually is]({{site.url}}/imgs/2019-03-28-how-to-use-event-storming-to-introduce-domain-driven-design/upstream-downstream-activity.jpg)

### Relationship patterns

The blue book also contains a full pattern language about bounded context relationships. This is of tremendous value to build a conscious functional architecture. Unfortunately, this part of the book is also pretty abstract and difficult to read.

Hopefully for us, Event Storming can help here too. After a while in the workshop, the system should feel more concrete. That allows to introduce the patterns in a less abstract way.

> 💡 Use radars and storytelling to introduce Bounded Context relationship patterns.

![A poster of an activity to present relationship patterns. By illustrating the bounded context relationships in stories, it's a lot easier for attendees to understand what they are about.]({{site.url}}/imgs/2019-03-28-how-to-use-event-storming-to-introduce-domain-driven-design/tale-of-2-startups.jpg)

I use [a special activity for that](/focus-on-core-domain-with-relationships-from-ddd-and-event-storming/). It relies on storytelling and visual radars to compare the patterns. With this, I have had success to introduce the patterns smoothly to attendees.

![A sample radar detailing the characteristic of a bounded context relationship pattern (the Big Ball of Mud). This visual comparison makes it a lot easier for attendees to compare relationships]({{site.url}}/imgs/2019-03-28-how-to-use-event-storming-to-introduce-domain-driven-design/radar.png)

### Blank Aggregates

Aggregate is another concept introduced in the blue book that is not easy to grasp. Explanations involving invariant and consistency don't make it easier to understand.

![Drawing of an empty yellow post-it between a command and a business event. Asking people to write down business rules instead of naming Aggregates is a lot easier. Grouping business rules into Aggregates later on makes a lot more sense]({{site.url}}/imgs/2019-03-28-how-to-use-event-storming-to-introduce-domain-driven-design/blank-aggregates.jpeg)

Alberto Brandolini himself suggests using [a technique he calls 'Blank aggregates'](https://leanpub.com/introducing_eventstorming). At the design level phase, don't ask people to come up with Aggregates. Instead, put empty post-its and ask people to write business rules. Don't mention aggregates yet.

Only later ask them to group the business rules 'as-they-would-with-code'. Developers usually get this well. They'll naturally find good names for these Aggregates (of business rules).

## Start now!

Don't be a [Smug DDD Weenie](http://wiki.c2.com/?SmugLispWeenie). You'll have difficulties to persuade people to jump into DDD. It's a lot easier to setup a workshop, and get started. For your next feature, product or refactoring effort, start with Event Storming!

For more details about how to run an Event Storming workshop, [here is a full walkthrough](/misadventures-with-big-design-up-front/).