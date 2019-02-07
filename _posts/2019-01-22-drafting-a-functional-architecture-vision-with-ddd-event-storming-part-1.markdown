---
layout: single
title: "Drafting a Functional Architecture Vision with Event Storming and DDD"
date: 2019-01-24
comments: true
categories:
 - architecture
 - squash-BDUF-with-event-storming-series
 - event storming
description: "We did the 1st phase of DDD Big Picture Event Storming. Let's build on the shared knowledge to draft a functional architecture vision. In 1 day, we should know the functional areas, find the core ones, and ensure they get our focus. Let's start by drawing the functional areas boundaries."
header:
   teaser: /imgs/2019-01-22-drafting-a-functional-architecture-vision-with-ddd-event-storming-part-1/functional-areas-teaser.jpeg
   og_image: /imgs/2019-01-22-drafting-a-functional-architecture-vision-with-ddd-event-storming-part-1/functional-areas-og.jpeg
---
_We did the 1st phase of [DDD](https://en.wikipedia.org/wiki/Domain-driven_design) Big Picture [Event Storming](https://en.wikipedia.org/wiki/Event_storming). It’s time to build on the shared knowledge to draft a functional architecture vision. All in just a few days._

Drafting an architecture vision is one of the most valuable outcomes of a DDD (Domain Driven Design) Big Picture Event Storming. Having an architecture vision is key to sustainable, successful and evolutionary design. Have a look at the [first posts](/misadventures-with-big-design-up-front/) for full explanations.

This is the 9th post in a [series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). It might be a good idea to start reading from [the beginning](/misadventures-with-big-design-up-front/).

![A drawing of a DDD Event Storming design board displayed as a land map, with flags pined in the different functional areas]({{site.url}}/imgs/2019-01-22-drafting-a-functional-architecture-vision-with-ddd-event-storming-part-1/functional-areas.jpeg)

## Context

We can use this technique to draft a target architecture on top of a DDD Big Picture Event Storming. That is for 2 reasons:

*   It won't work without the shared knowledge built with Event Storming
*   We'll re-use the design board

A good way to run this architecture draft workshop is to continue on the next day! Check the previous chapters to know how to do this.

Here is how to do it in more details.

## Functional areas

The first step to draft a functional architecture vision is to draw the functional areas. Functional area is a jargon-free synonym to [Bounded Context](https://martinfowler.com/bliki/BoundedContext.html).

{% assign figure_path="/imgs/2019-01-22-drafting-a-functional-architecture-vision-with-ddd-event-storming-part-1/context-map.jpeg" | absolute_url %}
    
{% assign figure_alt="A sample map of Bounded Context that we can find on Martin Fowler's website" %}
    
{% capture figure_caption %}
A sample map of [Bounded Context](https://martinfowler.com/bliki/BoundedContext.html) (aka [Context Map](https://www.infoq.com/articles/ddd-contextmapping)) from [martinfowler.com](https://martinfowler.com/bliki/BoundedContext.html)
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

> 💡 Bounded Contexts are the most important part of Domain Driven Design. Maintaining a strong decoupling between different functional areas makes large systems more simple.

## Walkthrough

At the end of the DDD Big Picture Event Storming, the design board should look something like that:

{% assign figure_path="/imgs/2019-01-22-drafting-a-functional-architecture-vision-with-ddd-event-storming-part-1/clumps-of-events.jpg" | absolute_url %}
    
{% assign figure_alt="A picture of a DDD Big Picture Event Storming board where domain events have gathered in clumps" %}
    
{% capture figure_caption %}
A DDD Big Picture Event Storming design board, with clumps of Domain Events
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

As you can see, [Domain Events](https://martinfowler.com/eaaDev/DomainEvent.html) and other post-its gather together in groups. These groups are "proto-functional-areas" (or proto-bounded-contexts if you prefer).

To materialize these further, try the following:

*   Ask for a volunteer
*   Grab:
    *   some colored, thick, wool string
    *   scissors
    *   adhesive tape
*   With your volunteer, walk the board from left to right, identifying functional areas.
*   Discuss a bit. You will usually agree about functional area boundaries
*   Ask the audience for a functional area name. Tip: Look into names in "ing" for good ones (ex: accounting, ordering)
*   It might also be the occasion to capture a few domain definitions. Be sure to keep your definition post-its at hand

> 💡 Wool, scissors and adhesive tape is all you need to draw functional areas on an DDD Event Storming design board.

## Outcomes

At this point, the outcomes are all about improved communication and collaboration.

Here is one key aspect of functional areas. The same concept might represent different thing in different areas! (That’s why they are called Bounded Contexts.) Let's think of the order entity in an e-commerce system for example. Orders have different responsibilities if we are talking about shopping, billing or delivering. Functional areas are an opportunity to specialize your domain definitions to different areas. It's a way to grow your [ubiquitous language](https://martinfowler.com/bliki/UbiquitousLanguage.html).

## To be continued

This was only the first step in drafting a functional architecture vision. In [the next post](/build-or-buy-software-identify-your-core-functional-areas-with-event-storming-and-ddd/), I'll go over how to identify core areas. The 20% of your codebase that should get 80% of your efforts!

This was the 9th post in a [series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series).

[Continue Reading](/build-or-buy-software-identify-your-core-functional-areas-with-event-storming-and-ddd/).
