---
layout: single
title: "Detailed Agenda of a DDD Big Picture Event Storming - Part 3"
date: 2019-01-10
comments: true
categories:
 - architecture
 - squash-BDUF-with-event-storming-series
 - event storming
description: "Thanks to massive knowledge sharing, a Domain Driven Design (DDD) Big Picture Event Storming is the 1st step to collaboratively draft a Rough Design Up Front. This post goes over its last phases: storytelling, reverse storytelling and closing. It also contains a list of possible next steps."
header:
   teaser: /imgs/2018-12-26-detailed-agenda-of-a-ddd-big-picture-event-storming-part-3/event-storming-finish-line-teaser.jpeg
   og_image: /imgs/2018-12-26-detailed-agenda-of-a-ddd-big-picture-event-storming-part-3/event-storming-finish-line-og.jpeg
published: false
---
_Thanks to massive knowledge sharing, a [DDD](https://en.wikipedia.org/wiki/Domain-driven_design) Big Picture [Event Storming](https://www.eventstorming.com/) is the 1st step to collaboratively draft a Rough Design Up Front. Here are its last steps._

This is the 7th post in a [series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). If you want to learn how I got into Event Storming, I recommend you to start reading from [the beginning](/misadventures-with-big-design-up-front/).

This is also the 3rd part of a post detailing the agenda for a Domain Driven Design Big Picture Event Storming. Please make sure to read the [previous articles](/detailed-agenda-of-a-ddd-big-picture-event-storming-part-1/) first.

![Drawing of a Domain Driven Design (DDD) Big Picture Event Storming board with a running race finish line.]({{site.url}}/imgs/2018-12-26-detailed-agenda-of-a-ddd-big-picture-event-storming-part-3/event-storming-finish-line.jpeg)

If you went through the previous steps, all the attendees should have a good grasp of the domain. Let's test this understanding a bit.

## 7. Storytelling

Now is the time to check that the whole picture makes sense. Since the beginning of humanity, stories have been the vehicle of knowledge. Knowledge used to go from generation to generation through campfire stories. [Our brains are hard-wired to listen, remember and make sense of stories](https://blogs.scientificamerican.com/guest-blog/it-is-in-our-nature-to-need-stories/).

![Made up image of a giant open book in the middle of the countryside. Storytelling is key to successful DDD Event Storming]({{site.url}}/imgs/2018-12-26-detailed-agenda-of-a-ddd-big-picture-event-storming-part-3/book.jpg)

Ask for a volunteer from the audience, or for a few if people are afraid to do it alone. Then ask the first volunteer to narrate the story of the system. He just needs to go through the events chronologically and explain what happens.

As the narrator speaks, the audience will raise questions and notice incoherences. This is again a time to add, remove or replace events to fix the story. A few extra definitions might emerge. If a problem seems too big to fix during the session, park it with a pink problem post-it.

Narrating the story can be pretty tiring, so ask a new narrator to take over at some point.

## 8. Reverse storytelling

For an even greater drill down in the domain, reverse storytelling is the way to go. Get a few more volunteers and ask them to tell the story from the end. Naming this step 'storytelling' is not accurate. It's rather repeatedly asking "What might have triggered this event?". This will generate or update events, actors or external systems.

The reason this works so well is that questions trigger the creative parts of our brains. We get to imagine all kinds of new possibilities. This phase is very productive and brings a lot of insights.

## 9. Closing

![Photo of a man walking on a path in the mountain, taken from behind. The DDD Event Storming opens up a lot of opportunities and is just the beginning of the path.]({{site.url}}/imgs/2018-12-26-detailed-agenda-of-a-ddd-big-picture-event-storming-part-3/wanderer.jpg)

This is it, you've reach the end of the DDD Big Picture Event Storming. At this point, it's a good idea to settle down and assess the outcomes.

> 💡 By far the biggest outcome of DDD Big Picture Event Storming is a better shared understanding of the domain.

You might actually be wondering what the deliverables are. At this point, most deliverables are intangibles :

*   By far the biggest is a better shared understanding of the domain. This will save tremendous time by improving collaboration. It will avoid specification bugs, and enable a better design.
*   All together, you have identified problems. Fixing these problems might be quick wins with high payoff.
*   The definitions are the first bricks of an [Ubiquitous Language](https://martinfowler.com/bliki/UbiquitousLanguage.html). Leveraging on it saves on-boarding time and maintains the system's [conceptual integrity](https://www.quora.com/What-is-conceptual-integrity-in-software-architecture).
*   Finally, this was also a mandatory step for collaborative architecture. A good shared understanding of the domain makes discussions about functional architecture possible.

Thus, the next steps can be:

*   To fix a major problem. In [his book](https://leanpub.com/introducing_eventstorming), [Alberto Brandolini](https://twitter.com/ziobrando) recalls such a situation. The Big Boss actually had every other work stopped until they fixed a 'new' problem.
*   To continue to grow the ubiquitous language, by adding and refining definitions
*   To do more workshop in order to draft a target architecture. I'll explain how to do this in the next posts.

Depending on your session, the next steps might be more or less obvious. If they are not, it's a good time to have an open discussion to get everyone's opinion. Once the next steps are clear and taken care of by someone, call it a day and end the workshop.

Don't forget to ask for feedback on the session itself before people leave. A [ROTI](https://www.stickyminds.com/article/roti-method-gauging-meeting-effectiveness) is a quick way to do this.

## The series continues

> 💡 Event Storming unlocks drafting an architecture, drawing teams and a sustainable refactoring path.

That's it, after a few hours, you've reached the end of DDD Big Picture Event Storming. This is the massive knowledge-sharing foundation step. It will help us to draft an architecture, draw teams, find a sustainable refactoring path and more. In the next post I will give a few personal tips about running a DDD Event Storming. [Subscribe to be notified when it's ready](http://eepurl.com/dxKE95).

This was the 7th post in a [series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series).