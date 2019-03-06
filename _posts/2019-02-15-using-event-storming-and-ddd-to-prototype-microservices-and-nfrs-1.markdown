---
layout: single
title: "Using Event Storming and DDD to prototype (micro)services and NFRs - 1"
date: 2019-03-07
comments: true
categories:
 - architecture
 - squash-BDUF-with-event-storming-series
 - event storming
description: "DDD Big Picture Event Storming is a great support to think about (micro)services boundaries and NFR prototypes. Here is the first of 2 posts describing an Event Storming follow-up workshop activity to collaboratively define processes boundaries and NFR questions that we need to prototype."
header:
   teaser: /imgs/2019-02-15-using-event-storming-and-ddd-to-prototype-microservices-and-nfrs-1/event-storming-microservices-teaser.jpeg
   og_image: /imgs/2019-02-15-using-event-storming-and-ddd-to-prototype-microservices-and-nfrs-1/event-storming-microservices-og.jpeg
---
_[DDD](https://en.wikipedia.org/wiki/Domain-driven_design) Big Picture [Event Storming](https://en.wikipedia.org/wiki/Event_storming) is a great support to draft [(micro)services](https://en.wikipedia.org/wiki/Microservices) boundaries and [NFR](https://en.wikipedia.org/wiki/Non-functional_requirement) prototypes. Let's see how to with this workshop activity._

[Previous posts](/drafting-a-functional-architecture-vision-with-ddd-event-storming-part-1/) presented how to use Event Storming to draft a functional architecture. In [the previous post](/how-to-use-event-storming-and-ddd-for-evolutionary-architecture/), I suggested to realize this target vision incrementally. This means starting with something simpler.

Let's illustrate this. It’s not because the vision has [open host services APIs](https://www.oreilly.com/library/view/domain-driven-design-distilled/9780134593449/DDDD_04_07.html) that we should create services right from day-1. This brings up a new challenge though. How to make sure we don’t fall in a performance [NFR (Non Functional Requirement)](https://en.wikipedia.org/wiki/Non-functional_requirement) dead-end down the road? This kind of late discovery is very difficult to deal with. They often lead to crunch hours and non-[sustainable pace](https://www.agilealliance.org/glossary/sustainable/).

> 💡 Late discoveries of NFR problems leads to crunch hours and non-sustainable pace.

In this post, I’ll present how we can check our Event Storming design against expected NFRs. 

This is the 15th post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). To get the most out of this post, it's a good idea to start reading from [the beginning](/misadventures-with-big-design-up-front/).

![Drawing of an Event Storming design board with hexagons, representing (micro)services drawn on. Event Storming and DDD are great to collaboratively identify service boundaries and prototype NFRs]({{site.url}}/imgs/2019-02-15-using-event-storming-and-ddd-to-prototype-microservices-and-nfrs-1/event-storming-microservices.jpeg)

## An activity to check performance NFRs

This activity can happen right after the Event Storming, with the full audience. But you can also do it the day after, with a smaller group of volunteers.

Ask the audience for 3 performance critical use cases. For every use case, do the following:

* 1. Ask someone to explain the use case
* 2. Ask the audience to estimate the expected user performance requirements
* 3. Walk the use case through the events on the board.

![Drawing of someone storytelling through the Event Storming board. Walking through the domain events is a great way to grasp what kind of messages will be exchanged between target (micro)services]({{site.url}}/imgs/2019-02-15-using-event-storming-and-ddd-to-prototype-microservices-and-nfrs-1/storytelling.jpg)

* 4. The use case will go through some open host service APIs of the draft architecture. Discuss and estimate how the end user performance will translate through each. For example, you’d want to have an idea of the number, size and frequencies of messages.
* 5. Discuss whether its going to be ok or not:
    *   If you reach a consensus that it’s going to be ok, then it seems you are safe enough with this design 
    *   If you quickly conclude that it’s not going to be ok, you’ll have to rethink your design and try to find something else
    *   Finally, there is the situation where you cannot reach a consensus or where the consensus is that you don’t know. It's a good time to schedule a prototype.

### Build prototypes to get your answers

![Wireframe prototype of a Lamborghini car. Event Storming and DDD can be used to define software prototypes to answer NFR risks.]({{site.url}}/imgs/2019-02-15-using-event-storming-and-ddd-to-prototype-microservices-and-nfrs-1/prototype.jpg)

Prototypes are about getting answers to specific questions with the minimal efforts. From the previous activity, we should have a clear question in mind. Let’s suppose the question is: “Can we handle N messages, of size S, at frequency F?”. We don’t need the full system to test this, just design a fake experiment, with fake messages. We don’t need to test every message passing framework out there to find the best one either. As long as we find one that fits the bill, we're safe. We can defer the real choice.

The exact details of the prototype itself do not have to specified during the workshop. The only thing that needs to come out of the workshop is the question we need to answer. Let's use a pink (problem) post-it for that. (Cf [post about agenda of Event Storming](/detailed-agenda-of-a-ddd-big-picture-event-storming-part-1/#) for description of pink problem post-its.)

### Materialize processes and services

We already had a lot of thoughts about relationships, APIs, messaging and NFRs. It’s only a small step further to draft processes and services boundaries.

Here is a 2 steps activity to do this:

#### 1. Present service principles

Here is a short list that you might want to adapt according to your context


[![Sketchnote of services principles drawn on a nut. There are inside principles (High cohesion, Loose coupling & Encapsulation), as well as outside principles (Limit dependencies, Limit frequency and size of messages, Strive for coarse grain interfaces & Think of the protocols / synchronicity of your messages). Displaying this poster during the Event Storming workshop helps participants to draft service boundaries]({{site.url}}/imgs/2019-02-15-using-event-storming-and-ddd-to-prototype-microservices-and-nfrs-1/service-nut-principles-small.jpeg)]({{site.url}}/imgs/2019-02-15-using-event-storming-and-ddd-to-prototype-microservices-and-nfrs-1/service-nut-principles.jpeg)

We can notice that functional areas typically fulfill the inside principles by design. That’s why they make pretty good service candidates.

To learn more about services principles, check this [talk about evolutionary architecture.](https://www.youtube.com/watch?v=xLHeEw0ycQg) (By [Ionut Balosin](https://twitter.com/ionutbalosin) and my friend [Xavier René-Corail](https://twitter.com/xcorail?lang=en)[)](https://twitter.com/ionutbalosin)

<iframe width="560" height="315" src="https://www.youtube.com/embed/xLHeEw0ycQg" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

#### 2. Materialize your processes

To materialize your services or processes on the board, use wool, as you did for functional areas. (cf post [Identify Functional Areas](https://docs.google.com/document/d/1gaxZ0a3Cd1mEpZJueJvUhHCHl2mUvMTtvlGIc39SXNk/edit#heading=h.j69e4b2pek7v) ) It's better to use wool of a different color.

> 💡 Use wool, scissors and scotch tape to materialize services on your Event Storming board.

#### 3. Optionally, draw an architecture schema

When done, you can draw your service architecture on a sheet of paper. It’s better to stick to back-of-a-napkin style diagrams. It’s only a draft, and you’ll need to update it throughout the life of the project. Even so, once we’ve striped out all the post-its, the diagram gets pretty simple. It becomes a lot easier to share and view on a screen. (I should write a post about how to curate knowledge out of an Event Storming workshop)

[![Drawing of the architecture, with foreseen (micro)services drawn from the board after an Event Storming session]({{site.url}}/imgs/2019-02-15-using-event-storming-and-ddd-to-prototype-microservices-and-nfrs-1/napkin-services-small.jpg)]({{site.url}}/imgs/2019-02-15-using-event-storming-and-ddd-to-prototype-microservices-and-nfrs-1/napkin-services-map.jpg)

## To Be Continued

I'm not done yet with this activity. This post was a walkthrough of this Event Storming follow-up activity. [The next post](http://eepurl.com/dxKE95) will detail outcomes and tips about how to make this activity successful.

[Continue Reading when it's ready!](http://eepurl.com/dxKE95)

This was the 15th post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). The next post will be about a follow-up workshop to get insights whether to rewrite or refactor.
