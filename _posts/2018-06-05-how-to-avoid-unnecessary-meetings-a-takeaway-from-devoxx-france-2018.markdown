---
layout: single-mailing-list
title: "How to avoid unnecessary meetings (a takeaway from Devoxx France 2018)"
date: 2018-06-21 12:48
comments: true
categories:
 - personal-productivity
 - remote
 - continuous improvement
keywords: "Avoid unnecessary meetings, Avoid useless meetings, Devoxx France 2018, How to avoid unproductive meetings, Remote Decision making"
description: "Take decisions asynchronously and avoid unnecessary meetings. This is the summary of a great talk from Bertrand Delacretaz which I attended at Devoxx France 2018. It details the techniques and tools used by the open source community manages to take good decisions while being all remote."
header:
  og_image: /imgs/2018-06-05-how-to-avoid-unnecessary-meetings-a-takeaway-from-devoxx-france-2018/decision.jpg
---
I had the chance to attend [Devoxx France](https://www.devoxx.fr/) this year in Paris. Here is the most important lesson I learned :

> How to avoid unnecessary meetings with asynchronous decision making

[Bertrand Delacretaz](https://twitter.com/bdelacretaz), a member of the Apache foundation. He gave a great talk about how the open source community handles decision taking. Open source developers are often all over the world, often in different timezones. Meetings are not an option for them. Still, they manage to make great decisions !

![Drawing of a decision hammer]({{site.url}}{{site.baseurl}}/imgs/2018-06-05-how-to-avoid-unnecessary-meetings-a-takeaway-from-devoxx-france-2018/decision.jpg)

Even if you don't work remotely, avoiding unnecessary meetings is always a great thing !

1.  You'll have more time to do productive and interesting stuff
2.  You'll avoid interruptions and be even more productive
3.  If you are an introvert, it's going to be easier to contribute to the decision
4.  As people have more time to think through the decision, the result is usually better

<iframe width="560" height="315" src="https://www.youtube.com/embed/xkC4zjtAyRc" frameborder="0" allow="autoplay; encrypted-media" allowfullscreen></iframe>

For a full walkthrough, I encourage you to watch [the talk in full length](https://www.youtube.com/watch?v=xkC4zjtAyRc). If you don't speak french, an english version is available [here](https://www.youtube.com/watch?v=lF-bjxB2Nrk&t=217s). Finally, slides are also available in [french](https://fr.slideshare.net/bdelacretaz/prise-de-dcisions-asynchrone-devoxx-france-2018) and [english](https://fr.slideshare.net/bdelacretaz/asynchronous-decision-making-foss-backstage-2017).

> 💡 Even if you don't work remotely, avoiding unnecessary meetings is always a great thing !

## Crash course

For the hasty folks among you, here is a summary. The decision making follows 4 stages :

1.  Open discussion and brainstorming. People discuss openly and suggest ideas in a free form manner.
2.  Emergence of options. After enough discussion, a few options will start to make more sense than others.
3.  Coming to a consensus. Someone will draft a formal proposal. People will discuss and amend this proposal until they reach consensus. [Consensus](http://www.dictionary.com/browse/consensus) is not [unanimity](http://www.dictionary.com/browse/unanimous) !
4.  Decision. After consensus, the benevolent decision owner validates the decision once and for all.

Until the decision is taken, the process can move forward but also backward.

## Tooling

We need only two tools to make this possible :

1.  For discussion, brainstorming and emergence of options, use a very open and chatty tool. The speaker called this a "shared asynchronous communication channel". This can be an online chat, a mailing list or Github issues ([ex](https://github.com/apache/cordova-discuss/issues)). It could even be a real life whiteboard if you all had access to it.
2.  From drafting the proposal to the end, prefer a structured and chronological tool. The speaker suggests using a "shared case management tool". Draft the proposal in this tool, and use comments to log the latest steps of the decision taking. He had examples using Jira issues ([ex](https://issues.apache.org/jira/browse/SLING-7231)) or Github pull requests ([ex](https://github.com/apache/cordova-discuss/pulls)). To confirm the decision, close the case. The tool will record which version of the decision was exactly taken.

## Architecture Decision Record

![Drawing of an Architecture Decision Record which work great with asynchronous decision making]({{site.url}}{{site.baseurl}}/imgs/2018-06-05-how-to-avoid-unnecessary-meetings-a-takeaway-from-devoxx-france-2018/adr.jpg)

[ADR](http://thinkrelevance.com/blog/2011/11/15/documenting-architecture-decisions) is the practice of documenting architecture decisions. It makes sure we remember why we took a decision. This can be very useful to know how to deal with the existing software. A widespread practice for ADRs is to use simple text files in git. There are even [tools for that](https://github.com/npryce/adr-tools). This looks like a perfect fit for decision making using git pull requests ! I'll write a post about that when I get the chance to try.

> 💡 Git pull requests based asynchronous decision making is a perfect fit for Architecture Decision Records.

## Currently experimenting

I am currently trying this whole decision making technique at work. We are still in the brainstorming phase. We are using our internal chat app for that. Options are starting to emerge, but we did not move to the consensus part yet. I'll write a return on experience post when we reach the end.
