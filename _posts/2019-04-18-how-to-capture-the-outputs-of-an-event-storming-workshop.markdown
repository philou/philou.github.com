---
layout: single-mailing-list
title: "How to Capture the Outputs of an Event Storming Workshop?"
date: 2019-05-23
comments: true
categories:
 - event storming
 - collaborative work
 - ddd
 - event-storming-outputs-series
description: "Event Storming builds 'shared understanding'. This is often not enough to bring key action-oriented people in! Here are concrete techniques to convince them: build a decision board, document with fast single focus views and invite people for a Safari."
header:
   teaser: /imgs/2019-04-18-how-to-capture-the-outputs-of-an-event-storming-workshop/share-understanding-so-what-teaser.jpeg
   og_image: /imgs/2019-04-18-how-to-capture-the-outputs-of-an-event-storming-workshop/share-understanding-so-what-og.jpeg
---
_[Event Storming](https://www.eventstorming.com/) builds 'shared understanding'. This is often not enough to bring key action-oriented people in! Here are concrete techniques to convince them._

![]({{site.url}}/imgs/2019-04-18-how-to-capture-the-outputs-of-an-event-storming-workshop/share-understanding-so-what.jpeg)

When I started to run Event Storming at work, I would often receive puzzled looks. Action oriented people would ask: "What are the outputs of this expensive Event Storming workshop you want us to do?". Here was my typical answer. "We'll get shared understanding, identify quick fixes and hotspots. We might also be able to draft a functional architecture..."

Putting shared understanding as the main output did not convince them.

Since then, thanks to a few early adopters, we've been able to make the value of Event Storming more obvious. It is becoming a de-facto standard for early architecture of new features. To achieve this, we had to better explicit what the outputs of Event Storming are.

But first, let's go through the usual answer.

## Shared Understanding

Wherever you'll look on the web, you'll get the same answer.

> 💡 The main output of an Event Storming workshop is the shared understanding.

This is true. This *is* the main output of Event Storming.

Let's see what this answer means. Event Storming can kick-start the team in a state of high bandwidth communication. The team will remain hyper-productive as long as it stays in this state.

This ['jelled'](http://www.hans-eric.com/2007/08/13/is-your-team-jelled/) state opens up many improvements:

*   it reduces the need for processes as people know what's the good thing to do
*   it simplifies code as people understand the problem better

Finally it also leads to a sustainable rhythm of steady refactoring:

1.  Event Storm
2.  Start building something
3.  Learn and get feedback
4.  Event Storm ([or other](/how-to-max-out-ddd-big-picture-event-storming-with-other-workshops/)) again, with the benefit of this new knowledge
5.  Incrementally refactor and add new features
6.  Learn and get more feedback
7.  ...

This is the main output of Event Storming. Let's now see how to capture others in a concrete manner.

## Capturing decisions

![Drawing of a flipchart used to collect decisions during a session of Event Storming. Event Storming is a key opportunity to take some decisions fast.]({{site.url}}/imgs/2019-04-18-how-to-capture-the-outputs-of-an-event-storming-workshop/decision-flipchart.jpeg)

Many discussions happen during an Event Storming sessions. Some of these discussions will lead to decisions. It's a good idea to keep track of these decisions somewhere to avoid forgetting them.

I tried to use special post-its to keep track of decisions, to no avail. The Event Storming post-it bestiary is already complicated enough. In the end, Alberto gave us the right answer. The simplest thing to do is to keep a flip-chart close to the design board and record decisions there.

<blockquote class="twitter-tweet" data-lang="fr"><p lang="en" dir="ltr">Depends on the decisions, and on the context. Usually putting decisions on a flip chart and sharing pictures might do the trick.</p>&mdash; Alberto Brandolini (@ziobrando) <a href="https://twitter.com/ziobrando/status/1106599987625058304?ref_src=twsrc%5Etfw">15 mars 2019</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

A photo of this decision board can serve as a minimal log of what happened during a session.

## Capture outputs through curation and views

While you are in an Event Storming session, the design board remains crystal clear. Unfortunately, if you get back to it after a few weeks, you'll have a hard time making any sense out of it. That's why keeping the full board, detailed photos of it, or a digital re-transcription of does not work very well.

There is something we can do though. We can capture filtered and single focus views, making the information digestible. A [context map](https://www.infoq.com/articles/ddd-contextmapping) for example, is easy to draw after an Event Storming session. [Next week's post](/5-views-to-capture-the-outputs-of-an-event-storming-workshop/) will go into more details about different views.

> 💡 Capturing filtered and single focus views of the Event Storming board, makes the information more digestible and persistent.

[![Sample DDD Context Map sketched on the back of a napkin after an Event Storming workshop. This kind of low-tech view give the highest bang for bucks in terms of documenting the output of the Event Storming]({{site.url}}/imgs/2019-04-18-how-to-capture-the-outputs-of-an-event-storming-workshop/napkin-ddd-context-map-small.jpg)]({{site.url}}/imgs/2019-04-18-how-to-capture-the-outputs-of-an-event-storming-workshop/napkin-ddd-context-map.jpg)

## Share all this with a Safari

If we need to share the outcome of an Event Storming session, we'll be better equipped with these views. We can invite people to a Safari following these steps:

1.  With the help of one or more attendees, go through the full narrative
2.  Then go over and explain all the views

This is good way to share as much information as possible in the shortest time possible!

## To be continued

This was the first half in a [mini-series about capturing the outputs of an Event Storming workshop](/categories/#event-storming-outputs-series). [Next week's post](/5-views-to-capture-the-outputs-of-an-event-storming-workshop/) will dive in more details in the different kind of 'views' we can capture out of Event Storming.

[Continue reading...](/5-views-to-capture-the-outputs-of-an-event-storming-workshop/)
