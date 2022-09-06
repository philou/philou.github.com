---
layout: single-mailing-list
title: "Detailed Agenda of a DDD Big Picture Event Storming - Part 2"
date: 2019-01-03
comments: true
categories:
 - architecture
 - squash-BDUF-with-event-storming-series
 - event storming
description: "The DDD Big Picture Event Storming is a creative game. It sticks to the classic open-explore-close flow. Here is the second part of its detailed agenda. This post goes over the generation of Domain Events, their collective sorting and the addition of actors and external systems to the picture."
header:
   teaser: /imgs/2018-12-16-detailed-agenda-of-a-ddd-big-picture-event-storming-part-2/event-storming-3-phases-game-teaser.jpeg
   og_image: /imgs/2018-12-16-detailed-agenda-of-a-ddd-big-picture-event-storming-part-2/event-storming-3-phases-game-og.jpeg
canonical_url: https://www.eventstormingjournal.com/big%20picture/step-by-step-guide-to-run-your-big-picture-event-storming/
---
_The_ [_DDD_](https://en.wikipedia.org/wiki/Domain-driven_design) _Big Picture_ [_Event Storming_](https://www.eventstorming.com/) is a _creative game. It sticks to [the classic open-explore-close flow](https://gamestorming.com/). Here is the second part of its detailed agenda._

ℹ️ _**NOTE: An [updated version of this post](https://www.eventstormingjournal.com/big%20picture/step-by-step-guide-to-run-your-big-picture-event-storming/) has been published on the Event Storming Journal blog**_

This is the 6th post in a [series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). If you want to learn how I got into Event Storming, I recommend you to start reading from [the beginning](/misadventures-with-big-design-up-front/).

This is also the 2nd part of a post detailing the agenda for a Domain Driven Design Big Picture Event Storming. The previous post contains the first part. Please make sure to read it first.

Let's see what happens next in a DDD Big Picture Event Storming

![Drawing of a DDD Event Storming board blended in the 3 open-explore-close phases of Gamestorming]({{site.url}}/imgs/2018-12-16-detailed-agenda-of-a-ddd-big-picture-event-storming-part-2/event-storming-3-phases-game.jpeg)

## 4. Generation


This is when the workshop actually begins. Ask attendees to stick any [Domain Event](https://martinfowler.com/eaaDev/DomainEvent.html) they can think of in the context of the use cases. To help them get started, be the first to stick [the Domain Event you prepared](/how-to-prepare-a-ddd-big-picture-event-storming-workshop/) in the middle of the design space.

> 💡 [Alberto Brandolini](https://twitter.com/ziobrando)'s trick: ignite the Event Storming by sticking a prepared domain event on the design board.

At some point, you'll see that the rate of Domain Event generation will dwindle down. That's the sign that it's time to move on to the next phase. 25 minutes or so are usually enough for this first phase.

## 5. Sorting

In this second phase, we'll ask them to sort the events chronologically. The idea is to represent the typical flow of work on the design board. During the generation phase, people were writing down any event they could think off. As a result, they were working alone. In this phase, they will need to speak with each other to sort the events.

This is where DDD Event Storming does its magic. Attendees all have a different point of view about the system. They materialized it on the design board with some domain events. They will need to discuss through these differences to sort the events.

> 💡 Event Storming does its magic when people try to sort all their domain events.

This phase should trigger intense discussions. Hopefully, the group will capture many [domain definitions and problems](/detailed-agenda-of-a-ddd-big-picture-event-storming-part-1/) to look into.

[![Drawing of a DDD Event Storming board with vertical and horizontal flow patterns. Vertical alignment models branching, while horizontal alignment models concurrent flows.]({{site.url}}/imgs/2018-12-16-detailed-agenda-of-a-ddd-big-picture-event-storming-part-2/flow-patterns-small.jpeg)]({{site.url}}/imgs/2018-12-16-detailed-agenda-of-a-ddd-big-picture-event-storming-part-2/flow-patterns.jpeg)

Feel free to organize the board as you wish to accommodate the flow. Typically, swim-lanes will emerge for alternatives, and vertical alignment will signify branching. You might also create duplicate post-its when some kind of looping occurs.

![Drawing of a loop post-it for DDD Event Storming. Duplicating event post-its with an extra arrow to model loops in the domain flow.]({{site.url}}/imgs/2018-12-16-detailed-agenda-of-a-ddd-big-picture-event-storming-part-2/loop-post-it.png)

## 6. Actors and External Systems

![Drawing of an actor post-it for DDD Event Storming. It's a small yellow post-it with the role written on and a stick figure drawn on.]({{site.url}}/imgs/2018-12-16-detailed-agenda-of-a-ddd-big-picture-event-storming-part-2/actor-post-it.png)

You've started to write down the story of your system. All good stories have heroes though! This time, ask attendees to identify actors (people with a role) that trigger or respond to events. The convention is to use small yellow post-its for that. There is no need to add an actor to every event, sticking one at the beginning of a chain of events is enough.

![Drawing of an external-system post-it for DDD Event Storming. It's a blue post-it with the external system's name written on.]({{site.url}}/imgs/2018-12-16-detailed-agenda-of-a-ddd-big-picture-event-storming-part-2/external-system-post-it.png)

Similarly, complex systems also interact with external systems. External systems are not humans, but they could be an online API for example. The convention is to use blue post-its for External Systems. Place some at place where the events interact with them.

## We are almost there

At this point, attendees should have a better overall grasp of the domain. In the [next post](/detailed-agenda-of-a-ddd-big-picture-event-storming-part-3/), I'll go over the last steps of the DDD Big Picture Event Storming.

This was the 6th post in a [series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series).

[Continue Reading...](/detailed-agenda-of-a-ddd-big-picture-event-storming-part-3/)
