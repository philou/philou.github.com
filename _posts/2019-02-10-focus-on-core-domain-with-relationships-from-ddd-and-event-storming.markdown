---
layout: single
title: "Focus on Core Domain with Relationships from DDD and Event Storming"
date: 2019-02-14
comments: true
categories:
 - architecture
 - squash-BDUF-with-event-storming-series
 - event storming
description: "Functional Areas are a key aspect of Domain Driven Design. Here is a DDD and Event Storming follow-up activity to collaboratively agree on target domain relationships. This way, we can ensure that core areas keep the most of the focus and priority throughout the life of the system."
header:
   teaser: /imgs/2019-02-10-focus-on-core-domain-with-relationships-from-ddd-and-event-storming/core-stronghold-teaser.jpeg
   og_image: /imgs/2019-02-10-focus-on-core-domain-with-relationships-from-ddd-and-event-storming/core-stronghold-og.jpeg
published: false
---
_Functional Areas are a key aspect of [DDD](https://en.wikipedia.org/wiki/Domain-driven_design). Here is a DDD and [Event Storming](https://www.eventstorming.com/) activity to find what kind of domain relationships will ensure focus on core areas._

This is the 12th post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). It might be a good idea to start reading from [the beginning](/misadventures-with-big-design-up-front/).

Following [the previous posts](/check-that-core-areas-have-the-upper-hand-with-event-storming-and-ddd/), here is where we stand

*   We have identified functional areas
*   their relationships
*   and where should the decision power be

> 💡 Focusing on core domains is the key to long term profitable and [sustainable pace](http://www.sustainablepace.net/what-is-sustainable-pace)

![Drawing of a stronghold with a 'CORE' flag in an event storming design board. DDD and Event Storming can be used to draft architecture that will safeguard your core bounded contexts.]({{site.url}}/imgs/2019-02-10-focus-on-core-domain-with-relationships-from-ddd-and-event-storming/core-stronghold.jpeg)

[Core areas](/build-or-buy-software-identify-your-core-functional-areas-with-event-storming-and-ddd/) contain our competitive advantage. Focusing on them is the key to long term profitable and sustainable pace. In practice, we want core areas to always keep the priority, the budget, the time... Let's see how we can use Event Storming and DDD (Domain Driven Design) to make sure that core areas always keep the upper-hand.

## DDD Domain Relationship Patterns

[![Cover of the DDD book by Eric Evans. It contains a lot of relationship patterns to make sure the core functional areas keep the upper hand]({{site.url}}/imgs/2019-02-10-focus-on-core-domain-with-relationships-from-ddd-and-event-storming/ddd.jpg)](https://www.amazon.com/Domain-Driven-Design-Tackling-Complexity-Software/dp/0321125215/ref=sr_1_1?ie=UTF8&qid=1549123215&sr=8-1&keywords=domain+driven+design)

DDD can do one more thing for us. In [the blue book](https://www.amazon.com/Domain-Driven-Design-Tackling-Complexity-Software/dp/0321125215/ref=sr_1_1?ie=UTF8&qid=1549123215&sr=8-1&keywords=domain+driven+design), [Eric Evans](https://twitter.com/ericevans0?lang=fr) lists some [domain relationship patterns](https://markhneedham.com/blog/2009/03/30/ddd-recognising-relationships-between-bounded-contexts/). These patterns are a bit like a relationship contract between 2 functional areas. They cover technical, human and team organization aspects.

The use of relationship patterns serves 2 purposes:

1.  It will help us to pick the good relationship pattern as we design the system. This in turn makes sure core areas keep the upper-hand and won't get blocked.
2.  With explicit relationships, everyone will understand better what is expected from them.

Unfortunately, this remains very abstract, and could grant us the [astronaut architect badge](https://www.joelonsoftware.com/2001/04/21/dont-let-architecture-astronauts-scare-you/). Nonetheless, using relationship patterns correctly is a great boost to architecture.

Let's see how to make this more down to earth.

## Walkthrough

This step is going to be critical but also difficult because you don't want to lose people. A good idea is to start this in the morning, with everyone fresh. You’ll start discussing architecture and system organization. As a result, it’s going to be more technical than the rest of the [Big Picture Event Storming](/categories/#squash-bduf-with-event-storming-series). The presence of business people is still very useful because most relationships have organizational consequences. It will be easier to get their buy-in if they remain in the loop.

![Photo of an apple. Event Storming is a great at making DDD digestible to everyone]({{site.url}}/imgs/2019-02-10-focus-on-core-domain-with-relationships-from-ddd-and-event-storming/apple.jpg)

Here is a trick to keep things digestible.

## Radars

In his [presentation "Context Mapping in Action"](https://fr.slideshare.net/ziobrando/context-mapping-in-action), [Alberto Brandolini](https://twitter.com/ziobrando) characterized the relationships. Here is a slide from his presentation:

{% assign figure_path="/imgs/2019-02-10-focus-on-core-domain-with-relationships-from-ddd-and-event-storming/big-ball-of-mud.jpg" | absolute_url %}
    
{% assign figure_alt="A Slide from presentation 'Context Mapping in Action' by Alberto Brandolini, the inventor of Event Storming, where he defines the 'Big Ball of Mud' DDD domain relationship pattern as Flexibility 1/5, Maintenance 5/5, Skills 1/5 and Organization 1/5." %}
    
{% capture figure_caption %}
From [Alberto Brandolini](https://twitter.com/ziobrando)’s ["Context Mapping in Action" presentation](https://fr.slideshare.net/ziobrando/context-mapping-in-action)
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

I built on top of his work and mapped the others as well. (I did my best, feedback is welcome.) Here are the different dimensions and what they mean:

*   Ease of organization
*   Ease of coding (Alberto's Skills)
*   Ease of maintenance
*   Decoupling (Alberto's Flexibility)

![Sample radar for Big Ball of Mud. These radar allow to present DDD domain relationship patterns in a visual way to Event Storming attendees]({{site.url}}/imgs/2019-02-10-focus-on-core-domain-with-relationships-from-ddd-and-event-storming/radar.png)

I flipped some dimensions so that the wider the radar surface, the better, or simpler the pattern. I also adapted naming to make this more explicit.

We need the attendees to brainstorm the relationships they envision in their system. Unfortunately, these relationships are something new to them. If we dump the 10 relationship patterns at once on them, they won't understand a word. Before asking them for relationships, we need a way to introduce them in a digestible way.

Here again, we'll use stories.

![Photo of a poster presenting the tales of 2 startups. Storytelling is a powerful way to introduce DDD domain relationship patterns to Event Storming attendees in a digestible way ]({{site.url}}/imgs/2019-02-10-focus-on-core-domain-with-relationships-from-ddd-and-event-storming/tale-of-2-startups.jpg)

> 💡 DDD can seem too abstract, use Event Storming to present it with storytelling.

## Once upon a time, there was a college dropout startup…

We’ll use this made up story to present only the most simple relationships. By simple, I mean (arbitrarily) ease of organization ≥ 2 and ease of coding ≥ 3.

*   Big Ball of mud
*   Separate Ways
*   Conformist
*   Customer Supplier
*   Inner Source

<figure><iframe src="//www.slideshare.net/slideshow/embed_code/key/FPYPMhhW96dwnW?startSlide=2" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <figcaption><a href="//www.slideshare.net/PhilippeBourgau/ddd-domain-relationships-radars" title="DDD Domain Relationships Radars" target="_blank">DDD Domain Relationships Radars</a> by <a href="//www.slideshare.net/PhilippeBourgau" target="_blank">Philippe Bourgau</a></figcaption></figure>


The trick is to present the story as a tale. Next step is to present the relationship and stick the radars on the wall at the same time. Leave a few minutes for everyone to understand what this means.

Make sure everyone understood the kinds of relationships before moving on. It's then time to ask attendees to pick one for every area relationships. Just stick a post-it with the initials of the pattern on top of the relationship post-it.

The last thing to do is to ask their feedback about the design they came up with. Most likely, they won’t be very happy with it.

[![Photo of the Event Storming design board after attendees have chosen the DDD Domain relationships in the College Dropout Startup scenario]({{site.url}}/imgs/2019-02-10-focus-on-core-domain-with-relationships-from-ddd-and-event-storming/junior-startup-board-small.jpg)]({{site.url}}/imgs/2019-02-10-focus-on-core-domain-with-relationships-from-ddd-and-event-storming/junior-startup-board.jpg)

## Once upon a time, there was a veteran startup...

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

![Close photo of DDD domain relationships signaled on the Event Storming design board with green post-its]({{site.url}}/imgs/2019-02-10-focus-on-core-domain-with-relationships-from-ddd-and-event-storming/DDD-domain-relationship-green-post-it.jpg)

## To be continued

I'm not done with DDD domain relationships yet, but it's already too much for a single post. In [the next post](http://eepurl.com/dxKE95), I'll go over how the outcomes of this activity, as well as a few animation tricks.

Event Storming is a DDD accelerator. In less than a week, you can get your product started as if it had been going for months. This will save tremendous rework later on. Coupled with refactoring skills, it is key to a profitable and sustainable pace. This was the 12th post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series).

[Continue Reading when it's ready](http://eepurl.com/dxKE95).
