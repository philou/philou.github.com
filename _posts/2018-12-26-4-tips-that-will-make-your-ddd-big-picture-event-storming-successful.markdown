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
published: false
---
_Although not rocket science, running a DDD Big Picture [Event Storming](https://www.eventstorming.com/) can be tricky. Here are 4 hard won tips that will make your first workshop successful._

This is the 8th post in a series about how to use Event Storming to kick start architecture on good tracks. Previous posts

*   explain why DDD Big Picture Event Storming matters
*   walkthrough a workshop in details

If you are not familiar with Event Storming, it might be a good idea to start reading from the beginning.

Here are the most important tips I discovered by running my own workshops.

[![Sketchnote of the 4 tips to make DDD Big Picture Event Storming Successful. #1 Double Pomodoro. #2 Role Play. #3 Ignore Legacy. #4 Read Alberto's Book](../imgs/2018-12-26-4-tips-that-will-make-your-ddd-big-picture-event-storming-successful/4tips-event-storming-small.jpeg)](../imgs/2018-12-26-4-tips-that-will-make-your-ddd-big-picture-event-storming-successful/4tips-event-storming.jpeg)

## Tip#1 Manage time with Pomodoro

A double Pomodoro is the most productive and sustainable time schedule. If you are not familiar with the Pomodoro technique, check this super short crash course(TODO).

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

TODO photo pomodoro timer

## Tip#2 Assign roles for B2B for domain experts

Running an Event Storming workshop is especially challenging for Business to Business vendors. It is very difficult to find real end users or client domain experts to attend the workshop.

A trick is to do some role play, and assign business roles to in-house domain experts. This way, all aspects of the business get dedicated focus during.

> 💡 If you don't have real domain experts, assign business roles for DDD Event Storming.

It's very easy to prepare the roles in advance, with the help of your sponsor. (TODO)

TODO role playing photo

## Tip#3 Don't try to Event Storm your Legacy

If you are envisioning to refactor your legacy system, do as if you were starting from scratch.

It does not make a lot of sense to Event Storm what you currently have. Legacy systems were rarely designed with DDD in mind. You might have to dive into technical aspects to model them. I once let this happen. The workshop drifted into an unproductive mapping of current technical dependencies.

> 💡 For legacy refactoring, run DDD Event Storming as if you were starting from scratch.

On the other side though, it can be difficult for developers to "forget" the design of the current system. Especially as they start to see all the refactoring to do. Re-assure(TODO CHECK) them that you'll discuss the transition road later on.

TODO photo legacy

## Tip#4 Get the Event Storming Book

My last advice is to buy Alberto Brandolini's book about Event Storming. The last section contains tons of extra tips and advices.

TODO cover Event Storming book

## To be continued

This was the 8th post in a [series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series).

In the next post I will explain how to use DDD Big Picture Event Storming to draft a target architecture. [Subscribe to be notified when it's ready](http://eepurl.com/dxKE95).
