---
layout: single
title: "How to maintain a business partnership about refactoring?"
date: 2018-10-11 13:03
comments: true
categories:
 - refactoring
 - planning
 - large-scale-refactoring-sponsorship-series
keywords: "Maintain a business partnership, refactoring"
description: "Becoming business partners grants us freedom to refactor. Careful though, We must not over-abuse this trust if we want to keep our privileges. Practices like Kanban-style timeboxing and focus on high return on investment refactorings help us to maintain the business partnership."
header:
   teaser: /imgs/2018-10-04-how-to-maintain-a-business-partnership-about-refactoring/spiderman-teaser.jpeg
   og_image: /imgs/2018-10-04-how-to-maintain-a-business-partnership-about-refactoring/spiderman-og.jpeg
published: false
---
_Becoming business partners grants us freedom to refactor. Careful though, we must not over-abuse this trust if we want to maintain this partnership._

Remember my team from the [previous post](/become-a-business-partner-and-stop-begging-for-refactoring/)? The one that had managed to build a great business partnership with its sponsors. I did not tell the full story though. After a while, we wanted to see something different and a few developers moved to other teams. Eventually, new devs and a new team lead where brought in. Unfortunately, the team's practices did not survive the change. Not long after, a few misguided refactoring broke the business partnership.

![A Drawing of spider man. SpiderMan's uncle (Ben) told him "With great power comes great responsibility". As developers, we must us to use our freedom to refactor wisely, to maintain our business partnership]({{site.url}}{{site.baseurl}}/imgs/2018-10-04-how-to-maintain-a-business-partnership-about-refactoring/spiderman.jpeg)

> With great power, comes great responsibility. [Uncle Ben](https://en.wikipedia.org/wiki/Uncle_Ben)

As business partners, we can enjoy freedom to refactor. Maintaining this partnership should be one of our top priorities. Keep on doing what got us in there is the obvious first thing to do. We also need not to over-abuse this trust. Doing unnecessary refactoring is a tremendous trust killer. Here are a few practices to avoid this trap and maintain this business partnership.

This the 15th and last post in a [series about how to get sponsorship for large scale refactoring]({{site.baseurl}}/categories/#large-scale-refactoring-sponsorship-series). If you haven't already, I recommend you start from [the beginning](/how-to-convince-your-business-to-sponsor-a-large-scale-refactoring/).

## [Kanban](https://en.wikipedia.org/wiki/Kanban_(development))-style timeboxing

Timeboxing is a good way to avoid wasting time on refactoring. Unfortunately, timeboxing is always a lot easier said than done. Pausing a refactoring between 2 commits or in the middle of a large find-replace wastes time too! Expanding the time box is not a solution either. It makes both measuring and enforcing the time spent refactoring very tricky. 

Do you remember [Rachel Davies](https://twitter.com/rachelcdavies) talk I mentioned in my [previous post](/become-a-business-partner-and-stop-begging-for-refactoring/)? Her team managed to get this right. Their trick was to negotiate a refactoring bandwidth of n developers full time. This has many advantages:

*   First, it's a lot easier to measure the time spent refactoring. That's great for continuous improvement and trust with business people.
*   Second, it involves less task switching. Once we start a refactoring, we don't stop until it's done.
*   Finally, it's kanban-style slack time. Under extraordinary deadline, the refactorers can temporarily switch to other more urgent work.

> 💡 Timeboxing with 'x team members full time' is a lot easier to do than with typical time constraints.

## Focus on high return on investment refactorings

Obvious, but it's very easy to waste time on the wrong refactoring. There are a data-driven techniques to stick to the most important refactorings.

> 💡 Use data to spot the best refactoring to work on.

[![Screenshot of the hotspot overview screen from Code Scene product. Refactoring hotspots first is a great way to maintain a business partnership]({{site.url}}{{site.baseurl}}/imgs/2018-10-04-how-to-maintain-a-business-partnership-about-refactoring/hotspots-dashboard-overview.jpg)](https://codescene.io/docs/guides/technical/hotspots.html)

1.  Some tools, like [CodeScene](https://codescene.io/) show us the [hotspots](https://codescene.io/docs/guides/technical/hotspots.html) in our codebase. Working on these cannot be a bad move !
2.  [```FIXME XXXX``` comments](/a-seamless-way-to-keep-track-of-technical-debt-in-your-source-code/) is a trick to collaboratively identify the most painful problems. Whenever a developer is bothered by badly designed code, he would add a ```FIXME``` comment or a ```X``` to an existing one. After a few weeks, the team can simply start by refactoring the ```FIXME``` comments with the most stars!
3.  [Doc Norton](https://www.youtube.com/watch?v=Env47tQewIA) suggests tracking 4 metrics to detect if a code base is degrading. As soon as we see these metrics degrade for a section of the code, we should think hard about refactoring it.

[![Snapshot of Doc Norton's "The Technical Debt Trap" talk. He presents 4 metrics to monitor to spot refactoring, and to maintain a business partnership]({{site.url}}{{site.baseurl}}/imgs/2018-10-04-how-to-maintain-a-business-partnership-about-refactoring/doc-norton-4-metrics.jpg)](https://www.youtube.com/watch?v=Env47tQewIA)

## I'm done!

I hope these practices will help you to maintain your business partnership. Business partners have great freedom about how to tackle refactoring. If you've been in this situation before, you might have come up with innovative practices. Please share them below, I'm sure it will interest a lot of people.

This was the last post in a [series about how to get sponsorship for large scale refactoring]({{site.baseurl}}/categories/#large-scale-refactoring-sponsorship-series). I've been writing about refactoring for almost 4 months. I'll be glad to write about something different next week! Don't worry though, I'm sure I'll come back to this topic again. [Stay Tuned](http://eepurl.com/dxKE95) !
