---
layout: single
title: "Focus on the Core with Event Storming and DDD Domain Relationships - 2"
date: 2019-02-21
comments: true
categories:
 - architecture
 - squash-BDUF-with-event-storming-series
 - event storming
description: "The advanced DDD Domain Relationships shine as they protect the core's priority, focus, time and budget. This is the second half of a post describing an Event Storming activity to pick the best relationships. It also describes outcomes like a DDD Context Map, animation tips, and possible next steps."
header:
   teaser: /imgs/2019-02-12-focus-on-core-domain-with-relationships-from-ddd-and-event-storming-part-2/ddd-startup-veteran-cap-teaser.jpeg
   og_image: /imgs/2019-02-12-focus-on-core-domain-with-relationships-from-ddd-and-event-storming-part-2/ddd-startup-veteran-cap-og.jpeg
published: false
---
_The advanced [DDD Domain Relationships](https://www.slideshare.net/PhilippeBourgau/ddd-domain-relationships-radars) shine as they protect the core's upper hand. Here is the end of an [Event Storming](https://www.eventstorming.com/) activity to pick the best relationships._

In the previous post, I started to present an Event Storming activity to select DDD ([Domain Driven Design](https://en.wikipedia.org/wiki/Domain-driven_design) Domain Relationships. If you haven't start reading from the first part.

This is also the 13th post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). It might be a good idea to start reading from [the beginning](/misadventures-with-big-design-up-front/).

I ended last post with the first scenario of a college dropout startup. They only had access to the easiest DDD Domain relationships. Without further ado, let's continue our story.

![Drawing of a 'Startup Veteran' cap, with badges for Core and DDD. Advance DDD Domain Relationship can protect the core domains's focus, priority, budget and time]({{site.url}}/imgs/2019-02-12-focus-on-core-domain-with-relationships-from-ddd-and-event-storming-part-2/ddd-startup-veteran-cap.jpeg)

### Once upon a time, there was a veteran startup...

After a break, it’s time for another tale. This time, a team of veteran developers just quit their jobs to fund a startup. As experienced engineers, they have access to all the other kinds of relationships:

*   Partnership
*   Shared Kernel
*   Anti Corruption Layer
*   Open Host Service
*   Published Language

<figure><iframe src="//www.slideshare.net/slideshow/embed_code/key/FPYPMhhW96dwnW?startSlide=7" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <figcaption><a href="//www.slideshare.net/PhilippeBourgau/ddd-domain-relationships-radars" title="DDD Domain Relationships Radars" target="_blank">DDD Domain Relationships Radars</a> by <a href="//www.slideshare.net/PhilippeBourgau" target="_blank">Philippe Bourgau</a> </figcaption></figure>

Same as before, explain the relationship and stick the radars on the wall. Then ask attendees to update their relationships with their new preferred pattern. Relationships can also stack-up, for example, you might have:

*   Open Host Service + Anti Corruption Layer
*   Customer Supplier + Inner Source

Most of the time, people are a lot happier with the new design this time.

![Close photo of DDD domain relationships signaled on the Event Storming design board with green post-its]({{site.url}}/imgs/2019-02-12-focus-on-core-domain-with-relationships-from-ddd-and-event-storming-part-2/DDD-domain-relationship-green-post-it.jpg)

### Closing

That’s a good time to close the workshop. Don’t forget to do the following:

*   Ask for feedback (ex using [ROTI](http://www.agile-ux.com/2009/01/09/return-on-time-invested-a-roti-for-your-meetings/)) to make your next workshop better
*   Copy the architecture draft on a sheet of paper and save it or display it somewhere.

[![Drawing of the DDD context map drawn from the board after an Event Storming session]({{site.url}}/imgs/2019-02-12-focus-on-core-domain-with-relationships-from-ddd-and-event-storming-part-2/napkin-ddd-context-map-small.jpg)]({{site.url}}/imgs/2019-02-12-focus-on-core-domain-with-relationships-from-ddd-and-event-storming-part-2/napkin-ddd-context-map.jpg)

*   You can leave the design board on the wall for a few days, but you’ll end up removing it. The real value is in the shared knowledge. 

## Outcomes

The main outcome is the formal agreement of how the teams and part of the system should interact. Anytime people will collaborate, they can refer to this shared knowledge.

![Photo of a compass. DDD and Event Storming can serve as a compass for everyone to go in the same direction]({{site.url}}/imgs/2019-02-12-focus-on-core-domain-with-relationships-from-ddd-and-event-storming-part-2/compass.jpg)

It will also provide a kind of compass for day to day collaborative refactoring. Whenever people need to [mock](/categories/#mocking) some code for testing, they’ll know what’s the best place to do so. Whenever they’ll need to take a design decision, they can check the architecture draft for a big picture.

> 💡 Context Mapping with DDD and Event Storming helps to avoid a [tangle of mocks](/careless-mocking-considered-harmful/).

## Tips

Before I end this post, here are 3 tips to animate this functional architecture workshop.

### Exclude tricky interaction patterns

Some relationship patterns are pretty complicated. [Cyrille Martaire](https://twitter.com/cyriux), suggested to exclude partnership and shared kernel. I have seen partnership work in the context of [SAFe](https://www.scaledagileframework.com/) with [PI plannings](https://www.scaledagileframework.com/pi-planning/)... But it might still be a good idea to stay away from these 2 kinds of relationships. It will make the workshop more digestible. Plus large synchronization events like PI plannings have their own costs 😰

### Know DDD or get an ally

Relationship patterns phase is the most technical part of the workshop. You won't be able to present the patterns if you don't understand them. If you are not DDD-savvy, try to find an ally to help you out through this phase.

### Don't talk about DDD

![Photo of pink soap written 'Fight Club', as in the movie. Like the Fight Club, it's better to avoid naming DDD because of its convoluted names.]({{site.url}}/imgs/2019-02-12-focus-on-core-domain-with-relationships-from-ddd-and-event-storming-part-2/fight-club-soap.jpg)

> 💡 DDD is like the Fight Club. Do not talk about DDD.

DDD has a bad reputation because it uses convoluted names. Try not to mention DDD and use less scary words. For example

*   Use functional area instead of bounded contexts
*   Use kind of relationship instead of relationship patterns
*   etc... 

The goal is to demystify DDD it as much as possible. Maybe I should write a specific post about this someday.

## Next Steps

By itself, this architecture workshop is already very valuable because of:

*   the shared knowledge
*   the buy-in
*   the alignment
*   the improved collaboration
*   the better day to day decisions

On top of that, we can use this architecture draft to define actionable next steps. For example, there are activities to define:

*   A plan to get to this vision from scratch
*   What prototypes to build to validate NFRs early
*   A refactoring strategy to transform our existing system
*   Teams that will use [Conway's law](https://en.wikipedia.org/wiki/Conway%27s_law) to move us toward this vision

Event Storming is an effective way to shrink architecture from months to days. Done at the start of a project, it saves a lot of rework and keeps the pace sustainable. It's also very flexible and can will serve many kinds of decisions. Run your own now!

This was the 13th post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). In the next posts, I’ll be presenting workshop and activities to these next steps.

[Continue reading when it's ready](http://eepurl.com/dxKE95)
