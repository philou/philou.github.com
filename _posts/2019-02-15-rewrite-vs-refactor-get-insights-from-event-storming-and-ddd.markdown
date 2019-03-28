---
layout: single
title: "Rewrite vs Refactor? Get Insights from Event Storming and DDD"
date: 2019-03-21
comments: true
categories:
 - architecture
 - squash-BDUF-with-event-storming-series
 - event storming
description: "With legacy code, rewrite vs refactor is a valuable but tricky question. Here is an Event Storming follow-up activity that visually shows how far we are from the target. This should trigger more insightful discussions, and to the identification of the first migration steps."
header:
   teaser: /imgs/2019-02-15-rewrite-vs-refactor-get-insights-from-event-storming-and-ddd/event-storming-rewrite-vs-refactor-teaser.jpeg
   og_image: /imgs/2019-02-15-rewrite-vs-refactor-get-insights-from-event-storming-and-ddd/event-storming-rewrite-vs-refactor-og.jpeg
---
_With legacy code, rewrite vs refactor is a valuable but tricky question. Here is an [Event Storming](https://www.eventstorming.com/) activity that shows how far we are from the target._

You already have an existing system. It's in production, it's providing value to users every day. This is what brings the money to the company and pays everyone’s salary. Unfortunately, the state of this software will not cope with the market demand trends. You need to transform your system, without loosing your customers!

We saw [how Event Storming helps to agree on a shared target architecture vision](/drafting-a-functional-architecture-vision-with-ddd-event-storming-part-1/). When you have an existing system (and [legacy code](https://en.wikipedia.org/wiki/Legacy_code)), the gap between reality and vision can be daunting.

![Drawing of an Event Storming design board written 'Rewrite vs Refactor' in large letters on top of it.]({{site.url}}/imgs/2019-02-15-rewrite-vs-refactor-get-insights-from-event-storming-and-ddd/event-storming-rewrite-vs-refactor.jpeg)

Here is an Event Storming follow-up activity to get a feeling of how much work we'll need to get there.

This is also the 17th post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). It all started with [misadventures with Big Design Up Front](/misadventures-with-big-design-up-front/).

## What’s the point?

The idea is that with a few extra workshop steps, we should be able to envision a good strategy to get to our target. Here are some example strategies:

### Refactor

This consists of changing the code one step at a time, while always keeping it working. This is the safest and most sustainable strategy if the reality and vision are not too different.

### Rewrite

> 💡 Full, drop-in, bing-bang rewrite is often a poor strategy. It's very risky, late, and non-sustainable for the people.

If the target look pretty different, rewriting might be a better strategy. Here again, there are different ways to rewrite:

*   If you system is small enough, and you have new ideas to put in, then create a new product! [DHH](https://twitter.com/dhh) gave a great [talk about how they rewrote Basecamp 2 and 3 as new products](https://businessofsoftware.org/2015/10/david-heinemeier-hansson-rewrite-basecamp-business-of-software-conference-video-dhh-bos2015/).
*   If your system is large, full rewrite is usually [not be a realistic option](https://dzone.com/articles/software-rewrite-the-chase-2). You’ll need to find a way to do incremental rewrite. This is usually a mixed rewrite AND refactor approach. Here is an example. First: refactoring a sub-systems behind an API and building an [anti corruption layer](https://softwareengineering.stackexchange.com/questions/184464/what-is-an-anti-corruption-layer-and-how-is-it-used). Then applying rewrite techniques like [canary releasing](https://martinfowler.com/bliki/CanaryRelease.html) and [Strangler app](https://www.martinfowler.com/bliki/StranglerApplication.html) on the sub-system. For more ideas, have a look at [this talk from Eric Evans](https://www.youtube.com/watch?v=OTF2Y6TLTG0).

<iframe width="560" height="315" src="https://www.youtube.com/embed/OTF2Y6TLTG0" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

This workshop will give a visual assessment of the refactoring effort involved. It will serve a base for discussion and might help you to identify obvious migration first steps.

> 💡 Refactor vs Rewrite? The best strategy is usually a hybrid between both.

## The Workshop Activity

### Mapping the existing structure

Suppose your existing code structure is something like that

![Drawing of a example file and directory structure for the codebase we are wondering rewrite vs refactor]({{site.url}}/imgs/2019-02-15-rewrite-vs-refactor-get-insights-from-event-storming-and-ddd/existing-structure.jpg)

Use this to create a large visual 2D map with colored post-its representing every code file. If they are too many files, try with directories:

![Drawing the map of files stuck on the wall. Each file is represented by a post-it which color is from its directory in the codebase we are wondering rewrite vs refactor]({{site.url}}/imgs/2019-02-15-rewrite-vs-refactor-get-insights-from-event-storming-and-ddd/existing-files-map.jpg)

This is where the workshop starts. Book a room and stick this map on the wall.

### Mapping files to the vision

During the Event Storming workshop, you should have identified your target functional areas.

Create another large, but empty map for your target architecture. Stick it on the wall, next to the map of your existing system:

![Drawing of both maps stuck on the wall. The map of existing files, as well as the target context map that came out of the Event Storming workshop. The goal is to go from existing to target, the question is rewrite vs refactor]({{site.url}}/imgs/2019-02-15-rewrite-vs-refactor-get-insights-from-event-storming-and-ddd/existing-and-target-maps.jpg)

That's when attendees will work. They need move the existing files post-its to where they would fit in the target architecture. The colors will give visual clues about the 'distance' between the reality and the vision. We should have a first gut feeling of how complicated the migration will be.

### Good news

If we are lucky, the map might look something like that :

![Drawing of the target context map filled with post-its from the existing modules map. We see colored groups of post-it matching target bounded contexts, which seem to indicate that Refactoring is the best choice in the Rewrite vs Refactor question]({{site.url}}/imgs/2019-02-15-rewrite-vs-refactor-get-insights-from-event-storming-and-ddd/simpler-migration.jpg)

Target functional areas and current modules seem a good overlap. Files that are currently close to each other will mostly remain close in the vision. That's good news, and the migration should not be too complicated. Incremental refactoring is probably the best strategy in this situation.

### Bad news

If we are not so lucky, we could end up with a map like this one:

![Drawing of the target context map filled with post-its from the existing modules map. We see colored post-it spread all over the place, which seem to indicate that Refactoring will not be simple in the Rewrite vs Refactor question]({{site.url}}/imgs/2019-02-15-rewrite-vs-refactor-get-insights-from-event-storming-and-ddd/messy-migration.jpg)
The mosaic of colors tells us that the current and target architectures don't have a lot in common. The path to get there will be long. Rewriting, or hybrid approaches might be better strategies here.

### Agree on a strategy

All attendees can visualize the distance between reality and vision. It's a good time for a discussion. Try to reach a consensus about the general migration strategy. Keep in mind that we have a bias towards rewrite. As [Joel taught us](https://www.joelonsoftware.com/2000/04/06/things-you-should-never-do-part-i/), it’s always more risky in practice than in theory. Try to push for refactoring most of the time. If you are really hesitating, check [this post](https://8thlight.com/blog/doug-bradbury/2018/11/27/true-cost-rewrites.html) that explains how to quantify a business case for a rewrite. For large systems, the solution will almost always imply both refactoring and rewriting.

### Identify the first steps

Whether you reach a general consensus or not, it might be easier to agree on first steps. Some steps would be beneficial whatever the strategy. For example:

*   Replacing an in-house generic library with an off-the-shelf third party. It's an obvious part of a refactoring strategy. It would also simplify a rewrite down the road.
*   Domain concepts are usually pretty stable through time. So gathering some core aspects of the business in a single place is a good move. It's part of refactoring, but it will make rewrite easier if we can reuse this core business logic.
*   Some parts of both current and target designs might already match. Incrementally rewriting or refactoring these small parts might be easy quick wins.
*   etc

As usual, the usual Event Storming tips apply here:

*   Redo the exercise regularly
*   Use large-scale incremental refactoring techniques. I guess I’ll post some live coding videos about these techniques someday … so [stay tuned](http://eepurl.com/dxKE95).

## What else can we do?

It's incredible how much answers we can get out of a few days of Event Storming. [Running your own](/categories/#squash-bduf-with-event-storming-series) is not as difficult as it sounds. Go ahead, and start your own!

Through this series of posts, I went through a lot of activities that we can run around Event Storming. But guess what, I’m not finished yet. In [the next post](/feature-teams-vs-component-teams-decide-with-event-storming-and-ddd/), I’ll explain how we can create teams that support our target architecture.

[Continue Reading...](/feature-teams-vs-component-teams-decide-with-event-storming-and-ddd/)

This was the 17th post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). 