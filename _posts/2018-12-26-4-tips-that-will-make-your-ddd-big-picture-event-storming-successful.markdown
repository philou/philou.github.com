---
layout: single
title: "4 tips that will make your DDD Big Picture Event Storming successful"
date: 2019-01-17
comments: true
categories:
 - architecture
 - squash-BDUF-with-event-storming-series
 - event storming
description: "Although not rocket science, running a DDD Big Picture Event Storming can be tricky. Here are hard won tips that will make your first workshop successful and bring you closer to a Rough Design Up Front. #1 Manage time with double Pomodoro. #2 Assign roles to play. #3 Ignore your Legacy."
header:
   teaser: /imgs/2018-12-26-4-tips-that-will-make-your-ddd-big-picture-event-storming-successful/4tips-event-storming-teaser.jpeg
   og_image: /imgs/2018-12-26-4-tips-that-will-make-your-ddd-big-picture-event-storming-successful/4tips-event-storming-og.jpeg
---
_Although not rocket science, running a [DDD](https://en.wikipedia.org/wiki/Domain-driven_design) Big Picture [Event Storming](https://www.eventstorming.com/) can be tricky. Here are 4 hard won tips that will make your first workshop successful._

This is the 8th post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). Previous posts

*   explain why Domain Driven Design (DDD) Big Picture Event Storming matters
*   walkthrough a workshop in details

If you are not familiar with Event Storming, it might be a good idea to start reading from [the beginning](/misadventures-with-big-design-up-front/).

Here are the most important tips I discovered by running my own workshops.

[![Sketchnote of the 4 tips to make DDD Big Picture Event Storming Successful. #1 Double Pomodoro. #2 Role Play. #3 Ignore Legacy. #4 Read Alberto's Book]({{site.url}}/imgs/2018-12-26-4-tips-that-will-make-your-ddd-big-picture-event-storming-successful/4tips-event-storming-small.jpeg)]({{site.url}}/imgs/2018-12-26-4-tips-that-will-make-your-ddd-big-picture-event-storming-successful/4tips-event-storming.jpeg)

## Tip#1 Manage time with Pomodoro

A double Pomodoro is the most productive and sustainable time schedule. If you are not familiar with the Pomodoro technique, the Wikipedia page is a [super short crash course](https://en.wikipedia.org/wiki/Pomodoro_Technique).

> 💡 A double Pomodoro is the most productive and sustainable time schedule for a DDD Event Storming.

Characteristic    | Classic Pomodoro | Double Pomodoro 
------------------|------------------|----------------
Length            | 25 minutes       | 50 minutes      
Short break       | 5 minutes        | 5 minutes      
Long break every  | 4 pomodoros      | 2 pomodoros
Long break        | 15 minutes       | 15 minutes      

When I tried the classic Pomodoro, I was cutting interesting discussions all the time. In practice 50 minutes seem to work better.

People usually overflow the break, so most Pomodoros take a full hour instead of 55 minutes. Without enough breaks, people will get tired and the workshop will not be as productive.

Doing 2 hours before, and then 2 hours after lunch works better than 4 hours straight.

{% assign figure_path="/imgs/2018-12-26-4-tips-that-will-make-your-ddd-big-picture-event-storming-successful/pomodoro.jpg" | absolute_url %}
    
{% assign figure_alt="A kitchen pomodoro timer. The double pomodoro technique is great for managing time during a DDD Event Storming" %}
    
{% capture figure_caption %}
From [Flickr](https://www.flickr.com/photos/149561324@N03/37941061684) By [Marco Verch](https://www.flickr.com/photos/149561324@N03/), under [Attribution 2.0 Generic (CC BY 2.0)](https://creativecommons.org/licenses/by/2.0/) License
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

## Tip#2 Assign roles for B2B for domain experts

Running an Event Storming workshop is especially challenging for Business to Business vendors. It is very difficult to find real end users or client domain experts to attend the workshop.

A trick is to do some role play, and assign business roles to in-house domain experts. This way, all aspects of the business get dedicated focus during.

> 💡 If you don't have real domain experts, assign business roles for DDD Event Storming.

It's very easy to prepare the roles in advance, with the help of [your sponsor](/how-to-prepare-a-ddd-big-picture-event-storming-workshop/).

![Photo of a street actor. Role playing is a great way to make up for missing domain experts in DDD Event Storming]({{site.url}}/imgs/2018-12-26-4-tips-that-will-make-your-ddd-big-picture-event-storming-successful/actor.jpg)

## Tip#3 Don't try to Event Storm your Legacy

If you are envisioning to refactor your [legacy system](https://en.wikipedia.org/wiki/Legacy_system), do as if you were starting from scratch.

It does not make a lot of sense to Event Storm what you currently have. [Legacy systems were rarely designed with DDD in mind](/software-is-like-writing-and-revising-a-giant-book/). You might have to dive into technical aspects to model them. I once let this happen. The workshop drifted into an unproductive mapping of current technical dependencies.

> 💡 For legacy refactoring, run DDD Event Storming as if you were starting from scratch.

On the other side though, it can be difficult for developers to "forget" the design of the current system. Especially as they start to see all the refactoring to do. Reassure them that you'll discuss the transition road later on.

![Photo of legacy factory machines. Keeping a legacy system in mind while doing a DDD Event Storming will drift the discussion towards the intricacies of existing systems.]({{site.url}}/imgs/2018-12-26-4-tips-that-will-make-your-ddd-big-picture-event-storming-successful/legacy-factory.jpg)

## Tip#4 Get the Event Storming Book

My last advice is to buy [Alberto Brandolini](https://twitter.com/ziobrando)'s [book about Event Storming](https://leanpub.com/introducing_eventstorming). The last section contains tons of extra tips and advices.

[![Cover of Alberto Brandolini's book about Event Storming.]({{site.url}}/imgs/2018-12-26-4-tips-that-will-make-your-ddd-big-picture-event-storming-successful/event-storming-cover.jpeg)](https://leanpub.com/introducing_eventstorming)

## To be continued

This was the 8th post in a [series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series).

In the next post I will explain how to use DDD Big Picture Event Storming to draft a target architecture. [Subscribe to be notified when it's ready](http://eepurl.com/dxKE95).
