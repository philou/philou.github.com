---
layout: single
title: "Using Event Storming and DDD to prototype (micro)services and NFRs - 2"
date: 2019-03-14
comments: true
categories:
 - architecture
 - squash-BDUF-with-event-storming-series
 - event storming
description: "Previous post was about a workshop activity to use Event Storming and DDD to draft services boundaries and define NFR prototypes. In this post sequel, we'll go over the outcomes, some animation tips, and finally, we'll see that microservices are no silver bullet and will look at a few alternatives."
header:
   teaser: /imgs/2019-02-15-using-event-storming-and-ddd-to-prototype-microservices-and-nfrs-2/no-silver-bullet-teaser.jpeg
   og_image: /imgs/2019-02-15-using-event-storming-and-ddd-to-prototype-microservices-and-nfrs-2/no-silver-bullet-og.jpeg
---
_With [Event Storming](https://en.wikipedia.org/wiki/Event_storming) and [DDD](https://en.wikipedia.org/wiki/Domain-driven_design), we can draft services boundaries and [NFR](https://en.wikipedia.org/wiki/Non-functional_requirement) prototypes. In this post sequel, we'll see that [microservices](https://en.wikipedia.org/wiki/Microservices) are [no silver bullet](https://en.wikipedia.org/wiki/No_Silver_Bullet)._

[The previous post](/using-event-storming-and-ddd-to-prototype-microservices-and-nfrs-1/) presented an Event Storming follow-up activity to draft service boundaries. If you haven't yet, read [this post](/using-event-storming-and-ddd-to-prototype-microservices-and-nfrs-1/) first.

This is also the 16th post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). It all started with [misadventures with Big Design Up Front](/misadventures-with-big-design-up-front/).

By itself, [the previous post](/using-event-storming-and-ddd-to-prototype-microservices-and-nfrs-1/) presented all there is to know to run the workshop activity. Before going over tips and warnings, let's first list the outcomes at this point.

![Drawing of a bullet in an interdiction roadsign, written "No Silver Bullet". Event Storming and DDD can help use to draft the boundaries of our services, but we must remember that microservices are no silver bullet]({{site.url}}/imgs/2019-02-15-using-event-storming-and-ddd-to-prototype-microservices-and-nfrs-2/no-silver-bullet.jpeg)

## Outcomes

With only 1 or 2 extra hours on top of Event Storming, we should have an idea of what our target services could be. Here are the benefits (quite like that of other Event Storming activities):

*   Collective buy-in in a target architecture. Everyone will take more coherent decisions in their day to day work. For example:
    *   When developers will refactor, they’ll all do so in the same direction of the target architecture
    *   Developers will keep code modules in line with the target services and boundaries
*   Short-term actions. The pink post-its: quick wins, show-stoppers and prototypes to reduce risks or fail fast
*   All this in less than a week. Traditional architecture discussions typically span over months. In comparison, Event Storming is a short, but focused, time investment.

> 💡 Traditional architecture discussions typically span over months. In comparison, Event Storming is a short, but focused, time investment. 

## Don’t jump into micro-services!

{% assign figure_path="/imgs/2019-02-15-using-event-storming-and-ddd-to-prototype-microservices-and-nfrs-2/paul-downey-microservice-architecture.jpg" | absolute_url %}
    
{% assign figure_alt="Sketchnote of a sample diagram describing a Microservice Architecture, drawn by Paul Downey" %}
    
{% capture figure_caption %}
Sample Microservice Architecture by [Paul Downey](https://www.flickr.com/photos/psd/), [available on Flickr](https://www.flickr.com/photos/psd/13109673843), under [Attribution 2.0 Generic (CC BY 2.0)](https://creativecommons.org/licenses/by/2.0/) License
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

A word of warning ⚠️: do not jump into [micro-services](https://en.wikipedia.org/wiki/Microservices). Even though everyone is talking about them, micro-services are no silver-bullet. They do solve tricky organization problems in large scale teams. They also bring their own set of problems:

*   They are a headache to operate
*   They tend to be more difficult to refactor 
*   Maintaining consistency across services is incredibly more difficult
*   They create the risk for technology silos

Think of alternatives before jumping in micro-services:

*   Simple modular code
*   Start more instances of your monolith, and synchronize data through your databases 
*   A few services or processes (not micro) might be all you need
*   Use the same code with different entry points. It's an easy way to reuse the same business domain logic in different processes
*   Simple Publish-Subscribe event bus might be good enough right now

For french speakers, [Arnaud Lemaire](https://twitter.com/Lilobase) gave an interesting [talk](https://www.youtube.com/watch?v=_mqn0FfZ2SY&feature=youtu.be) on the topic a [Paris DDD meetup](https://www.meetup.com/fr-FR/DDD-Paris/). 

<iframe width="560" height="315" src="https://www.youtube.com/embed/_mqn0FfZ2SY" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

As always, software a matter of tradeoffs, and there is no one size-fits-all solution. You might very well start with modular code and keep your code “micro-service ready”. The day you really need micro-services, you'll be ready to jump in!

## Tips

Here are 3 tips to make this more effective.

### Repeat

This is a general Event Storming tip. It’s good to regularly re-do the exercise to update the picture and vision. It’s faster every time a team repeats it.

### Design Level Event Storming

We could also try to do [Design-Level Event Storming](https://buildplease.com/pages/fpc-6/). Going into finer-grained design will clarify the messages exchanged between services. Here is a follow-up [series about Design-Level Event Storming]({{site.url}}/why-should-we-use-design-level-event-storming-for-ddd/).

### Evolutionary design

Use evolutionary design and architecture techniques to transform these designs into real software. [Building the target architecture up-front is a waste of time](/how-to-use-event-storming-and-ddd-for-evolutionary-architecture/). Spend some time practicing and mastering these techniques if you don’t yet do. It might be time to [start a coding dojo](/how-to-start-a-team-coding-dojo-randori-today/)!

> 💡 Start a coding dojo to transform Event Storming and DDD into evolutionary architecture and emergent design

## Just do it

Event Storming is a bit like [paper prototyping](https://en.wikipedia.org/wiki/Paper_prototyping) for software design and architecture. It makes it possible to do, in a few days of workshops, what is usually done in months of architecture and planning. Learn more about how to get started here. It's a lot easier to try than you might think.

This was the 16th post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). The [next post](/rewrite-vs-refactor-get-insights-from-event-storming-and-ddd/) will be about a follow-up workshop to get insights whether to rewrite or refactor.

[Continue Reading...](/rewrite-vs-refactor-get-insights-from-event-storming-and-ddd/)