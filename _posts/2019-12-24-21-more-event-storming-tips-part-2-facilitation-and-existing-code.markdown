---
layout: single-mailing-list
title: "21 More Event Storming Tips - Part 2 - Facilitation and Existing Code"
date: 2020-01-16
comments: true
categories:
 - event storming
 - ddd
 - refactoring
 - more-event-storming-tips-series
description: "Here are 7 more Event Storming tips! 4 facilitation tips to make sure attendees want more Event Storming. 3 tips about how to adapt Event Storming to existing code: how to twist the agenda, but also how to deal with developers’ stress!"
header:
   teaser: /imgs/2019-12-24-21-more-event-storming-tips-part-2-facilitation-and-existing-code/more-event-storming-tips-facilitation-and-existing-code-teaser.jpg
   og_image: /imgs/2019-12-24-21-more-event-storming-tips-part-2-facilitation-and-existing-code/more-event-storming-tips-facilitation-and-existing-code-og.jpg
---
_More [Event Storming](https://en.wikipedia.org/wiki/Event_storming) tips! 4 tips to delight attendees with fantastic facilitation. 3 tips about animating an Event Storming when there is existing code._

![Drawing of Event Storming Facilitation and Mr Legacy (Code) with the writing 'More Event Storming Tips' above]({{site.url}}/imgs/2019-12-24-21-more-event-storming-tips-part-2-facilitation-and-existing-code/more-event-storming-tips-facilitation-and-existing-code.jpg)

This was the second of a [3 posts series compiling Event Storming best practices]({{site.url}}/categories#more-event-storming-tips-series). The previous post contained tips about understanding and rhythm. If you haven't you might start by [the beginning]({{site.url}}/21-more-event-storming-tips-part-1-understanding-and-rhythm/)!

## Facilitation

[Event Storming facilitation is not rocket science]({{site.url}}/detailed-agenda-of-a-ddd-big-picture-event-storming-part-1/). With a bit of practice, anyone can do it. Yet, lousy facilitation can damage your Event Storming initiative. Here are a few tricks that will make facilitation easier.

### 10. If things are slow to start

The workshop can be slow to start. People can get lost in the chaotic nature of Event Storming.

For example, people discuss in small groups instead of sticking domain events.

Go and discuss it with people or groups. Make sure they understood the instructions. Kindly ask them to stick events as soon as possible. Also, notify them that we'll be doing a first event review in 10 minutes.

### 11. If there is a single discussion bottleneck

Sometimes things are slow because all people are spectators of a single discussion.


![Schema of a bottleneck road-sign. Having a discussion bottleneck can really slow down the workshop. Here is an Event Storming tip to speed this up.]({{site.url}}/imgs/2019-12-24-21-more-event-storming-tips-part-2-facilitation-and-existing-code/bottleneck.jpg)

It can be because only one person knows some crucial information. If this is the case, then we have no choice but to wait.

Other times though, it happens with no particular reason. Suggest to split the group in 2 to work on 2 halves of the board should speed up the process.

It involves merging and synchronizing at the end, but it should still be faster.

### 12. Post-it twist

Here's one from [Alberto Brandolini](https://twitter.com/ziobrando). Post-its, domain events, in particular, are usually not top-quality from the beginning. People need a bit of time to distinguish an event from a command.

We cannot harass them to rewrite their post-its.

Here is Alberto's trick: whenever you notice a 'non-standard' post-it, flip it 45º. When people ask why it is flipped, repeat event-writing best practices. You can also suggest a rewrite for the faulty one. With time, more and more people will 'get' what a domain event is. The quality of what's on the board will improve by itself.

### 13. Explicit decisions

Here's another one from Alberto:

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Depends on the decisions, and on the context. Usually putting decisions on a flip chart and sharing pictures might do the trick.</p>&mdash; Alberto Brandolini (@ziobrando) <a href="https://twitter.com/ziobrando/status/1106599987625058304?ref_src=twsrc%5Etfw">March 15, 2019</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

You'll make many decisions during the workshop. Given the large audience, some people will 'miss' some decisions.

Indeed, [making these decisions explicit on a dedicated side-board works best]({{site.url}}/how-to-capture-the-outputs-of-an-event-storming-workshop/). At the end of the workshop, you can go through this board and:

*   take a photo
*   save it somewhere
*   or share it with a broader audience

![Drawing of a flip-chart titled 'Decisions' where we stick post-its for decisions made during the Event Storming.]({{site.url}}/imgs/2019-12-24-21-more-event-storming-tips-part-2-facilitation-and-existing-code/decision-flipchart.jpeg)

## Dealing with existing code

Event Storming works like a charm on greenfield projects. Though it also brings tremendous value to existing projects. Let's see a few best practices when some code already exists.

### 14. Start with 30 minutes brief

Starting with a 30 minutes brief gives everyone an idea of what already exists. This brief can go over aspects of business, domain, architecture, and target scope.

Event Storming would still work without this briefing. People would talk during the workshop, and eventually reach the same knowledge. We just observed it was more efficient to state what we already know.

### 15. Adapt the schedule even more!

The typical agenda of Event Storming fits new products entirely.

Here is what changes when you've already written some code. 

*   Some areas will already be clear to everyone
*   Unlike other parts of the system, about which people will have contradicting views.

I already said it's a good practice to use breaks to adapt the schedule. When dealing with existing code, it's not only best practice, it's crucial! Use pauses to discuss with critical people, and agree on where to dig next.

### 16. Make stress explicit

One of the first Big-Picture Event-Storming I did was with a team working on a legacy system. The developers wanted to do some refactoring. They needed a target architecture to guide them.

As we went through the workshop, I noticed something: stress from the developers. I had not expected this, but Alberto had predicted it. He mentions this in the [Legacy Code Rocks podcast](https://www.legacycode.rocks/podcast-1/episode/27397029/event-storming-with-alberto-brandolini) and even calls it fear.

![Picture of a factory running by night. Discussing big changes to the existing, and running, system can be stressful for developers. A good Event Storming tip is to make all the stress points explicit.]({{site.url}}/imgs/2019-12-24-21-more-event-storming-tips-part-2-facilitation-and-existing-code/existing-factory.jpg)

The legacy system had not been built with [DDD](https://en.wikipedia.org/wiki/Domain-driven_design) in mind. It looked very different from the system we were designing with Event Storming. The more concrete our design became, the more the developers anguished. I could almost hear them thinking:

> How the heck are we going to go from here to there⁉️

Trying to mute this stress does not work. People will stop cooperating. The best thing to do is to acknowledge it.

One option is to say that we will deal with the refactoring path in a later activity or workshop.

Another option is to have a refactoring-challenges side-board. Developers can stick what they foresee there. Explicit and park their stress should help them to remain in a positive mood.

## More tips in next post

This was the second of a [3 posts series compiling Event Storming best practices]({{site.url}}/categories#more-event-storming-tips-series). [Next post]({{site.url}}/21-more-event-storming-tips-part-3-anti-and-meta-patterns/) will contain anti and meta patterns.

[Continue reading...]({{site.url}}/21-more-event-storming-tips-part-3-anti-and-meta-patterns/)
