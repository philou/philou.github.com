---
layout: single
title: "How to fight priority paralysis with Event Storming and DDD"
date: 2019-11-21
comments: true
categories:
 - event storming
 - architecture
 - ddd
 - planning
description: "How to eat the elephant? It's easy to fall into priority paralysis as you envision an ambitious product. Let's use Event Storming and DDD to scope your next step! Equipped with post-its and stickers, Event Storming creates the perfect conditions for an effective negotiation between all stakeholders."
header:
   teaser: /imgs/2019-11-09-how-to-fight-priority-paralysis-with-event-storming-and-ddd/event-storming-walking-skeleton-teaser.jpeg
   og_image: /imgs/2019-11-09-how-to-fight-priority-paralysis-with-event-storming-and-ddd/event-storming-walking-skeleton-og.jpeg
---
_Where should we start? It's easy to fall into priority paralysis as you envision an ambitious product. Let's use DDD [Event Storming](https://www.eventstorming.com/) to scope your next step!_

![Drawing of a skeleton marking items on an DDD Event Storming design board. Event Storming is great to find the scope of your next target, you Walking Skeleton for example.]({{site.url}}/imgs/2019-11-09-how-to-fight-priority-paralysis-with-event-storming-and-ddd/event-storming-walking-skeleton.jpeg)

[I've said it earlier]({{site.url}}/categories/#event-storming): Event Storming helps you to make complex decisions in a short time!

## Story of a new feature

A few months ago, [at work](https://www.murex.com), I trained some people to run Event Storming workshops. Some of them tried their new knowledge on a significant feature involving many teams.

They had been wondering how to start this topic for weeks when they ran the Event Storming.

Two of the outputs of these 8 hours of Event Storming were:

*   They agreed on an end-to-end [Walking-Skeleton](https://codeclimate.com/blog/kickstart-your-next-project-with-a-walking-skeleton/) to test and build first
*   They had a first idea of the end to end NFRs ([Non-Functional Requirements](https://en.wikipedia.org/wiki/Non-functional_requirement#:~:targetText=In%20systems%20engineering%20and%20requirements,define%20specific%20behavior%20or%20functions.)) that the business needed

Everyone went out very satisfied with these results.

## The problem: What's the next target

![Woven wicker ball, that seems impossible to untangle. Finding where to start in a new product is a riddle of its own. Event Storming and DDD get collective intelligence to the rescue.]({{site.url}}/imgs/2019-11-09-how-to-fight-priority-paralysis-with-event-storming-and-ddd/riddle.jpg)

When you don't all agree on the next target, it is very difficult to be effective.

*   Prioritization is tricky
*   Progress is slow as there is not enough focus
*   You won't reach a [sustainable pace](https://www.agilealliance.org/glossary/sustainable/). Running after too many rabbits generates stress.

It gets even worse with different stakeholders who have different topics in mind.

*   Domain experts care about features or business risks
*   Technical people have NFR and maintainability risks in mind.

Getting all these people to agree on the next step is a real challenge!

## An easy ES trick!

Again, the shared understanding generated from Event Storming makes this step simple. Here is what you can do to get people to agree on the next target:

[![Small dot stickers like you can find everywhere. Use them to negotiate and mark events and items that you want to see in your next target]({{site.url}}/imgs/2019-11-09-how-to-fight-priority-paralysis-with-event-storming-and-ddd/stickers.jpg)](https://www.amazon.com/Round-Coding-Circle-Labels-Colors/dp/B07GZDJG6Z/ref=sr_1_9)

1.  Hand them small dot stickers
2.  Ask them to mark what they want in the next target
3.  Let them negotiate

The result is a mix of features and de-risking. Stickers work great because they are easy to remove. From my experience, this scoping step takes about 30 minutes.

The key to making this simple activity work is to have enough shared understanding. You'll build this with the beginning of the [Big-Picture Event Storming]({{site.url}}/detailed-agenda-of-a-ddd-big-picture-event-storming-part-1/). Go at least as far as the [storytelling]({{site.url}}/detailed-agenda-of-a-ddd-big-picture-event-storming-part-3/). It works even better if you [identified the contexts and subdomains]({{site.url}}/build-or-buy-software-identify-your-core-functional-areas-with-event-storming-and-ddd/).

The more shared understanding you built, the easier the negotiation is.

## Why does it work?

Shared understanding is the first enabler. Here are other aspects.

By working together in the Event Storming, people get to know and trust each other more. As a result, **it also improves collaboration _after_ the workshop!**

Best practices against priority paralysis provide another explanation. DB Hurley presents a 3 steps process in [First Things First: How to Handle Priority Paralysis](https://dbhurley.com/first-things-first-how-to-handle-priority-paralysis/):

1.  Be specific and gather details. Event Storming should fill this first step.
2.  Identify both short term and long term goals. Here is the negotiation part.
3.  Start something on the list. As soon as you leave the Event Storming workshop, you should start something. 

[![Drawing of an infographics of the Event Storming loop: Devs meet domain experts -> Grow collective intelligence superpowers -> Make complex decisions in a short time -> Try for real -> Learn -> Devs meet domain experts -> ... Getting started is the best cure against analysis paralysis]({{site.url}}/imgs/2019-11-09-how-to-fight-priority-paralysis-with-event-storming-and-ddd/event-storming-iterative-process-small.jpeg)]({{site.url}}/sustain-collective-intelligence-with-event-storming/)

## Where's the catch?

OK... there's an implicit assumption here. I did not mention system design constraints here.

> How can we address critical features and risks first? Without bothering about the code?

To do this, you'll have to code by refactoring and change the code many times. You'll need to master [incremental development techniques]({{site.url}}/categories/#refactoring). Without them, you'd have to build full components in large work batches.

If you want to learn 'code by refactoring' techniques, the simplest way is to [start a coding dojo]({{site.url}}/how-to-start-a-team-coding-dojo-randori-today/).

## Don't let priority paralysis kill your product before you even start!

Watch out for projects or products that are taking too long to start. If you hear something like:

> We just need to figure out how to cut the elephant...

Suggest an Event Storming!

In 2 days of effective collaboration, you'll agree on the next target. As a bonus, you'll get all [the other outcomes of ES]({{site.url}}/how-to-capture-the-outputs-of-an-event-storming-workshop/):

*   Shared understanding
*   Growing tech-domain collaboration
*   The beginning of a ubiquitous language
*   High impact quick fixes
*   ...

Running and Event Storming is not rocket science. If you are wondering how to start, follow [the guide]({{site.url}}/misadventures-with-big-design-up-front/)!