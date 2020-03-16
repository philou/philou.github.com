---
layout: single-mailing-list
title: "Why should we use Design Level Event Storming for DDD?"
date: 2019-10-17
comments: true
categories:
 - event storming
 - architecture
 - ddd
 - how-to-run-a-design-level-event-storming-series
description: "Design-Level Event Storming is a collaborative design workshop. We can use it to build and share the design of critical parts of a system, in only a few hours! It relies on Event Sourcing and Tactical Domain-Driven Design (DDD). It's the perfect first step to building a walking skeleton."
header:
   teaser: /imgs/2019-10-06-why-should-we-use-design-level-event-storming-for-ddd/design-level-event-storming-zoom-teaser.jpeg
   og_image: /imgs/2019-10-06-why-should-we-use-design-level-event-storming-for-ddd/design-level-event-storming-zoom-og.jpeg
---
_Design Level Event Storming is a collaborative design workshop. Use it to build and share the design of critical parts of systems using Event Sourcing and [DDD](https://en.wikipedia.org/wiki/Domain-driven_design)._

![Drawing of a DDD Event Storming board with a loop on one Bounded Context. Design Level Event Storming is about diving in the details of a core Bounded Context]({{site.url}}/imgs/2019-10-06-why-should-we-use-design-level-event-storming-for-ddd/design-level-event-storming-zoom.jpeg)

Imagine you are starting a new product with your team. You had been struggling for a while about how to start.

*   What should the high-level design be?
*   What should we focus on first?
*   What are the main risks?

All these questions remained unanswered until you heard about [Event Storming](https://www.eventstorming.com/)!

You decided to try [Big Picture Event Storming]({{site.url}}/categories/#squash-bduf-with-event-storming-series). In a single (and intense) day, you drafted a functional architecture vision! That's more progress than you had made in weeks. You managed to [identify the primary contexts in your domain]({{site.url}}/build-or-buy-software-identify-your-core-functional-areas-with-event-storming-and-ddd/). You [highlighted the topics you'll focus on to create your competitive advantage]({{site.url}}/build-or-buy-software-identify-your-core-functional-areas-with-event-storming-and-ddd/). These are your core sub-domains.

Everyone in the team now understands where to focus. Developers also know [what sub-parts of the system should remain independent]({{site.url}}/focus-on-core-domain-with-relationships-from-ddd-and-event-storming/). It looks like developers are ready to start coding!

![Photo of an athlete in his starting blocks. Big-Picture and Design-Level Event Storming workshop are really about making the best start possible when building systems with Domain-Driven Design (DDD)]({{site.url}}/imgs/2019-10-06-why-should-we-use-design-level-event-storming-for-ddd/starting-block.jpg)

*Wait!* Event Storming has more to offer!

Let's dive into a core context with Design-Level Event Storming. 

> 💡 Big Picture Event Storming was about exploring [strategic DDD](https://thedomaindrivendesign.io/what-is-strategic-design/); Design-Level Event Storming is about [tactical DDD](https://thedomaindrivendesign.io/what-is-tactical-design/) inside a domain.

## The goal

The Design Level flavor of Event Storming lets you dive into the details of a [bounded context](https://martinfowler.com/bliki/BoundedContext.html). Its primary outcome is a good enough design vision. Developers who attend the workshop should be able to start coding straight away.

> 💡 Developers who attend the workshop should be able to start coding right after a Design Level Event Storming.

Design Level Event Storming is particularly suited to design DDD [event-Sourced systems](https://martinfowler.com/eaaDev/EventSourcing.html). In any case, it can be useful even if you are not building an event-based system. It helps in identifying aggregates and other crucial domain concepts.

{% assign figure_path="/imgs/2019-10-06-why-should-we-use-design-level-event-storming-for-ddd/picture-that-explains-everything.jpg" | absolute_url %}
    
{% assign figure_alt="The picture that explains everything: how post-its chain together on a Design-Level Event Storming board" %}
    
{% capture figure_caption %}
The picture that explains everything by [Alberto Brandolini](https://twitter.com/ziobrando) from his [Introducing Event Storming](https://leanpub.com/introducing_eventstorming) book
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

[Similarly to Big Picture Event Storming, the Design Level flavor is a time compressor!]({{site.url}}/how-to-squash-big-design-up-front-in-a-few-days-with-event-storming/) It shrinks weeks of up-front or emerging design into a few hours. It is intense and high bandwidth collaboration that makes this possible. It's the perfect balance between [Big Up-Front Design]({{site.url}}/misadventures-with-big-design-up-front/) and [Emerging Design]({{site.url}}/categories/#incremental-software-development). With a better start, it sets a sustainable pace for the team from the beginning!

Like Big Picture Event Storming, again, it helps us [to spot critical topics]({{site.url}}/detailed-agenda-of-a-ddd-big-picture-event-storming-part-1/). For example, [the most pressing problems and the primary domain concept definitions]({{site.url}}/5-views-to-capture-the-outputs-of-an-event-storming-workshop/).

## Continues

This post was the first in [a series about how to build event-based systems with Design Level Event Storming and DDD]({{site.url}}/categories/#how-to-run-a-design-level-event-storming-series):

1.  [Why you should use Design Level Event Storming for DDD]({{site.url}}/why-should-we-use-design-level-event-storming-for-ddd/)
2.  [Detailed agenda for a DDD Design Level Event Storming #1]({{site.url}}/detailed-agenda-for-a-ddd-design-level-event-storming-part-2/)
3.  [Detailed agenda for a DDD Design Level Event Storming #2]({{site.url}}/detailed-agenda-for-a-ddd-design-level-event-storming-part-2/)
4.  [7 tactics that will make your DDD Design Level Event Storming payoff]({{site.url}}/7-tactics-that-will-make-your-ddd-design-level-event-storming-pay-off/)

The [next post]({{site.url}}/detailed-agenda-for-a-ddd-design-level-event-storming-part-2/) will be a step by step guide to run a Design Level Event Storming.

[Continue Reading...]({{site.url}}/detailed-agenda-for-a-ddd-design-level-event-storming-part-2/)
