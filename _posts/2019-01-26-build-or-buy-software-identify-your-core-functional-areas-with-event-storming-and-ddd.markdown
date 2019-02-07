---
layout: single
title: "Build or Buy Software? Identify your core functional areas with Event Storming and DDD"
date: 2019-01-31
comments: true
categories:
 - architecture
 - squash-BDUF-with-event-storming-series
 - event storming
description: "Event Storming and DDD are great at identifying functional areas. It's even more valuable to identify the core areas to focus on, and the generic areas to buy. This activity will help your team to prioritize more valuable work, and to reduce maintenance by choosing the good software to build or buy."
header:
   teaser: /imgs/2019-01-26-build-or-buy-software-identify-your-core-functional-areas-with-event-storming-and-ddd/gold-nugget-domain-teaser.jpeg
   og_image: /imgs/2019-01-26-build-or-buy-software-identify-your-core-functional-areas-with-event-storming-and-ddd/gold-nugget-domain-og.jpeg
---
_[Event Storming](https://en.wikipedia.org/wiki/Event_storming) and [DDD](https://en.wikipedia.org/wiki/Domain-driven_design) are great at identifying [functional areas](/drafting-a-functional-architecture-vision-with-ddd-event-storming-part-1/). It's even more valuable to identify the core areas to focus on, and the generic areas to buy._

In [the previous post](/drafting-a-functional-architecture-vision-with-ddd-event-storming-part-1/), I explained how to draw the boundaries of functional areas. Not all functional areas are equal though. Some have tremendous value for you, whereas others just need to exist. [Pareto's Principle](https://en.wikipedia.org/wiki/Pareto_principle), also known as 80/20 rule goes like that:

> Roughly 80% of the effects come from 20% of the causes. [Wikipedia](https://en.wikipedia.org/wiki/Pareto_principle)

The same goes with functional areas. A small part of your code base will generate much of its value. **Event Storming and DDD (Domain Driven Design) can help us to identify where to focus, and what software to buy or build.**

![Drawing of a hammer next to a gold nugget between rocks. Using Event Storming and DDD is a good way to extract and highlight your core functional areas within your system]({{site.url}}/imgs/2019-01-26-build-or-buy-software-identify-your-core-functional-areas-with-event-storming-and-ddd/gold-nugget-domain.jpeg)

This is the 10th post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). It might be a good idea to start reading from [the beginning](/misadventures-with-big-design-up-front/).

## Core Functional Areas

[Strategic DDD](https://en.wikipedia.org/wiki/Domain-driven_design#Strategic_domain-driven_design) distinguishes 3 types of functional areas. Categorizing a functional area is key to answering "Buy or Build Software" question.

### Core areas

Core areas are your most important assets. These are the functional areas that make your competitive advantage. They are so specific and important to your business that you must build these yourself. You should strive to focus as much as you can on them. Focus goes through doing as little as possible of the rest...

### Generic areas

These are functional areas that have no specificities with your business. They are reusable across many industries. It's not a good time investment to build your own version. You should rather re-use or buy an existing third party to provide this in your system.

### Supportive areas

Supportive areas are the rest. Too specific to buy, but not differentiating enough to build serious competitive advantage. Here are typical supportive functional areas:

*   Custom libraries reused across many core domains. Technical in-house frameworks are a good example.
*   Features that are so basic in your industry that everyone takes them for granted. Configuration or administration often fall here.

You cannot reuse existing code for your supportive areas. You don't want to focus on them either! Here some strategies experts recommend about supportive areas:

*   outsource them
*   leave them to less experienced programmers
*   or apply looser quality rules in this code

Here is [a post by Jonathan Olivier](https://blog.jonathanoliver.com/ddd-strategic-design-core-supporting-and-generic-subdomains/) if you want to learn more about these 3 kinds of functional areas.

## How to classify your functional areas

This activity goes after all the DDD Event Storming steps I presented in [the previous posts](/categories/#squash-bduf-with-event-storming-series). The design board should now look something like that:

[![The Event Storming board after identifying the functional areas. Boundaries are the small red strings]({{site.url}}/imgs/2019-01-26-build-or-buy-software-identify-your-core-functional-areas-with-event-storming-and-ddd/event-storming-board-with-functional-areas-small.jpg)]({{site.url}}/imgs/2019-01-26-build-or-buy-software-identify-your-core-functional-areas-with-event-storming-and-ddd/event-storming-board-with-functional-areas.jpg)

Here is how to do this in group during the workshop.

* Give a quick introduction to the 3 kinds of areas. It's rather simple, and people usually get this quick.

![A poster that explains to the Event Storming attendees the DDD concepts of Core, Supportive and Generic functional areas]({{site.url}}/imgs/2019-01-26-build-or-buy-software-identify-your-core-functional-areas-with-event-storming-and-ddd/core-generic-supportive.jpg)

* Draw a few hearts ❤️, 🅖 and 🅢 post-its.
* Pick one area, and ask how they would classify it. Discussion and, hopefully, agreement should follow. If you cannot reach a consensus, use a pink problem post-it and continue. You might also have a look at [Nick Chamberlain's technique of using both complexity and competitive advantage](https://buildplease.com/pages/fpc-7/).
* Hand the rest of the post-its to the audience, and ask them to classify the other areas
* It should not be very long for them to have classified all the contexts
* The core should be as small as possible. So let's try to highlight the core even further. For identified core areas, ask the audience if they could extract non-core parts out. If yes, draw new supportive or generic functional areas.
* Ask them if there is anything that they would like to comment

![Zoom on a part of the Event Storming board where we can see a functional area classified as core with a ❤️ post-it]({{site.url}}/imgs/2019-01-26-build-or-buy-software-identify-your-core-functional-areas-with-event-storming-and-ddd/a-core-functional-area.jpg)

## Outcomes

This small and simple activity can have paramount consequences. Especially for big topics like prioritization or buy vs build software decisions.

Here is an illustration. I gave this workshop to a team in Dublin a few month ago. They later told me they had unscheduled a large refactoring that was not tackling their core. By itself, this kind of decision pays back the whole workshop many times.

Another team I’ve worked with decided to replace a feature they had built in-house with a 3rd party. They had discovered it was ‘Generic’. This would allow them to re-focus on other core areas of their system.

> 💡 Use Event Storming and DDD to identify generic parts of your system. Then save time and maintenance by replacing them with third parties.

A less tangible outcome is that it focuses discussions and efforts on core areas. At the end, there will be less work on non-core areas, and more on core areas. Work on core areas is also more valuable. All in all, it means less but more valuable work. This means a more profitable and [sustainable pace](http://www.sustainablepace.net/what-is-sustainable-pace).

The more we dive in Event Storming, and the more actionable the outcomes get!

## To be continued

In [the next post](/check-that-core-areas-have-the-upper-hand-with-event-storming-and-ddd/), I'll go over decision power between functional areas. Now that we know our core areas, we want to make sure they have this power!

This was the 10th post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series).

[Continue Reading...](/check-that-core-areas-have-the-upper-hand-with-event-storming-and-ddd/).
