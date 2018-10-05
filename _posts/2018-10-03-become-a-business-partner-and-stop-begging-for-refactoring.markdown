---
layout: single
title: "Become a Business Partner and Stop Begging for Refactoring"
date: 2018-10-04 09:17
comments: true
categories: 
 - refactoring
 - planning
 - large-scale-refactoring-sponsorship-series
keywords: "Become a business partner, Refactoring"
description: "When developers earn enough trust from business people, they become their business partners. As such they enjoy a lot more freedom to refactor. They can discuss permanent refactoring bandwidth, technical debt interests and agree on decentralized decision rules."
header:
   teaser: /imgs/2018-10-03-become-a-business-partner-and-stop-begging-for-refactoring/business-hand-shake-teaser.jpeg
   og_image: /imgs/2018-10-03-become-a-business-partner-and-stop-begging-for-refactoring/business-hand-shake-og.jpeg
---
_When we, developers, earn enough trust from business people, we become their business partners. As such we enjoy a lot more freedom to refactor._

A team I was in a few years ago had worked hard to earn the trust of business people. In a retrospective, we discussed about our failure to work on the improvements we had agreed to. We decided that we would dedicate 20% of our [story points](https://www.mountaingoatsoftware.com/blog/what-are-story-points) to improvements and refactoring. Better yet, we would start the sprint with these, before working on features! Here's what our sponsor said:

> As long you are sure it's the best thing for the product, I trust you.

This is the kind of autonomy business partners can enjoy.

![Drawing of a handshake between a business person wearing a suit and a developer wearing a hoody. Becoming business partners serves each party's interests]({{site.url}}{{site.baseurl}}/imgs/2018-10-03-become-a-business-partner-and-stop-begging-for-refactoring/business-hand-shake.jpg)

This the 14th post in a [series about how to get sponsorship for large scale refactoring]({{site.baseurl}}/categories/#large-scale-refactoring-sponsorship-series). If you haven't already, I recommend you start from [the beginning](/how-to-convince-your-business-to-sponsor-a-large-scale-refactoring/).

## Becoming a business partner

All the tricks and advices from the [previous posts]({{site.baseurl}}/categories/#large-scale-refactoring-sponsorship-series) should lead to the following outcomes:

1.  Time for refactoring
2.  Trust from business people

With time, it establishes a solid business partnership. This means that business people will acknowledge that we know what we are talking about. When we say we need to refactor something, they'll let us do without much protest.

Once we reach this level of trust with business people, a new world of practices opens. Here are few I've used or heard people talk about.

## Negotiate Technical Debt Interests

My friend [Xavier](https://twitter.com/XCorail) told me once that he had discussed how to deal with technical debt with a Scrum coach. The coach looked puzzled, and asked why we did not simply negotiate interests up front! When someone asks for a shortcut, we should explicit the recurring cost to fix it.

Here's an example: suppose we are asked to deliver a 8 points story in half the time for a sales show. We could say OK provided we'd also pre-plan 2 story points refactoring tasks for the next 4 sprints.

## Agree on a decentralized decision rules

Boing had weight issues when designing the 777. Instead of a weight reduction project, management issued a decentralized decision rule.

> Any engineer could swap a pound weight reduction with an $300 increase in production cost. ([The Principles of Product Development Flow](https://www.amazon.com/Principles-Product-Development-Flow-Generation/dp/1935401009/) by [Donald G. Reinertsen](http://reinertsenassociates.com/))

![Rendered model of the Boeing 777 while being designed. Decentralized Decision Rules are among the benefits of becoming a business partner]({{site.url}}{{site.baseurl}}/imgs/2018-10-03-become-a-business-partner-and-stop-begging-for-refactoring/boeing-777.jpg)

Pretty soon, the plane had lost enough weight to be viable. Here's another example:

> If we speed up the build of 1 minute in less than 16 hours of work, we should do it.

If you are wondering how to create such rules, have a look at [this post](/you-dont-have-to-ask-your-boss-for-a-fast-build-lean-software-development-part-6/). For yet another example, check this bug definition that came out of an [improvement kata]({{site.baseurl}}/categories/#first-improvement-kata-series).

These rules are powerful because they are agreed to once, but used many times. They also don't involve any management escalation or delay. Only high level of trust with business people can lead to such rules.

> 💡 Decentralized decision rules are agreed once, but used many times, without involving management.

## Negotiate a refactoring bandwidth

Negotiating refactoring on a task by task basis takes a lot of time. Once we've become business partners, we can negotiate a permanent refactoring bandwidth.

> 💡 Becoming a business partner lets developers have a permanent refactoring bandwidth.

For example, in her talk [What ever happened to being eXtreme?](https://vimeo.com/221024846) [Rachel Davies](https://twitter.com/rachelcdavies) explains how her long lived XP team was doing that. At any moment, among 7 developers, 3 were working on technical (or refactoring) tasks.

<iframe src="https://player.vimeo.com/video/221024846" width="640" height="360" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe>
<p><a href="https://vimeo.com/221024846">Rachel Davies - What Ever Happened to Being eXtreme?</a> from <a href="https://vimeo.com/newcrafts">NEWCRAFTS Conferences</a> on <a href="https://vimeo.com">Vimeo</a>.</p>

As with decentralized rules of thumb, the main advantage is that negotiation is done once and for all.

## Almost there !

This was the 14th post in a [series about how to get sponsorship for large scale refactoring]({{site.baseurl}}/categories/#large-scale-refactoring-sponsorship-series). In the [next post](http://eepurl.com/dxKE95), I'll dig into what we must be careful about to remain business partners.
