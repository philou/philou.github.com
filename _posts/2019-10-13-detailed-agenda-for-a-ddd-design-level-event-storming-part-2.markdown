---
layout: single-mailing-list
title: "Detailed agenda for a DDD Design-Level Event Storming - part 2"
date: 2019-10-31
comments: true
categories:
 - event storming
 - architecture
 - ddd
 - how-to-run-a-design-level-event-storming-series
description: "The most valuable activities in a DDD Design-Level Event Storming are UX and Aggregates explorations. Here is a step by step agenda that will lead us there. The chain of events helps us to define good UX. Discussing business rules, then grouping them leads us to good Aggregate Names."
header:
   teaser: /imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/design-level-event-storming-last-piece-teaser.jpeg
   og_image: /imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/design-level-event-storming-last-piece-og.jpeg
canonical_url: https://www.eventstormingjournal.com/software%20design/the-best-agenda-for-design-level-event-storming/
---
_The most valuable activities in a [DDD](https://en.wikipedia.org/wiki/Domain-driven_design) Design-Level Event Storming are UX and [Aggregates](https://martinfowler.com/bliki/DDD_Aggregate.html) explorations. Here is a step by step agenda that will lead us there._

ℹ️ _**NOTE: Part of this post has been [republished and updated](https://www.eventstormingjournal.com/software%20design/the-best-agenda-for-design-level-event-storming/) on the Event Storming Journal blog**_

![Drawing of an event storming board jigsaw with one piece left to place. This represents the final step to finishing a Design-Level Event Storming]({{site.url}}/imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/design-level-event-storming-last-piece.jpeg)

This post is the third in [a series about how to build event-based systems with Design-Level Event Storming and DDD]({{site.url}}/categories/#how-to-run-a-design-level-event-storming-series). If you haven't yet, start by [the beginning]({{site.url}}/why-should-we-use-design-level-event-storming-for-ddd/).

### 3. Commands

The first step to making the pattern emerge is to prefix every [domain event](https://martinfowler.com/eaaDev/DomainEvent.html) with a [command](https://en.wikipedia.org/wiki/Command_pattern). This step is pretty mechanic and straightforward. If you have an event called "Trade booked", prefix it with a command "Book Trade". Sometimes, the command names are a bit different, but you should manage to figure this out.

[![Photo of the 'Start Game' command blue post-it, stuck just to the left of the 'Game Started' domain event]({{site.url}}/imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/command-small.jpg)]({{site.url}}/imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/command.jpg)

### 4. Actors or policies

Commands can either be sent by a human (an [actor]({{site.url}}/detailed-agenda-of-a-ddd-big-picture-event-storming-part-2/)) or automatically by a policy.

Go through all the commands and prefix them with an actor or a policy. Having done a [Big Picture Event Storming]({{site.url}}/detailed-agenda-of-a-ddd-big-picture-event-storming-part-1/) before might help. Look for actors you might already have identified.

[![Photo of the 'Moderator' actor small and pale post-it, stuck just to the left of the 'Start Game' command]({{site.url}}/imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/actor-small.jpg)]({{site.url}}/imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/actor.jpg)

Actors should have a title, and policies should follow the form "Whenever Event X, then Command Y".

We sometimes automate policies with a Mechanical Turk. In this case, it's simpler to keep modeling this as a policy rather than introducing a 'dumb' actor.

[![Photo of a policy 'Whenever a piece is moved, backup game' on a lilac post-it between the 'Piece moved' domain event and the 'Backup Game' command]({{site.url}}/imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/policy-small.jpg)]({{site.url}}/imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/policy.jpg)

### 5. Empty read-models and UX mock-ups

Before actors can send a command, they need data from which to decide. That's where UX and read-model come into play.

This step is, again, a straightforward step:

*   We add empty green and white post-its between domain events and actors. 
*   The green post-its are for read-models. 
*   The white post-its are for the UX mock-ups.

[![Photo of blank Read-Model green post it and blank UI Mock-up white post-it at the right of the 'Ambiguous Rule Detected' domain event]({{site.url}}/imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/blank-read-model-and-mock-up-small.jpg)]({{site.url}}/imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/blank-read-model-and-mock-up.jpg)

We just set up the stage for the next step.

### 6. Content of read-models and UX mock-ups

We just made explicit the points where actors react to new information.

> 💡 Design-Level Event Storming is the perfect workshop to discuss UX of domain events

It's time to discuss what the actor needs to know to decide what to do next.

Write down the data you want to display on the green, read-model post-it. Draw a UX mock-up of the screen that should display this data.

[![Photo of a Read-Model containing {Rule text, Highlighted section and Comments} and a UI Mock-up sketch at the right of the 'Ambiguous Rule Detected' domain event, between the 'Ambiguous Rule Detected' domain event to the left and the 'Send feedback on rule' command to the right]({{site.url}}/imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/read-model-and-mock-up-small.jpg)]({{site.url}}/imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/read-model-and-mock-up.jpg)

### 7. External systems

We've been looking at what happens 'after' a domain event. Let's dive into what happens between a command and an Event.

Let's check the picture that explains everything again. It tells us that [external systems]({{site.url}}/detailed-agenda-of-a-ddd-big-picture-event-storming-part-2/) raise domain events too.

If you did a Big Picture Event Storming before, you'd already have spotted a few external systems. Copy them to pink post-its, and stick them between Commands and Events where it makes sense.

In the scope of a bounded context, other contexts become external systems too! Go through all your commands. Add a pink post-it between the command and the event when they involve another context. Write the name of the other context on the pink post-it.

[![Photo of the 'Game Backup Subdomain' external system pink post-it between the 'Backup game' command to the left and the 'Game backed up' domain event to the right]({{site.url}}/imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/external-system-small.jpg)]({{site.url}}/imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/external-system.jpg)

### 8. Empty aggregates

Here's another mechanic step. If an external system did not raise an event, then an aggregate must have raised it.

Go through all commands and events that are not linked by an external system. Add an empty yellow post-it there.

[![Photo of a blank Business-Rule yellow post-it between the 'Start game' command to the left and the 'Game Started' domain event to the right]({{site.url}}/imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/blank-business-rule-small.jpg)]({{site.url}}/imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/blank-business-rule.jpg)

### 9. Content of aggregates

Now is the time to fill in the aggregates.

> 💡 Discussing what Aggregates will do is the key moment of Design-Level Event Storming

Please don't call them aggregates! [Remember the first rule of DDD? Don't speak about DDD.]({{site.url}}/how-to-use-event-storming-to-introduce-domain-driven-design/) It's going to work better if you call them Business Rules.

Ask participants to fill in these business rules with:

*   Preconditions: what must be true before
*   Postconditions: what is valid after
*   Invariants: important things that remain true all along

If you want to learn more about these concepts, check out [this stackoverflow question](https://stackoverflow.com/questions/11331964/what-are-the-differences-pre-condition-post-condition-and-invariant-in-computer). Some business rules are dead-simple, but others generate much discussion. This knowledge sharing between domain experts and developers is invaluable.

[![Photo of a Business-Rule containing {precondition: game is frozen, postcondition: 1 active player, postcondition: pieces are movable, invariant: number of players} between the 'Start game' command to the left and the 'Game Started' domain event to the right]({{site.url}}/imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/business-rule-small.jpg)]({{site.url}}/imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/business-rule.jpg)

### 10. Name aggregates

Up to now, we've always kept the chronology in the design. Let's break this!

This last step helps us to identify aggregates around which we'll code the system. When you spot 2 business rules that deal with similar data, move them on top of one another.

> 💡 Finding good names for Aggregates is the last thing we do in a Design-Level Event Storming

Your board should start to look like that:

![High level drawing of what a Design-Level Event Storming will look like once we group related business rules together]({{site.url}}/imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/merged-business-rules.jpeg)

At this point, it should be easy to name your aggregates! Add an extra yellow post-it on top of aggregates to give the group a name.

[![Photo of the 'Game' Aggregate materialized by a yellow post-it on top of the business rules post-its for 'Start Game' and 'End Game' commands]({{site.url}}/imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/aggregate-small.jpg)]({{site.url}}/imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/aggregate.jpg)

## Continues

Congratulation, you've reached the end of the workshop!

![Photo of a mountain path where we can guess the sun will appear at the next turn. Design-Level Event Storming is a step by step workshop that leads to great outcome.]({{site.url}}/imgs/2019-10-13-detailed-agenda-for-a-ddd-design-level-event-storming-part-2/end-of-the-path.jpg)

This post was the third in [a series about how to build event-based systems with Design-Level Event Storming and DDD]({{site.url}}/categories/#how-to-run-a-design-level-event-storming-series). [The next, and last, post]({{site.url}}/7-tactics-that-will-make-your-ddd-design-level-event-storming-pay-off/) will provide tactics to reap the most value out of a Design-Level Event Storming.

[Continue Reading...]({{site.url}}/7-tactics-that-will-make-your-ddd-design-level-event-storming-pay-off/)
