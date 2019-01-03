---
layout: single
title: "Detailed Agenda of a DDD Big Picture Event Storming - Part 1"
date: 2018-12-20
comments: true
categories:
 - architecture
 - squash-BDUF-with-event-storming-series
 - event storming
description: "Kick starting a project with a DDD Big Picture Event Storming can be chaotic. Here is a detailed agenda to set it on the right track. This first part details room preparation, group energizer, and a sample briefing of instructions to give to attendees."
header:
   teaser: /imgs/2018-12-08-detailed-agenda-of-a-ddd-big-picture-event-storming-part-1/event-storming-beginning-teaser.jpeg
   og_image: /imgs/2018-12-08-detailed-agenda-of-a-ddd-big-picture-event-storming-part-1/event-storming-beginning-og.jpeg
---
_Kick starting a project with a [DDD](https://en.wikipedia.org/wiki/Domain-driven_design) Big Picture [Event Storming](https://www.eventstorming.com/) can be chaotic. Here is a detailed agenda and a sample briefing to set it on the right track._

This is the 5th post in a [series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). If you want to understand the full story, I recommend you to start reading from [the beginning](/misadventures-with-big-design-up-front/).

In the 2 previous posts ([3rd](/how-to-prepare-a-ddd-big-picture-event-storming-workshop/) and [4th](/how-to-prepare-the-room-for-a-ddd-big-picture-event-storming/)), I went over all the preparation to do before the workshop. Let's move into the real thing. Now that we have everything ready, how do we actually run this workshop?

![Drawing of people discussing in front of an empty design Space. This is what looks like a DDD Event Storming session before it starts.]({{site.url}}/imgs/2018-12-08-detailed-agenda-of-a-ddd-big-picture-event-storming-part-1/event-storming-beginning.jpeg)

## 1. Prepare the room

[![Photo of the room setup before the DDD Event Storming session starts.]({{site.url}}/imgs/2018-12-08-detailed-agenda-of-a-ddd-big-picture-event-storming-part-1/room-small.jpg)]({{site.url}}/imgs/2018-12-08-detailed-agenda-of-a-ddd-big-picture-event-storming-part-1/room.jpg)

I learned from experience that I to come in the room around 30 minutes in advance to prepare it for the workshop. [Previous post](/how-to-prepare-the-room-for-a-ddd-big-picture-event-storming/) has all the room preparation details. Roughly, this includes:

*   Removing tables and chairs
*   Sticking the design-space to the wall
*   Sticking the Visual Agenda to the wall
*   Laying down the rest of the material somewhere

## 2. Energizer

{% assign figure_path="/imgs/2018-12-08-detailed-agenda-of-a-ddd-big-picture-event-storming-part-1/collaborative-face-drawing.jpg" | absolute_url %}

{% assign figure_alt="Photo of participants during an energizer. Energizers are important to set the tone before a DDD Event Storming" %}

{% capture figure_caption %}
Participants walking around during a [Collaborative Face Drawing energizer](http://www.funretrospectives.com/collaborative-face-drawing/). Picture from [funretrospectives.com](http://www.funretrospectives.com/)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

As I've already said, DDD Event Storming is a different kind of architecture meeting. It won't work if people don't get out of their traditional way. Running a physical energizer with everyone is great for that.

It's also very useful to raise the energy level. Event Storming can be pretty intense and tiring, so they'll need all the energy they can. You can find many great physical energizers at [funretrospectives.com](http://www.funretrospectives.com/category/energizer/). I've had success with many of them.

## 3. Briefing and Agenda

Now is the time to present the workshop. Start with the goal, scope and use cases. It's the good moment to explain each step we will go through, and how they will help us to reach our end goal. It's also a good time to introduce some general conventions. Here is a typical brief I could say.

### General goal

> Remember that DDD Event Storming is a way to shrink months of [Big Design Up Front](https://en.wikipedia.org/wiki/Big_Design_Up_Front) into a few days! It's going to be intense, but we'll do a lot in a very short time.
>
> Event Storming might be chaotic. It might be rocky and go in unexpected ways at times, we might need to adjust. 💡 **At the end of the day though, the success is all up to how much you want it!**

### Goal

> The main outcome of this workshop is the shared knowledge between domain experts and developers. We'll later build on this shared knowledge to get <your goal>.
>
> We must stick to domain language if we want to keep this collaboration alive. 💡 **I've seen Event Storming sessions drifting into technical discussions, this leads nowhere.**

### Scope and use cases

> Today, we'll work in the scope of <[your scope](/how-to-prepare-a-ddd-big-picture-event-storming-workshop/)>. To make things a bit more concrete, we'll start with these use cases in mind <[list your use cases](/how-to-prepare-a-ddd-big-picture-event-storming-workshop/)>. We'll be modeling around domain events such as <[your 1st event](/how-to-prepare-a-ddd-big-picture-event-storming-workshop/)>.

### Domain Events

![Drawing of a Domain Event orange Post-It written "A trade was booked". Domain Events are the main building blocks of DDD Event Storming]({{site.url}}/imgs/2018-12-08-detailed-agenda-of-a-ddd-big-picture-event-storming-part-1/domain-event.png)

> A quick brief about post-it colors.
>
> Orange post-its are for [Domain Events](https://martinfowler.com/eaaDev/DomainEvent.html). Here is an example <[You sample event](/how-to-prepare-a-ddd-big-picture-event-storming-workshop/)>. Here are a few points to help you understand what domain events are:
>
> - You could read about them in domain books
>
> - Domain experts understand them
>
> - Writing them in past tense is a trick to create meaningful events. They are not actions of someone or something (not "The trader books the deal"). Even though some events will result from actions, we are not interested in actions yet.
>
> - They are not technical, and should not be specific to our system's implementation

### Domain Definitions (aka [Ubiquitous Language](https://martinfowler.com/bliki/UbiquitousLanguage.html))

![Drawing of a Domain Definition Yellow Post-It written "Counterparty...". DDD Event Storming is great at building up the domain vocabulary]({{site.url}}/imgs/2018-12-08-detailed-agenda-of-a-ddd-big-picture-event-storming-part-1/domain-definition.png)

> Whenever we come across or agree on a domain word, feel free to write a definition for it on a large yellow post-it. This is a way to build up a shared domain vocabulary. This is very helpful to improve the communication between all of us. This in turn improves how we work in many different aspects (ex: when choosing what to refactor).

### Problems

![Drawing of a Problem purple Post-It written "A trade was booked". Many problems and questions usually come up during a DDD Event Storming workshop]({{site.url}}/imgs/2018-12-08-detailed-agenda-of-a-ddd-big-picture-event-storming-part-1/problem.png)

> Likewise, we use purple post-its to park "problems". Whenever we encounter:
>
> * a question we cannot answer
> * something that does not seem right
> * or any problem we should look into
> 
> Record it on a purple post-it.

### [Sustainable pace](http://www.sustainablepace.net/what-is-sustainable-pace)

> Finally, to keep the pace sustainable, we'll take a 5 minutes break every 50 minutes.

Once this general speech is over, I usually quickly present every steps of the agenda.

## To be continued

This only covers the first half of the workshop. In [next post](/detailed-agenda-of-a-ddd-big-picture-event-storming-part-2/), we'll go over the following steps.

This was the 5th post in a [series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series).
