---
layout: single-mailing-list
title: "5 Views to Capture the Outputs of an Event Storming workshop"
date: 2019-06-06
comments: true
categories:
 - event storming
 - collaborative work
 - ddd
 - documentation
 - event-storming-outputs-series
description: "Recording the full Event Storming board is a waste of time. Here are 5 examples of quick, focused, and digestible views that capture the board's knowledge. Keep track of next actions and domain definitions, draw a context map, draft user stories, list messages between services."
header:
   teaser: /imgs/2019-04-25-5-views-to-capture-the-outputs-of-an-event-storming-workshop/recording-event-storming-teaser.jpeg
   og_image: /imgs/2019-04-25-5-views-to-capture-the-outputs-of-an-event-storming-workshop/recording-event-storming-og.jpeg
---
_Recording the full [Event Storming](https://www.eventstorming.com/) board is a waste of time. Here are examples of quick, focused, and digestible views that capture the board's knowledge._

![A drawing of a microphone, a camera and a notepad in front of an Event Storming Design Board. How to capture the outputs of an Event Storming board is a recurring question]({{site.url}}/imgs/2019-04-25-5-views-to-capture-the-outputs-of-an-event-storming-workshop/recording-event-storming.jpeg)

This is the second half of a [mini-series about how to capture the outputs of an Event Storming workshop](/categories/#event-storming-outputs-series). If you did not yet, I recommend you to read [the first half first](/how-to-capture-the-outputs-of-an-event-storming-workshop/).

The previous post suggested capturing single focus views of an Event Storming learnings. Here are some examples of such views.

> 💡 Do pattern matching on Event Storming board to 'grep' out focused views to take out of a session.

## Capture Next Actions

During the workshop, we use pink post-its to capture subjects we cannot solve on the spot. These might be questions, quick fixes or problems.

![A pink Event Storming post-it. These post-its represent problems, questions or hotspots. They usually require extra work after the session, either to clarify, to explore or to fix ASAP]({{site.url}}/imgs/2019-04-25-5-views-to-capture-the-outputs-of-an-event-storming-workshop/problem.png)

Before closing the session, it's a good idea to go through all these pink post-its and identify the next steps. These might be homework to do before the next session, tasks to add to the team's backlog or refactorings to do.

## Capture Domain Definitions

Open discussions between technical and business experts will clarify a lot of terms. This is the essence of [Domain Driven Design](https://en.wikipedia.org/wiki/Domain-driven_design). The practice is to write these down on definition post-its: usually large and yellow.

![A domain definition Event Storming post-it. We use these post-its to capture domain definitions during the workshop, while everyone is present. These definitions are worth persisting somewhere to serve as reference]({{site.url}}/imgs/2019-04-25-5-views-to-capture-the-outputs-of-an-event-storming-workshop/domain-definition.png)

It's a good idea to capture these definitions somewhere. One way is to stick them on the team's workspace walls. Another is to add them in the code with [Living Documentation](https://leanpub.com/livingdocumentation). How to do it is up to the team!

## Capture the [Context Map](https://www.infoq.com/articles/ddd-contextmapping)

> 💡 Event Storming is a very effective way to build a DDD context map.

I've mentioned it [before](/drafting-a-functional-architecture-vision-with-ddd-event-storming-part-1/). During big picture event storming, we can identify the DDD bounded contexts. The context map is already on the Event Storming design board. It's only lost within all the other post-its!

[![A photo of an event storming board with bounded contexts materialized. Event Storming is a great tool to discover and draw the DDD bounded contexts, unfortunately, it's not a good tool to persist the context map.]({{site.url}}/imgs/2019-04-25-5-views-to-capture-the-outputs-of-an-event-storming-workshop/junior-startup-board-small.jpg)]({{site.url}}/imgs/2019-04-25-5-views-to-capture-the-outputs-of-an-event-storming-workshop/junior-startup-board.jpg)

It's very fast to sketch a context map on a piece of paper or a flip chart. It will also be a lot clearer to any later reader.

[![Drawing of the context map from the board above. Once captured on a sheet of paper, the DDD bounded contexts is a lot more readable, persistable and shareable.]({{site.url}}/imgs/2019-04-25-5-views-to-capture-the-outputs-of-an-event-storming-workshop/napkin-ddd-context-map-small.jpg)]({{site.url}}/imgs/2019-04-25-5-views-to-capture-the-outputs-of-an-event-storming-workshop/napkin-ddd-context-map.jpg)

## Capture user stories

{% assign figure_path="/imgs/2019-04-25-5-views-to-capture-the-outputs-of-an-event-storming-workshop/picture-that-explains-everything.jpg" | absolute_url %}
    
{% assign figure_alt="The picture that explains everything: how post-its chain together on a Design-Level Event Storming board" %}
    
{% capture figure_caption %}
The picture that explains everything by [Alberto Brandolini](https://twitter.com/ziobrando) from his [Introducing Event Storming](https://leanpub.com/introducing_eventstorming) book
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

During design-level event storming, we will start to identify Aggregates and business rules. They always appear inside this post-it pattern:

![Drawing of the pattern of Event Storming post-its around a business rule]({{site.url}}/imgs/2019-04-25-5-views-to-capture-the-outputs-of-an-event-storming-workshop/business-rule-pattern.png)

We have discussed the context of the business rule during the session and add a few comments. This is a good candidate for a user story. "When user X does Y, he wants to see Z, in order to ...". As [I wrote about before](/how-to-max-out-ddd-big-picture-event-storming-with-other-workshops/), it's also the perfect situation to do a bit of [Example Mapping](https://cucumber.io/blog/example-mapping-introduction/).

## Capture Input & Output Messages

At some point, most systems need to interact with external systems to be of any use. At the end of the Event Storming session, External Systems should be visible as blue post-its.

Again the [Picture that Explains Everything](https://leanpub.com/introducing_eventstorming) shows us that we can spot interactions in 3 ways:

* Input messages:

![Drawing of the pattern of Event Storming post-its for inbound messages]({{site.url}}/imgs/2019-04-25-5-views-to-capture-the-outputs-of-an-event-storming-workshop/input-message-pattern.png)

* Output messages triggered by an actor:

![Drawing of the pattern of Event Storming post-its for outbound messages triggered by an actor]({{site.url}}/imgs/2019-04-25-5-views-to-capture-the-outputs-of-an-event-storming-workshop/actor-output-message-pattern.png)

* Output messages triggered by an event:

![Drawing of the pattern of post-its for outbound messages triggered by an event and a policy. (The policy only appears at the design-level event Storming, so you might not have it in a Big Picture Event Storming).]({{site.url}}/imgs/2019-04-25-5-views-to-capture-the-outputs-of-an-event-storming-workshop/event-output-message.png)

We can take some time to go through the board and spot these patterns. Every match is an input or output message for the system. We get even more benefits if we are zooming on a single bounded context in a Design-Level Event Storming. In this case, we should have modeled other contexts as external systems. We can also use any Read Model information to detail the content of messages.

We can then record this 'API' view of the board on a flip-chart. This can be very useful, especially if we are building a service oriented system.

## Keep Maintenance in mind

Whatever the output, we should use cheap ways to record information. Photos, information walls or sketches fit the bill. We could also decide to invest in always up-to-date [living documentation](https://leanpub.com/livingdocumentation).

[![Cover of Cyrille Martraire's Living Documentation book. It provides simple ways to capture the outputs of a DDD Event Storming workshop directly in the code]({{site.url}}/imgs/2019-04-25-5-views-to-capture-the-outputs-of-an-event-storming-workshop/living-documentation.jpg)](https://leanpub.com/livingdocumentation)

More expensive solutions will almost always be a bad use of the team's time. Things will change, it's a cheaper to build the system and keep the knowledge live in everyone's heads. Finding out what not to do is key in maintaining a sustainable pace.

## You have the answer!

The exploratory and intangible nature of Event Storming makes people uneasy. As a result, you might have faced puzzled faces when you first suggested to run an Event Storming.

Maybe you are only planning to run your first Event Storming. Whatever your situation, you now have concrete answers to convince action oriented people.

Give it a try! If you have other questions, check my [full Event Storming walkthrough](/categories/#squash-bduf-with-event-storming-series).
