---
layout: single-mailing-list
title: "Event Storming lessons from Post-It haters"
date: 2019-05-16
comments: true
categories:
 - event storming
 - architecture
 - collaborative work
 - ddd
 - incremental-software-development
description: "Event Storming is a group design activity that uses *a lot* of post its. Unfortunately, post-its are not for every culture! After going through why post-its work, we'll go over 2 alternatives: homework & feedback and walking skeleton. Could we also use these techniques to complement Event Storming?"
header:
   teaser: /imgs/2019-04-07-event-storming-lessons-from-post-it-haters/event-storming-no-more-post-its-teaser.jpeg
   og_image: /imgs/2019-04-07-event-storming-lessons-from-post-it-haters/event-storming-no-more-post-its-og.jpeg
---
_After going through why [Event Storming](https://www.eventstorming.com/) uses post-its, we'll go over alternatives. We'll then see how to use these techniques to improve Event Storming!_

![Drawing of an event storming board with a banner on top of it "We won't stick to stickies". Some people might not be at ease with all the post-its and physical engagement involved in Event Storming]({{site.url}}/imgs/2019-04-07-event-storming-lessons-from-post-it-haters/event-storming-no-more-post-its.jpeg)

We regularly launch new ambitious projects [at work](https://twitter.com/Work_at_Murex). Event Storming is becoming the de-facto standard to get everyone on board quickly. A few months ago though, I was asked to animate an Event Storming... Without post-its! Attendees were not at ease with walking around and discussing in front of a wall of post-its.

Indeed, Event Storming uses *a lot* of (orange) post-its. If you hate those, it might be difficult to swallow...

## Why Event Storming uses Post-Its ?

Event Storming is not alone here: [User Story mapping](https://www.visual-paradigm.com/guide/agile-software-development/what-is-user-story-mapping/), [Example mapping](https://cucumber.io/blog/example-mapping-introduction/), retrospectives... most of these use post its. [Gamestorming ](https://www.goodreads.com/book/show/9364936-gamestorming)contains many creative activities relying on post-its.

![Cover of the GameStorming book that contains tons of creative design activities which many rely on post-its]({{site.url}}/imgs/2019-04-07-event-storming-lessons-from-post-it-haters/game-storming.jpg)

Here are a few reasons why post-its work well for creative workshops:

*   They are not set in stone. It's easy to move them around, and to throw them away. This unlocks a quick feedback and improvement dynamic.
*   They are introvert friendly. Speaking up in front of everyone can be a challenge for introverts. They will find it a lot easier to write something down and stick it on the wall.
*   They work well around [HiPPOs](https://whatis.techtarget.com/definition/HiPPOs-highest-paid-persons-opinions), who risk silencing down any other idea at the time they enter the room
*   People need to stand up and walk to stick their post-its, which creates engagement
*   Humans are visual animals. We are well equipped to grasp complex topics at a glance at a wall of post-its. We were never built to learn through long documents or emails

{% assign figure_path="/imgs/2019-04-07-event-storming-lessons-from-post-it-haters/Lascaux_painting.jpg" | absolute_url %}
    
{% assign figure_alt="Photo of pre-historic paintings found in Lascaux cave in France. Human beings were made to think and communicate through visual medium." %}
    
{% capture figure_caption %}
By [Prof saxx](https://commons.wikimedia.org/wiki/User:Prof_saxx) on [Wikipedia](https://en.wikipedia.org/wiki/Lascaux) under [Creative Commons](https://en.wikipedia.org/wiki/en:Creative_Commons) [Attribution-Share Alike 3.0 Unported](https://creativecommons.org/licenses/by-sa/3.0/deed.en)
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

*   Finally, such visual radiators are an invitation and support for discussion

It's not by accident that designers were the first to use post-its in their creative games. (Check [Why are designers obsessed with post-it notes ?](https://www.quora.com/Why-are-designers-obsessed-with-Post-It-Notes))

Traditional (doc and email based) architecture approach take months to get to something. 

> 💡 Thanks to post-its, Event Storming speeds up drafting an architecture from months to days !

## What alternatives do we have ?

Ok, got it, you still don't want to use post-its.

In [Want To Be A Great Designer? Ban Post-It Notes](https://www.fastcompany.com/90147380/want-to-be-a-great-designer-ban-post-it-notes). The author suggests we should drop [Design Thinking](https://en.wikipedia.org/wiki/Design_thinking) and do Design Building ! The idea is to skip the 'post-its' phase completely. Start building something and get feedback. He suggests 2 flavors of that.

### Homework and Feedback

Every participant starts by designing something on their own. Next step is to share it with others to get feedback. They then rework their design and share again ... and so on until they reach a consensus.

Suppose we want to get out of the workshop with a target functional architecture. People could draft one on their own, and then all share their design in a group session. Then repeat ...

The more realistic the design, the more interesting the discussions will be. Drawing ideas from Event Storming and DDD, participants could:

*   [Identify core, supportive and generic bounded contexts](/build-or-buy-software-identify-your-core-functional-areas-with-event-storming-and-ddd/)
*   [Highlight upstream / downstream bounded context relationships](/check-that-core-areas-have-the-upper-hand-with-event-storming-and-ddd/)
*   [Define interaction patterns between bounded context](/focus-on-core-domain-with-relationships-from-ddd-and-event-storming/)
*   ...

Event storming creates high value secondary outcomes, like problem detection & knowledge transfer. I don't know how this format would perform according to these.

### Walking Skeleton

As I said, the more realistic the design, the better. Pushing this logical to its conclusion, we could build a [walking skeleton](http://wiki.c2.com/?WalkingSkeleton). 

Here is how to use the Walking Skeleton to draft an architecture. Setup a _**single**_ small end to end and high skill team. This team can start by building a first end-to-end feature. They'll collect feedback and improve the architecture with every features they'll add.

Here are the benefits of the Walking Skeleton

*   All design and architecture is done with code, by the team working on real problems. [Not in big upfront design sessions](/misadventures-with-big-design-up-front/)
*   The team delivers end to end features from sprint 1
*   We can test [Non Functional Requirements](https://en.wikipedia.org/wiki/Non-functional_requirement) can also from day 1
*   Finally, the team structure can grow and emerge from the initial team's work.

[Alberto Brandolini](https://twitter.com/ziobrando) (father of Event Storming) suggests the team can maintain a functional architecture as it builds the system. Check [Strategic Domain Driven Design with Context Mapping](https://www.infoq.com/articles/ddd-contextmapping) for more details. In [Living Documentation](https://leanpub.com/livingdocumentation), [Cyrille Martraire](https://twitter.com/cyriux) suggests to go even further. The team can actually generate the diagram from the code. That's as realistic as diagram can be!

![Cover of Living Documentation book which explains how to generate a domain context map out of the source code. These are as realistic as diagrams can be!]({{site.url}}/imgs/2019-04-07-event-storming-lessons-from-post-it-haters/living-documentation.jpg)

### Apart from that ?

Surprisingly little! Searching Google with many post-its hater keywords I only found these :

*   [The Dark Side of Sticky Notes](https://www.theatlantic.com/technology/archive/2010/07/the-dark-side-of-sticky-notes/60543/) Which highlights the dangers of the glue for people
*   [Wait, We've All Been Using Post-It Notes Wrong This Entire Time?!](https://www.eonline.com/news/746910/wait-we-ve-all-been-using-post-it-notes-wrong-this-entire-time) Which explains that we should be unfolding post its from the side rather than from the bottom !
*   [In Defense of Post-its](https://www.nngroup.com/articles/post-it-in-ux/) explains that post-its are not a silver bullet and can be miss-used. Fortunately, Event Storming got it right 😀.

## Mixing the best of all Worlds  

The interesting conclusion is that none of these approach exclude Event Storming! Mixing all strategies, here might be the best way to use Event Storming:

1.  Setup a tight team of domain experts and skilled developers
2.  Do an Event Storming all together
3.  Build a walking skeleton
4.  Get feedback and learn
5.  Re-do Event Storming (or [others](/how-to-max-out-ddd-big-picture-event-storming-with-other-workshops/))
6.  Refactor and improve the walking skeleton
7.  etc...

The true value of Event Storming is in fast communication within a [whole team](https://en.wikipedia.org/wiki/Extreme_programming_practices#Whole_team). By removing middle-men, we save time, money and stress.

> 💡 Don't forget that Event Storming builds on a cross-disciplinary team and incremental architecture!

<blockquote class="twitter-tweet" data-conversation="none" data-lang="fr"><p lang="en" dir="ltr">&quot;It&#39;s not stakeholder knowledge but developers&#39; ignorance that gets deployed into production&quot; <a href="https://twitter.com/hashtag/QuoteServer?src=hash&amp;ref_src=twsrc%5Etfw">#QuoteServer</a></p>&mdash; Alberto Brandolini (@ziobrando) <a href="https://twitter.com/ziobrando/status/736119556733849600?ref_src=twsrc%5Etfw">27 mai 2016</a></blockquote>
<script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>
