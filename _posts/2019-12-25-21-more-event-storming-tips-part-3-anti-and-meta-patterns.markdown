---
layout: single
title: "21 More Event Storming Tips - part 3 - Anti and Meta Patterns"
date: 2020-01-23
comments: true
categories:
 - event storming
 - ddd
 - antipattern
 - remote
 - more-event-storming-tips-series
description: "Even more Event Storming tips! The first 3: “no special post-its”, “no-remote”, and “no big-design-up-front” will save you from the mistakes we did. The last 2: “community of practice” and “ask Alberto” are the recipe to learn more tips by yourself!"
header:
   teaser: /imgs/2019-12-25-21-more-event-storming-tips-part-3-anti-and-meta-patterns/more-event-storming-tips-anti-and-meta-patterns-teaser.jpg
   og_image: /imgs/2019-12-25-21-more-event-storming-tips-part-3-anti-and-meta-patterns/more-event-storming-tips-anti-and-meta-patterns-og.jpg
published: false
---
_Even more [Event Storming](https://en.wikipedia.org/wiki/Event_storming) tips! 3 will help you to avoid the mistakes we did. The last 2 are the recipe to learn more tips by yourself!_

![Drawing of a mistake and a T-shirt pattern with the writing 'More Event Storming Tips' above]({{site.url}}/imgs/2019-12-25-21-more-event-storming-tips-part-3-anti-and-meta-patterns/more-event-storming-tips-anti-and-meta-patterns.jpg)

This was the last of a [3 posts series compiling Event Storming best practices]({{site.url}}/categories#more-event-storming-tips-series). [The previous post]({{site.url}}/21-more-event-storming-tips-part-2-facilitation-and-existing-code/) contained tips about facilitation and dealing with existing code. If you haven't you might also start by [the beginning]({{site.url}}/21-more-event-storming-tips-part-1-understanding-and-rhythm/)!

## Anti-patterns

As we tried variations around Event Storming, we also learned from our mistakes. Here are a few:

### 17. Adding special post-its

Before getting Alberto's advice about logging decisions, we tried to use custom post-its. That did not work well. Event Storming already has a pretty large post-it bestiary, adding more is too much. Plus, it's almost impossible to find a post-it color that is not already used!

![Picture of a guy in front of a wall full of sticky-notes and with a large sticky on his head too! Event Storming already has a complex post-it bestiary, adding a new one is not a good idea.]({{site.url}}/imgs/2019-12-25-21-more-event-storming-tips-part-3-anti-and-meta-patterns/too-many-post-its.jpg)

When we tried this, people ignored these post-its. They made decisions but did not record them.

### 18. Remote participant

Our company is over 3 main offices: Beirut, Dublin, and Paris. With this constraint, organizing an Event Storming is often a mess. We have to bring some key people from different cities to the same office. Sometimes, we have to delay a workshop for a few weeks because a single person is missing!

I heard good feedback from remote-robots at a conference. We thought we could give it a try for Event Storming. The idea was:

1.  Pair up the remote participant with someone in the room
2.  Let the remote attendee contribute through his robot-avatar

We could not pay for a robot without being sure it would work. We tried to hack one with a moving speaker desk and a laptop... This was a disaster! The only outcome was that the poor remote-guy ended-up with a headache...

![Drawing of a dismounted robot. Our tentative to hack-up a robot avatar for a remote participant failed misearbly... We don't have a good recipe for remote participation to Event Storming workshops yet]({{site.url}}/imgs/2019-12-25-21-more-event-storming-tips-part-3-anti-and-meta-patterns/robot.jpg)

Up to now, we did not find a satisfying way to run an Event Storming with remote participants.

### 19. Big Design Up Front

Event Storming is a design activity. Like any design activity, we risk pushing it too far. I wrote that it works best as a tool to do a [Rough Design Up Front]({{site.url}}/how-to-squash-big-design-up-front-in-a-few-days-with-event-storming/).

You can always add more refinement to your design. I'm sure you could spend a full week doing detailed Design-Level Event Storming. Though that's not how it's meant to be.

You'd have better results by:

1.  Drafting just enough to get started
2.  Building something
3.  Learning from it
4.  Repeating

{% assign figure_path="/imgs/2019-10-20-sustain-collective-intelligence-with-event-storming/event-storming-iterative-process-small.jpeg" | absolute_url %}
    
{% assign figure_alt="Drawing of an infographics of the Event Storming loop: Devs meet domain experts -> Grow collective intelligence superpowers -> Make complex decisions in a short time -> Try for real -> Learn -> Devs meet domain experts -> ..." %}
    
{% capture figure_caption %}
By [Philippe Bourgau]({{site.url}}), under [CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/), [original and high resolution image]({{site.url}}/sustain-collective-intelligence-with-event-storming/)
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

## Meta

Here are 2 extra 'meta' best practices about Event Storming.

### 20. Create an Event Storming community of practice

Spreading Event Storming in a small organization is straightforward:

1.  Get everyone in
2.  Make it a success
3.  You're done!

It's a lot more complicated in large organizations. Building a [community of practice](https://en.wikipedia.org/wiki/Community_of_practice) helped us a lot.

We started ours as I animated a training about Event Storming to other people in the company. We ended this training with time for open discussions. This was the first 'community' meetup.

We then created a wiki space and a chat channel. We used them to exchange best practices and experiences around Event Storming. It's a great way to learn from each other. It's also very encouraging to hear other's success stories.

### 21. Ask Alberto!

You might have noticed that some of these best practices come from [Alberto Brandolini](https://twitter.com/ziobrando). I don't know Alberto in person, but he's kind enough to answer my naïve questions on Twitter. So I guess he would answer your questions too!

## Run your own!

Event Storming is a magic workshop that unlocks complex decision making in a short time! It can help you with:

*   [Agree on a target functional architecture]({{site.url}}/drafting-a-functional-architecture-vision-with-ddd-event-storming-part-1/)
*   [Decide what to buy or build]({{site.url}}/build-or-buy-software-identify-your-core-functional-areas-with-event-storming-and-ddd/)
*   [Decide what to rewrite or refactor]({{site.url}}/rewrite-vs-refactor-get-insights-from-event-storming-and-ddd/)
*   [Self-organize the best team structure for your architecture]({{site.url}}/feature-teams-vs-component-teams-decide-with-event-storming-and-ddd/)
*   [and a lot more]({{site.url}}/categories/#event-storming)

Running an Event Storming is rather simple once you get the hang of it. The trick is to [get started]({{site.url}}/organization-refactoring-event-storming-and-ddd-injection-part-1/)! Find a forgiving audience, and [follow the guide]({{site.url}}/misadventures-with-big-design-up-front/).

I hope these tips will help you along your Event Storming journey. Whenever you discover your own tips or anti-patterns, take a minute or so to share them with a comment!