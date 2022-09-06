---
layout: single-mailing-list
title: "Misadventures with Big Design Up Front"
date: 2018-11-22
comments: true
categories:
 - architecture
 - squash-BDUF-with-event-storming-series
description: "Here is the story of my own love and disillusionment for Big Design Up Front. BDUF has many problems that I learned the hard way. We should avoid BDUF most of the time. This is the first post in a series explaining how Event Storming and incremental design form a better alternative to BDUF."
header:
   teaser: /imgs/2018-11-19-misadventures-with-big-design-up-front/jenga-tower-teaser.jpeg
   og_image: /imgs/2018-11-19-misadventures-with-big-design-up-front/jenga-tower-og.jpeg
canonical_url: https://www.eventstormingjournal.com/big%20picture/why-would-you-want-to-run-a-big-picture-event-storming/
---
_Although a nice idea in theory, [Big Design Up Front](https://en.wikipedia.org/wiki/Big_Design_Up_Front) has many problems that I learned the hard way. We should avoid BDUF most of the time._

ℹ️ _**NOTE: An [updated version of this post](https://www.eventstormingjournal.com/big%20picture/why-would-you-want-to-run-a-big-picture-event-storming/) has been published on the Event Storming Journal blog**_

At school, I was taught  that Big Design Up Front is the only way to go. We even used to write all pseudo code on paper before touching a computer at all!

> 💡 At school, we were taught to write all pseudo code on paper before touching the keyboard at all!

## Old style cowboy design

I entered my first job with a heavy bias towards doing design first. Real-life work surprised me a lot! My colleagues would design on the fly, at the same time they implemented features. Our best design diagrams were rough design sketch on paper napkins. This was almost 20 years ago and the tooling was not that of today. We were learning [Version Control](https://en.wikipedia.org/wiki/Version_control), we would not [unit test](https://en.wikipedia.org/wiki/Unit_testing), and a [nightly build](https://en.wikipedia.org/wiki/Daily_build) remained a dream! As a consequence, late design changes were a mess and resulted in an awful lot of regressions.

![Drawing of a Jenga tower about to fall. Without Big Design Up Front nor incremental design techniques, software is a catastrophe waiting to happen]({{site.url}}/imgs/2018-11-19-misadventures-with-big-design-up-front/jenga-tower.jpeg)

The general advice around the place was:

> [If it ain't broken, don't fix it!](https://idioms.thefreedictionary.com/if+it%27s+not+broke%2C+don%27t+fix+it)

I was far from pleased with this technique, and I decided to try something against it. I naively thought that applying what I learned in school would fix the problem. I started to spend more time designing what I wanted to do before "touching the computer". For more or less a year, I tried. It seemed to work fine at first. Unfortunately, troubles came when I was to add a new feature on top of this initial design. I'd built some flexibility in, but no matter what, never where later needed. I was spending more time to design up front, and still had to hack last minute changes to meet deadlines... This was definitely not a [sustainable pace](https://www.agilealliance.org/glossary/sustainable/#q=~(infinite~false~filters~(postType~(~'page~'post~'aa_book~'aa_event_session~'aa_experience_report~'aa_glossary~'aa_research_paper~'aa_video)~tags~(~'sustainable*20pace))~searchTerm~'~sort~false~sortDirection~'asc~page~1))!

In fact, I'd spent a year re-discovering the cons of Big Design Up Front.

## Problems of Big Design Up Front

![Photos of a desk littered with detailed architecture plans. Big Design Up Front is a lot of speculative work]({{site.url}}/imgs/2018-11-19-misadventures-with-big-design-up-front/architecture-plans.jpg)

These problems have not disappeared with time. A few months ago, some colleagues asked me to animate architecture meetings. I discovered the same issues again, only worse. This time, it's not me alone who needs to come with a design, but a group of people who need to agree on architecture. It's no surprises the project has been struggling to get started.

Here are the typical problems of Big Design Up Front

*   Usually involves painful meetings and plenty of document reading
*   It can be a long process, especially if many people contribute
*   It can lead to a bad [design by committee](https://en.wikipedia.org/wiki/Design_by_committee). People end up capitulating to a proposition to stop this painful process
*   It always misses things. It's almost impossible to think of everything on paper. Remember, Powerpoints don't crash!
*   It creates over-engineering. We tend to add future-proof flexibility in the design. We discover that it's never used when it's been in the code for years.
*   To make things worse, it sometimes takes so much time that it's deprecated from the beginning.
*   Finally, it's very difficult to get a collective buy-in for it. It's impossible to get everyone in these BDUF meetings if we want to agree on anything. As a result, the only solution is to mandate the architecture in a top-down manner

You've guessed I'm not a big fan of Big Design Up Front...

> 💡 People capitulate to a design to end this painful BDUF process.

## Alternatives to Big Design Up Front

In [next post](/how-to-squash-big-design-up-front-in-a-few-days-with-event-storming/), I'll continue my story and explain how I switched to [incremental design](https://www.jamesshore.com/Agile-Book/incremental_design.html). I'll detail how it fixes almost all of the issues of Big Design Up Front.

Unfortunately, there is [no silver bullet](https://en.wikipedia.org/wiki/No_Silver_Bullet), and incremental design has its own weak points. The lack of a shared vision is the main one. Finally I'll retrace how I discovered [Event Storming](https://www.eventstorming.com/), and how it can be used to draft a shared design vision in just a few days.

## To be continued

This was the first post of a [series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). Here are the topics I intend to go through in this series:

1.   [Misadventures with Big Design Up Front](/misadventures-with-big-design-up-front/)
1.   [How I learned to do Big Design Up Front in 2 days of Event Storming](/how-to-squash-big-design-up-front-in-a-few-days-with-event-storming/)
1.   [How to prepare a DDD Big Picture Event Storming workshop](/how-to-prepare-a-ddd-big-picture-event-storming-workshop/)
1.   [How to prepare the room for a DDD Big Picture Event Storming](/how-to-prepare-the-room-for-a-ddd-big-picture-event-storming/)
1.   [Detailed Agenda of a DDD Big Picture Event Storming - Part 1](/detailed-agenda-of-a-ddd-big-picture-event-storming-part-1/)
1.   [Detailed Agenda of a DDD Big Picture Event Storming - Part 2](/detailed-agenda-of-a-ddd-big-picture-event-storming-part-2/)
1.   [Detailed Agenda of a DDD Big Picture Event Storming - Part 3](/detailed-agenda-of-a-ddd-big-picture-event-storming-part-3/)
1.   [4 tips that will make your DDD Big Picture Event Storming successful](/4-tips-that-will-make-your-ddd-big-picture-event-storming-successful/)
1.   [Drafting a Functional Architecture Vision with Event Storming and DDD](/drafting-a-functional-architecture-vision-with-ddd-event-storming-part-1/)
1.   [Build or Buy Software? Identify your core bounded contexts with Event Storming and DDD](/build-or-buy-software-identify-your-core-functional-areas-with-event-storming-and-ddd/)
1.   [Ensure core contexts have the upper hand with Event Storming and DDD](/check-that-core-areas-have-the-upper-hand-with-event-storming-and-ddd/)
1.   [Focus on the Core with Event Storming and DDD Domain Relationships - 1](/focus-on-core-domain-with-relationships-from-ddd-and-event-storming/)
1.   [Focus on the Core with Event Storming and DDD Domain Relationships - 2](/focus-on-core-domain-with-relationships-from-ddd-and-event-storming-part-2/)
1.   [How to use Event Storming and DDD for Evolutionary Architecture](/how-to-use-event-storming-and-ddd-for-evolutionary-architecture/)
1.   [Using Event Storming and DDD to prototype (micro)services and NFRs - 1](/using-event-storming-and-ddd-to-prototype-microservices-and-nfrs-1/)
1.   [Using Event Storming and DDD to prototype (micro)services and NFRs - 2](/using-event-storming-and-ddd-to-prototype-microservices-and-nfrs-2/)
1.   [Rewrite vs Refactor? Get Insights from Event Storming and DDD](/rewrite-vs-refactor-get-insights-from-event-storming-and-ddd/)
1.   [Feature Teams vs Component Teams? Decide with Event Storming and DDD](/feature-teams-vs-component-teams-decide-with-event-storming-and-ddd/)
1.   [How to max out DDD Big Picture Event Storming with other Workshops](/how-to-max-out-ddd-big-picture-event-storming-with-other-workshops/)

[Continue Reading...](/how-to-squash-big-design-up-front-in-a-few-days-with-event-storming/)

_Thanks to [Thomas](https://twitter.com/tpierrain?lang=en) and [Xavier](https://twitter.com/xcorail?lang=en) for reviewing this post_
