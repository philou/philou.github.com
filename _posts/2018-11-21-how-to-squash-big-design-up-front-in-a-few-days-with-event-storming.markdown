---
layout: single
title: "How I learned to do Big Design Up Front in 2 days of Event Storming"
date: 2018-11-29
comments: true
categories:
 - architecture
 - squash-BDUF-with-event-storming-series
description: "Here is the continued story of how I dropped Big Design Up Front for Incremental Design, and how I eventually used Event Storming to supply a Rough Design Up Front. Compared to BDUF, the combination of Incremental Design and Event Storming is faster, safer and creates natural buy-in. 
"
header:
   teaser: /imgs/2018-11-21-how-to-squash-big-design-up-front-in-a-few-days-with-event-storming/event-storming-teaser.jpeg
   og_image: /imgs/2018-11-21-how-to-squash-big-design-up-front-in-a-few-days-with-event-storming/event-storming-og.jpeg
---
_The combination of_ [_Incremental Design_](https://www.jamesshore.com/Agile-Book/incremental_design.html) _and_ [_Event Storming_](https://www.eventstorming.com/) _is a better alternative to_ [_Big Design Up Front_](https://en.wikipedia.org/wiki/Big_Design_Up_Front)_. It's faster, safer and creates natural buy-in._

In my [previous post](/misadventures-with-big-design-up-front/), I explained how I tried to apply Big Design Up Front at my first job. Long story short, I did not manage very well...

![Drawing of an Event Storming workshop. Event Storming is great at drafting a rough design up front]({{site.url}}/imgs/2018-11-21-how-to-squash-big-design-up-front-in-a-few-days-with-event-storming/event-storming.jpeg)

This is the second post in a [series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). If you haven't yet, I recommend you to start reading from the beginning.

## Incremental architecture to the rescue

Here I was: I had tried to apply Big Design Up Front to keep the software tidy. Unfortunately, I was still facing regression at every new features. I started to look for ways to better design software. That's how I discovered the [refactoring book](https://www.amazon.com/Refactoring-Improving-Design-Existing-Code/dp/0201485672/ref=sr_1_2?ie=UTF8&qid=1542803555&sr=8-2&keywords=refactoring+martin+fowler):

[![Cover of Martin Fowler's Refactoring book. This book is really the bible of incremental design]({{site.url}}/imgs/2018-11-21-how-to-squash-big-design-up-front-in-a-few-days-with-event-storming/refactoring.jpg)](https://www.amazon.com/Refactoring-Improving-Design-Existing-Code/dp/0201485672/ref=sr_1_2?ie=UTF8&qid=1542803555&sr=8-2&keywords=refactoring+martin+fowler)

In it, I read about [eXtreme Programming](https://en.wikipedia.org/wiki/Extreme_programming), which got me to read the [XP book](https://www.amazon.com/Extreme-Programming-Explained-Embrace-Change/dp/0201616416/ref=sr_1_2?ie=UTF8&qid=1542803629&sr=8-2&keywords=extreme+programming+explained):

[![Cover of the first edition of Kent Beck's eXtreme Programming explained book. This is the book that got me to abandon Big Design Up Front]({{site.url}}/imgs/2018-11-21-how-to-squash-big-design-up-front-in-a-few-days-with-event-storming/xp_book_cover.jpg)](https://www.amazon.com/Extreme-Programming-Explained-Embrace-Change/dp/0201616416/ref=sr_1_2?ie=UTF8&qid=1542803629&sr=8-2&keywords=extreme+programming+explained)

I got sold on XP. I jumped in. Within a few month I was unit testing a lot. I had swapped Big Design Up Front for incremental design. The idea is to start and keep the simple code. (Remember: [Simple is not Easy](https://www.entropywins.wtf/blog/2017/01/02/simple-is-not-easy/)).

> Just get started, and refactor a lot as you go.

I have practiced incremental design since then. It's better than Big Design Up Front in almost all aspects.

*   It's fast to get started. This alone removes a lot of the risks:
    *   Of demotivating people
    *   Of building a deprecated design
    *   Of falling into analysis paralysis
*   It remains open to change, because the code remains simple
*   It avoids over-engineering, because we only code what's needed

Here is the main lesson I get by looking back all these years. [We cannot achieve a sustainable pace without incremental design](/how-to-start-learning-the-tao-of-incremental-code-refactoring-today/).

> 💡 We cannot achieve a sustainable pace without incremental design!

## The main problem of incremental design

Without a clear design, you'll waste your time refactoring over and over. That's true.

In practice, this is not a big issue if you are working alone. Once you've spent enough time at a problem, you'll form a mental design target. From then on, you'll always refactor in this direction.

The problem is trickier for teams. A few years ago, I joined a team as technical lead. Because of turnover, I became the only experienced programmer in a team of juniors. We were doing incremental design and refactoring. Unsurprisingly, the team turned to me to provide them an architecture vision. Having this shared vision helped everyone in the team to know how to refactor the code at any moment. It avoided both conflicting and dead-end refactoring.

> 💡 Having a shared vision helped everyone in the team to know how to refactor the code at any moment.

As the team members grew in experience though, they started to suggest more design ideas. It became more and more difficult to agree on a vision. This translated directly in more time wasted in conflicting refactoring initiatives.

## The Event Storming compromise

I did not know how to solve this problem until I discovered Event Storming.

I first heard about it through the internet. The first time I had the chance to practice it was when a team at work asked for help to organize one. They wanted to on-board newcomers. I then went through a few practice sessions. Finally, I had the chance to attend a workshop with [Alberto Brandolini](https://twitter.com/ziobrando?lang=en) at a conference. That's when I'd finish my rookie training at Event Storming. The main feedback I got through all these sessions was "Massive knowledge sharing".

During his workshop, Alberto also said we could use it to identify the functional areas of the domain. This statement sparkled my interest. Could this provide the collaborative architecture vision that incremental design lacks?

[![Cover of Alberto Brandolini's Introduction Event Storming book preview.]({{site.url}}/imgs/2018-11-21-how-to-squash-big-design-up-front-in-a-few-days-with-event-storming/event-storming-cover.jpeg)](https://leanpub.com/introducing_eventstorming)

After reading through the beta release of [Alberto's book](https://leanpub.com/introducing_eventstorming) and more experimenting, I can say it is. Whenever we start something new involving architecture:

*   A new product, project or startup
*   Almost any kind of legacy refactoring effort. For example:
    *   To modularize your architecture to scale to more teams
    *   To break a monolith into micro-services to support a continuous-delivery SaaS business model
    *   To rewrite a poor-quality part of the system, which generates excessive support costs

Event storming let us draft a good enough functional architecture vision. ([Context Map](http://javaonfly.blogspot.com/2018/05/DDD-Microservice-context-map.html) for [Domain Driven Design](https://en.wikipedia.org/wiki/Domain-driven_design) aficionados). Even better: it lets us do this collaboratively, in a couple of days! It's not bloated like the BDUF, but still provides a [Rough Design Up Front](http://www.agilecoach.co.uk/Articles/yagni.html). It complements incremental design to get something even better.

## Next posts

This was the second post in a [series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). In [next post](/how-to-prepare-a-ddd-big-picture-event-storming-workshop/), I'll explain how to run a Big Picture Event Storming. Later, I'll go over how to draft a functional architecture from there.

[Continue Reading...](/how-to-prepare-a-ddd-big-picture-event-storming-workshop/)