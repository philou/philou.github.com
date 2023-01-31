---
layout: single-mailing-list
title: "Detailed agenda for a DDD Design-Level Event Storming - part 1"
date: 2019-10-24
comments: true
categories:
 - event storming
 - architecture
 - ddd
 - how-to-run-a-design-level-event-storming-series
description: "Running a DDD Design-Level Event Storming is not rocket science! It remains crucial to start the right way. First, generate domain events either from a Big Picture Event Storming or from your current system design. Second, present the Picture that explains Everything! Third, off you go!"
header:
   teaser: /imgs/2019-10-11-detailed-agenda-for-a-ddd-design-level-event-storming-part-1/design-level-event-storming-good-start-teaser.jpeg
   og_image: /imgs/2019-10-11-detailed-agenda-for-a-ddd-design-level-event-storming-part-1/design-level-event-storming-good-start-og.jpeg
---
_Running a [DDD](https://en.wikipedia.org/wiki/Domain-driven_design) Design-Level Event Storming is not rocket science! It's still crucial to start the right way: with domain events and the Picture that explains Everything!_

ℹ️ _**NOTE: Part of this post has been [republished and updated](https://www.eventstormingjournal.com/software%20design/how-to-explain-design-level-event-storming-to-your-mother/) on the Event Storming Journal blog**_

![Drawing of a can of 'Good Start' about Design-Level Event Storming]({{site.url}}/imgs/2019-10-11-detailed-agenda-for-a-ddd-design-level-event-storming-part-1/design-level-event-storming-good-start.jpeg)

This post is the second in [a series about how to build event-based systems with Design-Level Event Storming and DDD]({{site.url}}/categories/#how-to-run-a-design-level-event-storming-series). If you haven't yet, start by [the beginning]({{site.url}}/why-should-we-use-design-level-event-storming-for-ddd/).

## Pre-requisite

Are you eager to start? Not so fast! There are a few things to take care of first.

Design-Level Event Storming is about focused design on a subpart of the system. This not possible without enough shared context among participants.

That's why **it's very natural to do a Design-Level Event Storming after a [Big Picture Event Storming]({{site.url}}/categories/#squash-bduf-with-event-storming-series)**. It's a way to dive into the core subdomains that are complex enough to deserve Domain-Driven Design.

**Design-Level Event Storming can also be a recurring workshop on a [jelled](http://www.hans-eric.com/2007/08/13/is-your-team-jelled/) [product team](https://svpg.com/product-vs-feature-teams/).** Such teams share enough context to be able to dive into the design very fast. Whenever the team members feel that their design vision is out of date, they can run one. With a bit of luck, they might find their next [refactoring breakthrough](https://herbertograca.com/2015/10/19/ddd-8-refactoring-toward-deeper-insight-breakthrough/)!

**Design-Level Event Storming is also a good fit for a team that is already building a DDD and event-based system**. It's easy to map their current events on the design board and improve from there.

## A guided agenda

[![Poster presenting the agenda of a Design-Level Event Storming. The phases are: 1 Bring in Domain Events, 2 Present the picture that explains everything, 3 Add commands, 4 Actors and policies, 5 blank Read Models and Mock Ups, 6 Fill these, 7 Add External Systems, 8 Add blank business rules, 9 fill these, 10 Merge and name Aggregates]({{site.url}}/imgs/2019-10-11-detailed-agenda-for-a-ddd-design-level-event-storming-part-1/design-level-event-storming-agenda-small.jpg)]({{site.url}}/imgs/2019-10-11-detailed-agenda-for-a-ddd-design-level-event-storming-part-1/design-level-event-storming-agenda.jpg)

By its nature, Design-Level Event Storming is a lot less chaotic than its Big Picture cousin. Big Picture Event Storming is about exploring. Design-Level Event Storming is about designing and building.

As a consequence, some steps in the agenda are pretty straightforward, almost mechanic.

{% assign figure_path="/imgs/2019-10-11-detailed-agenda-for-a-ddd-design-level-event-storming-part-1/etop-games.jpg" | absolute_url %}
    
{% assign figure_alt="A poster presenting 'eTop-Games', a self-publishing table-top games startup idea. Business model: free, pay for custom services (design, rules hardcoding...), can sell physical printouts of games. Strategy: attract players with classics, attract designers with freemium and beta players, use content marketing, start with a simple game editor (1 board, pieces, a rulebook, a video chat, social rules enforcement)" %}
    
{% capture figure_caption %}
I'll illustrate the agenda with elements from my training on Event Storming facilitation. Let's imagine we are running a Design-Level Event Storming on the 'live game' subdomain.
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

### 1. Domain Events

Before you run the Design-Level Event Storming, you'll need [domain events](https://martinfowler.com/eaaDev/DomainEvent.html)!

You might be focusing on a core bounded context after a Big Picture Event Storming. In this case, copy these events to another blank design board.

[![Photo of "live game" sub domain events. We can see events 'Game started', 'Piece moved', 'Invalid move detected', 'Ambiguous rule detected', 'Feedback on rule sent', 'Game ended']({{site.url}}/imgs/2019-10-11-detailed-agenda-for-a-ddd-design-level-event-storming-part-1/live-game-domain-events-small.jpg)]({{site.url}}/imgs/2019-10-11-detailed-agenda-for-a-ddd-design-level-event-storming-part-1/live-game-domain-events.jpg)

You'll have to find another way if you are starting from scratch. You can run the first steps of the Big Picture Event Storming on this bounded context alone. I would do at least:

1.  Events Generation
2.  Events Sorting
3.  Actors and External Systems
4.  Storytelling

You might check my post [A detailed agenda of Event Storming]({{site.url}}/detailed-agenda-of-a-ddd-big-picture-event-storming-part-1/) to learn how to run these steps in detail.

### 2. The Picture that explains everything

{% assign figure_path="/imgs/2019-10-11-detailed-agenda-for-a-ddd-design-level-event-storming-part-1/picture-that-explains-everything.jpg" | absolute_url %}
    
{% assign figure_alt="The picture that explains everything: how post-its chain together on a Design-Level Event Storming board" %}
    
{% capture figure_caption %}
The picture that explains everything by [Alberto Brandolini](https://twitter.com/ziobrando) from his [Introducing Event Storming](https://leanpub.com/introducing_eventstorming) book
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

Now is the moment to show and explain this picture. Display the picture on the wall, and ask people what they understand about it. Usually, the audience gets it pretty well. You can then fill in the missing part.

Here is what I would say about it:

> [Alberto Brandolini](https://twitter.com/ziobrando) calls this "The picture that explains everything". It shows how DDD event-based systems work.
>
> The goal of this Event Storming is to design our system with this pattern.
>
> This pattern explains how Domain Events cascade during the life of the system.
>
> From the left, we see that we can send commands either to external systems or to our aggregates. Either of these then raises a domain Event. [Aggregates](https://martinfowler.com/bliki/DDD_Aggregate.html) are ours to code; it's where the business logic of our system is.
>
> Some events will "automatically" trigger another command. We materialize this link through policies 'Whenever event then raises command". We use lilac post-its for policies, like the one at the bottom right.
>
> Other events notify users. Users should be able to react to events by sending new commands. To be able to do so, they'll need to see the correct information. That's the green read-model post-it. We'll also have to display this information in a good UX. We can mock-up this UX in the white.
>
> By the end of the workshop, the board should contain patterns like that.
>
> From now on, we should make everything explicit. Everything we say should appear on the board.

## Continues

This post was the second in [a series about how to build event-based systems with Design-Level Event Storming and DDD]({{site.url}}/categories/#how-to-run-a-design-level-event-storming-series). The [next post]({{site.url}}/detailed-agenda-for-a-ddd-design-level-event-storming-part-2/) will detail the remaining steps of the Design-Level Event Storming.

[Continue Reading...]({{site.url}}/detailed-agenda-for-a-ddd-design-level-event-storming-part-2/)
