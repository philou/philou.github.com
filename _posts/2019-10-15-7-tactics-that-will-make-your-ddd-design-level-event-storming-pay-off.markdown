---
layout: single-mailing-list
title: "7 tactics that will make your DDD Design-Level Event Storming pay-off"
date: 2019-11-7
comments: true
categories:
 - event storming
 - architecture
 - ddd
 - example mapping
 - how-to-run-a-design-level-event-storming-series
description: "Running a DDD Design-Level Event Storming is easy. Running a great one is hard! This post is here to help you. It contains facilitation tricks to maximize the return on invested time. It also details workshop-closing activities to decide what to do next."
header:
   teaser: /imgs/2019-10-15-7-tactics-that-will-make-your-ddd-design-level-event-storming-pay-off/7-design-level-event-storming-tactics-teaser.jpeg
   og_image: /imgs/2019-10-15-7-tactics-that-will-make-your-ddd-design-level-event-storming-pay-off/7-design-level-event-storming-tactics-og.jpeg
---
_What should we do after a [DDD](https://en.wikipedia.org/wiki/Domain-driven_design) Design-Level Event Storming? How do we capture shared knowledge? How do we make the workshop more effective? Find answers here!_

ℹ️ _**NOTE: Part of this post has been [republished and updated](https://www.eventstormingjournal.com/software%20design/design-level-event-storming-in-3-minutes/) on the Event Storming Journal blog**_

![Drawing of a stack of 7 cards written Event Storming on the back.]({{site.url}}/imgs/2019-10-15-7-tactics-that-will-make-your-ddd-design-level-event-storming-pay-off/7-design-level-event-storming-tactics.jpeg)

This post is the fourth, and last, in [a series about how to build event-based systems with Design-Level Event Storming and DDD]({{site.url}}/categories/#how-to-run-a-design-level-event-storming-series). If you haven't yet, start by [the beginning]({{site.url}}/why-should-we-use-design-level-event-storming-for-ddd/).

## What can we do after?

Design-Level Event Storming creates enough shared understanding to open up many opportunities.

### Tactic 1: Highlight the Core

A first thing you might do, even before you leave the workshop, is to shrink the core. DDD calls this a [Highlighted Core](http://ddd.fed.wiki.org/view/highlighted-core). The smaller the core subdomain, the clearer priorities are.

[Aggregates](https://martinfowler.com/bliki/DDD_Aggregate.html) already group events together. **Aggregates make it easy to draw subdomains.**

![Drawing of 2 subdomains drawn around aggregates on a Design-Level Event Storming board]({{site.url}}/imgs/2019-10-15-7-tactics-that-will-make-your-ddd-design-level-event-storming-pay-off/subdomains-design-level-event-storming.jpeg)

### Tactic 2: Curate views

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">Depends on the decisions, and on the context. Usually putting decisions on a flip chart and sharing pictures might do the trick.</p>&mdash; Alberto Brandolini (@ziobrando) <a href="https://twitter.com/ziobrando/status/1106599987625058304?ref_src=twsrc%5Etfw">March 15, 2019</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

As [Alberto](https://twitter.com/ziobrando) said, the real outcome is in the developers' heads. You might extend their memories a bit by taking a picture of the design and sticking the board in the team's space. Yet, don't expect these memories to last for months.

There is a better way. You can also capture focused views. For example: collect domain definitions, problems, and decisions through specific documents. Check my post [How to Capture the Outputs of an Event Storming Workshop]({{site.url}}/how-to-capture-the-outputs-of-an-event-storming-workshop/) for all the details.

### Tactic 3: Run Example mapping

All the business rules are a significant first step to defining precise user-stories. It's an opportunity to do [Example Mapping](https://cucumber.io/blog/example-mapping-introduction/) workshops and detail these stories further.

### Tactic 4: Build it!

> 💡 The best way to get more feedback after a Design-Level Event Storming is to give try to build the design!

Finally, the best way to get more feedback is to give all this a try! If you are starting, building a [walking skeleton](https://codeclimate.com/blog/kickstart-your-next-project-with-a-walking-skeleton/) creates the most learning. [Event Storming is pretty useful at scope-selection]({{site.url}}/how-to-fight-priority-paralysis-with-event-storming-and-ddd/).

![Black and white illustration of a walking skeleton (or zombie to be more precise). Design-Level Event Storming is the perfect workshop to agree on the scope of a walking skeleton]({{site.url}}/imgs/2019-10-15-7-tactics-that-will-make-your-ddd-design-level-event-storming-pay-off/walking-skeleton.jpg)

If you already have a running system, the question might be a bit more complicated. Before people leave the workshop, have a discussion to agree on the next priorities. You might need to mix learning experiments with money-generating features.

## Facilitation tricks

I've now run the Design-Level Event Storming quite a few times, and I've collected some best practices.

Many general Event Storming best practices also work here. Read [4 tips that will make your DDD Big Picture Event Storming successful]({{site.url}}/4-tips-that-will-make-your-ddd-big-picture-event-storming-successful/) for a few. (NOTE: Since then, I've written [21 More Event Storming Tips]({{site.url}}/21-more-event-storming-tips-part-1-understanding-and-rhythm/))

In any case, Design-Level Event Storming also has its specificities.

### Tactic 5: [Don't talk about DDD]({{site.url}}/first-rule-of-ddd-is-lets-not-talk-about-ddd/)

First, it goes deeper into the DDD folklore. That might be too big a step for people who don't know DDD. I'd first go through the Big Picture Event Storming. It lets people discover DDD and appreciate all the benefits it has to offer. To say it another way

1.  [Use Big Picture Event Storming to sell DDD]({{site.url}}/how-to-use-event-storming-to-introduce-domain-driven-design/)
2.  Only later dive deeper with Design-Level Event Storming

### Tactic 6: Make the Design Space Really Infinite

> 💡 You'll need even more infinite design space for Design-Level Event Storming 😉

Second, post-its are great because we can move them around many times. As you might have noticed on the agenda, we are going to insert new post-its between existing ones very often. Every time we do this, we'll need a bit more design place. That's when 'Infinite Design Space' takes all its meaning. As the facilitator, you need to be proactive:

*   Add more design space
*   Move the post-its to keep the chronology or design clear

[Shared understanding relies on common metaphors](https://www.goodreads.com/book/show/34459.Metaphors_We_Live_By). If post-its get aligned vertically instead of horizontally, add space NOW!

{% assign figure_path="/imgs/2019-10-15-7-tactics-that-will-make-your-ddd-design-level-event-storming-pay-off/to-infinity-and-beyond.jpg" | absolute_url %}

{% assign figure_alt="A photo of Toy Story's Buzz Lightyear" %}

{% capture figure_caption %}
To Infinity and Beyond! By [Michele M. F.](https://www.flickr.com/photos/e-coli/), under [Attribution-ShareAlike 2.0 Generic (CC BY-SA 2.0)](https://creativecommons.org/licenses/by-sa/2.0/), original on [Flickr](https://www.flickr.com/photos/e-coli/10923806663){% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

### Tactic 7: Optimize the time of Domain and UX experts

Many steps are pretty straightforward, almost mechanic. There are the pre-requisites to the critical steps: business rules and UX exploration.

These mechanic steps don't need the experts. Also, we don't want to waste their precious time! The simplest thing to do is to go fast on these steps. Explain what to do and ask everyone to take part.

Finally, exploring the UX of all screens and Business Rules takes some time. If all the group is waiting for 2 specific people to discuss all the topics, the workshop will take ages! Event Storming makes it easy to work in parallel! UX experts can work on UX, while domain experts discuss business rules. With enough experts, you might even have many groups working on UX or business rules at the same time!

## Give it a try!

![Photo of a laptop screen with post-its written "Do It Now" stuck on it. Design-Level Event Storming might seem daunting at first, but the best way is to get started.]({{site.url}}/imgs/2019-10-15-7-tactics-that-will-make-your-ddd-design-level-event-storming-pay-off/do-it-now.jpg)

Design-Level Event-Storming is the most effective way to design an event-based DDD system

*   It's collaborative.
*   It will get you pretty close to design in code.
*   It will speed-up the building or improvement of your system.

Also, running a Design-Level Event Storming is pretty straightforward.

It's more structured than the Big Picture variant. If you have already done the later, diving in the Design-Level will be easy. If you haven't yet, start with [Big-Picture Event Storming!]({{site.url}}/detailed-agenda-of-a-ddd-big-picture-event-storming-part-1/)

Are you already building an event-sourced system? In this case, mapping it with Event Storming will be simple too!

Whatever your situation, give it a try!
