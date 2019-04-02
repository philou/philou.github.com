---
layout: single
title: "How to max out DDD Big Picture Event Storming with other Workshops"
date: 2019-04-04
comments: true
categories:
 - architecture
 - squash-BDUF-with-event-storming-series
 - event storming
description: "DDD Big Picture Event Storming is a prelude and catalyst to other workshops. Use: Design Level Event Storming for a detailed design of a context, Example Mapping for details of a story, Story Mapping for a 2D representation of your backlog & Impact Mapping to help you prioritize better"
header:
   teaser: /imgs/2019-02-25-how-to-max-out-ddd-big-picture-event-storming-with-other-workshops/event-storming-follow-ups-teaser.jpeg
   og_image: /imgs/2019-02-25-how-to-max-out-ddd-big-picture-event-storming-with-other-workshops/event-storming-follow-ups-og.jpeg
published: false
---
_[DDD](https://en.wikipedia.org/wiki/Domain-driven_design) Big Picture [Event Storming](https://www.eventstorming.com/) is a prelude and catalyst to other workshops. Ex: Design Level Event Storming, Example Mapping, Story Mapping & Impact Mapping_

I said many times throughout this series of posts:

> 💡 Event Storming creates the shared knowledge on which to build much more.

Once you master Event Storming, a whole new world of collaboration opens up to your team.

As examples, here are a few common workshops that you can run after a Big Picture Event Storming. They will all be more productive because of the shared knowledge.

![Drawing of a DDD Big Picture Event Storming board that splits into 3 arrows written user stories, example and impact]({{site.url}}/imgs/2019-02-25-how-to-max-out-ddd-big-picture-event-storming-with-other-workshops/event-storming-follow-ups.jpeg)

This is also the 19th, and last, post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). It all started with misadventures with [Big Design Up Front](https://en.wikipedia.org/wiki/Big_Design_Up_Front).

## Design at a finer grain with [Design Level Event Storming](https://buildplease.com/pages/fpc-6/)

{% assign figure_path="/imgs/2019-02-25-how-to-max-out-ddd-big-picture-event-storming-with-other-workshops/ddd-design-level-event-storming-picture-that-explains-everything.jpg" | absolute_url %}

{% assign figure_alt="A legend for the post-it colors in DDD Design Level Event Storming drawn by Alberto Brandolini" %}

{% capture figure_caption %}
From [Alberto Brandolini](https://twitter.com/ziobrando)’s [“Introducing Event Storming” book on LeanPub](https://leanpub.com/introducing_eventstorming)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

You’ll reach a point where the Big Picture Event Storming is not detailed enough for design. That’s when Design Level Event Storming kicks in. This finer grain design activity is more focused and technical. It helps development teams to collaboratively design the inside of a [bounded context](https://martinfowler.com/bliki/BoundedContext.html).

{% assign figure_path="/imgs/2019-02-25-how-to-max-out-ddd-big-picture-event-storming-with-other-workshops/sample-design-level-event-storming-board.jpg" | absolute_url %}

{% assign figure_alt="A Sample DDD Design Level Event Storming Board" %}

{% capture figure_caption %}
A sample Design Level Event Storming board from [boldare.com’s event storming guide](https://www.boldare.com/blog/event-storming-guide)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

Be warned though that this kind of design leans heavily towards [CQRS](https://martinfowler.com/bliki/CQRS.html), [Event Sourcing](https://martinfowler.com/eaaDev/EventSourcing.html) and DDD (Domain Driven Design). I'll definitely write a follow-up series on Design Level Event Storming, [stay tuned](http://eepurl.com/dxKE95)!

## Eradicate specification bugs with [Example Mapping](https://cucumber.io/blog/2015/12/08/example-mapping-introduction)

[![Cover of the BDD Discovery book which goes over example mapping in a lot of details]({{site.url}}/imgs/2019-02-25-how-to-max-out-ddd-big-picture-event-storming-with-other-workshops/bdd-discovery.jpg)](https://leanpub.com/bddbooks-discovery)

It helps developers, testers and domain experts to agree on a story's details. It's a very quick (30 minutes) workshop. It actually looks more like a codified conversation than a workshop. Done well, it removes almost all specification bugs!

{% assign figure_path="/imgs/2019-02-25-how-to-max-out-ddd-big-picture-event-storming-with-other-workshops/example-mapping-cards.jpg" | absolute_url %}

{% assign figure_alt="Illustrative example mapping cards in their typical layout" %}

{% capture figure_caption %}
Sample Example Mapping cards on the introductory [post about Example Mapping](https://cucumber.io/blog/2015/12/08/example-mapping-introduction), by [Matt Wynne](https://twitter.com/mattwynne?lang=fr)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

It yields even more insights when paired with Event Storming. [Kenny Baas](https://baasie.com/) gave [a talk precisely about how to combine Design Level Event Storming and Example Mapping](https://www.youtube.com/watch?time_continue=3&v=xSZnKnZ8EAo).

## Map a visual 2D backlog with [User Story Mapping](https://www.jpattonassociates.com/user-story-mapping/)

[![Cover of the User Story Mapping book. User Story Mapping is a great follow-up to a DDD Big Picture Event Storming]({{site.url}}/imgs/2019-02-25-how-to-max-out-ddd-big-picture-event-storming-with-other-workshops/user-story-mapping.jpg)](https://www.amazon.com/User-Story-Mapping-Discover-Product/dp/1491904909/ref=sr_1_2?keywords=user+story+mapping&qid=1547797880&sr=8-2)

> 💡 DDD Big Picture Event Storming vs Story Mapping? Do both!

User Story mapping is a workshop to build 2D representation of the upcoming work. This representation is a lot clearer than the 1D [Scrum Product Backlog](https://www.scrum.org/resources/what-is-a-product-backlog). This unlocks better prioritization and communication.

User Story Mapping shares many similarities with Event Storming. It is an exploratory workshop as well. It also starts with the analysis of the users workflow. My experience is that User Story Mapping is a lot faster to run when done after an Event Storming.

{% assign figure_path="/imgs/2019-02-25-how-to-max-out-ddd-big-picture-event-storming-with-other-workshops/example-user-story-map.jpg" | absolute_url %}

{% assign figure_alt="A sample user story map. User Story Maps and DDD Event Storming design boards share a 2D representation of user chronology" %}

{% capture figure_caption %}
A sample user story map from [Barry Overeem](https://www.barryovereem.com/)’s [walkthrough blog post](https://www.barryovereem.com/the-user-story-mapping-game/)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

The [User Story Mapping](https://www.amazon.com/User-Story-Mapping-Discover-Product/dp/1491904909/ref=sr_1_2?keywords=user+story+mapping&qid=1547797880&sr=8-2) book contains many details about how to run this workshop. It event contains a section about how SAP created a variant for really large teams.

## Rank hypothesis and features with [Impact Mapping](https://www.impactmapping.org/)

[![Cover of the Impact Mapping book. While DDD Big Picture Event Storming brings up a high level, full scope view, Impact Mapping helps paraticipants to focus on what needs to be done first]({{site.url}}/imgs/2019-02-25-how-to-max-out-ddd-big-picture-event-storming-with-other-workshops/impact-mapping.jpg)](https://leanpub.com/impact-mapping)

By getting back to our goal, the actors and their potential impacts, impact mapping helps us to take a step back. It is particularly useful to come up with alternate ways to achieve our goals.

It’s also a great tool to explicit our current hypothesis and what experiments we should run. Again, thanks to the shared knowledge, Big Picture Event Storming makes this workshop both faster and more effective.

{% assign figure_path="/imgs/2019-02-25-how-to-max-out-ddd-big-picture-event-storming-with-other-workshops/sample-impact-map.jpg" | absolute_url %}

{% assign figure_alt="A sample impact map. While DDD Big Picture Event Storming is more exploratory, Impact Mapping is more about focusing on what needs to be done first" %}

{% capture figure_caption %}
An example Impact Map from [impactmapping.org](https://www.impactmapping.org/example.html), licensed under a [Creative Commons Attribution 4.0 International License](http://creativecommons.org/licenses/by/4.0/).
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

I cannot understate the importance of this workshop. Prioritization is the only key to sustainable pace. Maximizing the work not done is the only way to have more impact with less efforts.

> Simplicity--the art of maximizing the amount of work not done--is essential. - [The Agile Manifesto principles](https://agilemanifesto.org/principles.html)

## Combine, Improvise, and Repeat

Maintaining enough shared knowledge within a team keeps it in a hyper-productive state. Regularly running these workshops maintains the momentum and focus. The more you run them, and the faster they’ll be.

After a while, you might get so good at them that you’ll define your own workshops for your specific needs! If you are lacking inspiration, [Gamestorming](https://www.amazon.com/Gamestorming-Playbook-Innovators-Rulebreakers-Changemakers/dp/0596804172/ref=sr_1_1?keywords=gamestorming&qid=1547798161&sr=8-1) is a good book to look into 😉

[![Cover of the Gamestorming book. DDD Event Storming itself was influenced by the game storming catalog of activities]({{site.url}}/imgs/2019-02-25-how-to-max-out-ddd-big-picture-event-storming-with-other-workshops/game-storming.jpg)](https://www.amazon.com/Gamestorming-Playbook-Innovators-Rulebreakers-Changemakers/dp/0596804172/ref=sr_1_1?keywords=gamestorming&qid=1547798161&sr=8-1)

[Try it yourself](/misadventures-with-big-design-up-front/)

This was the 19th and last post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). It all started [here](/misadventures-with-big-design-up-front/).
