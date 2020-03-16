---
layout: single-mailing-list
title: "7 Remote pair programming best practices Q&A - Part 1"
date: 2019-06-27
comments: true
categories:
 - pair programming
 - remote
 - remote-pair-programming-best-practices-series
description: "Remote pair programming brings surprising benefits to a team! Daunting at first, it is quite manageable with the good practices. Learn how to workaround the connection lag with the pomodoro technique. Remote pair programming is also tiring, here are a few habits to stick to a sustainable pace."
header:
   teaser: /imgs/2019-06-03-7-remote-pair-programming-best-practices-q-and-a-part-1/remote-pairing-teaser.jpeg
   og_image: /imgs/2019-06-03-7-remote-pair-programming-best-practices-q-and-a-part-1/remote-pairing-og.jpeg
---
_Remote pair programming brings surprising benefits to a team! Daunting at first, it is quite manageable with the good practices. Here are the first 2 of 7!_

![Drawing of a pair of programmer doing remote pair programming from different regions: mountain and beach. One of the main benefits of remote pair programming is allowing people to work from wherever they like.]({{site.url}}/imgs/2019-06-03-7-remote-pair-programming-best-practices-q-and-a-part-1/remote-pairing.jpeg)

A few years ago, [Ahmad](https://ahmadatwi.me) and I worked together in a distributed team. Ahmad and [Mohammad](https://www.linkedin.com/in/mohammad-rida-a2084527/?originalSubdomain=lb) were working from Beirut while the rest of the team was in Paris. As you might know, this setting is [a recipe for a split brain team](https://martinfowler.com/articles/remote-or-co-located.html). Practicing almost full time [pair programming](/categories/#pair-programming) was _the_ thing that kept the team spirit.

For the better and the worse, remote work is here to stay. Remote pair programming offers other advantages on top of improved team spirit. It enables people to work from wherever they fancy. Finally the introvert in me found it more sustainable than in person pairing.

A few weeks ago, Ahmad wrote [a guest post about pair programming best practices](/10-pair-programming-questions-answers/). Let's build on this to address remote pair programming.

> 💡 Remote or not, pair programming remains pair programming!

Most pair programming best practices also apply to remote pairing. This is not enough though, remote pair programming has its own challenges. Here are questions we often get from teams envisioning remote pair programming.

## Lag is preventing us from remote controlling the screen, what can we do?

We were working between Paris and Beirut, where local connection was not always very fast. Slow typing, letters appearing in different orders, shortcuts that don't work, different keyboard layouts... We know the problem!

To stick to local code editing, we would send the code over when we switched between [driver and navigator](https://gist.github.com/jordanpoulton/607a8854673d9f22c696). As a result, we would not switch as often as when doing local pair programming. Though not ideal, this was the best workaround we found.

### Pomodoro technique

{% assign figure_path="/imgs/2019-06-03-7-remote-pair-programming-best-practices-q-and-a-part-1/pomodoro-technique.jpg" | absolute_url %}
    
{% assign figure_alt="Cheatsheet for the Pomodoro technique. The Pomodoro technique works great to switch the control between buddies while doing remote pair programming" %}
    
{% capture figure_caption %}
By [Tom Woodward](https://www.flickr.com/photos/bionicteaching/), on [Flickr](https://www.flickr.com/photos/bionicteaching/45191993455), under [CC BY-SA 2.0](https://creativecommons.org/licenses/by-sa/2.0/) license
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

To make sure we shared the keyboard between parties, we used the [Pomodoro technique](https://en.wikipedia.org/wiki/Pomodoro_Technique). Every 25 minutes, we would take a 5 minutes break, and send the code over.

If code was in a good enough state, then committing was our preferred way to pass over the code. Otherwise, we would send a patch or pull from each other's local git repo. It might be possible to script this and make the switch a breeze.

An extra second order benefit of this technique is that it pushed us to do [small commits](http://www.conifersystems.com/2008/11/05/the-benefits-of-small-commits/), which is already by itself a good thing.

### Screen sharing

![Photo of Ahmad and myself while remote pair programming. Screen sharing and dual screen was key in making this work]({{site.url}}/imgs/2019-06-03-7-remote-pair-programming-best-practices-q-and-a-part-1/remote-pairing-setup.resized.jpg)

Seeing your buddy's screen is important to understand what's going on. Dual screen was key to make this work: one screen for the work, one screen for your buddy's face.

Some screen shares, like [Slack](https://slack.com) and [Microsoft Teams](https://teams.microsoft.com/downloads) have multi cursors. This is a killer feature to highlight code. At first, we very often found ourselves pointing to a line on the screen with our finger. This is one of the most frustrating thing to do when remote pair programming. Before multi cursors, we would end up saying things like "at line 64...". This was a pain for everyone.

### Other tools

<iframe width="560" height="315" src="https://www.youtube.com/embed/vq5FzSPmu-I" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

Some tools promise an improved pair programming experience: [Floobits](https://floobits.com/), [Saros](https://www.saros-project.org/) for [Eclipse](https://www.eclipse.org/ide/), [Live Share for Visual Studio](https://visualstudio.microsoft.com/services/live-share/) or the new ones like [Use Together](https://www.use-together.com/). They let you concurrently edit code, which fixes the lag problem.

Unfortunately for us, we did not manage to get any of those to work:

*   Saros was not a big enough reason for us to leave [Intellij](https://www.jetbrains.com/idea/) for Eclipse
*   We could not use Floobits for company policy reasons
*   As Java programmers, Visual Studio was not an option
*   Use Together did not exist at the time

That said, these tools only synchronize editor windows of the IDEs. They don't save you from sharing your screen, to see the test execution for example.

Other, like [Ham Vocke](https://www.hamvocke.com/), [have reported success with TMux](https://www.hamvocke.com/blog/remote-pair-programming-with-tmux/). If your team is not using an IDE, it's a great way to work collaboratively on the same terminal.

## Pairing is tiring, what about remote pairing?

![Photo of a tired cat. Remote pair programming can be exhausting, you'll have to put special practices in place to accommodate with this and stick to a sustainable pace]({{site.url}}/imgs/2019-06-03-7-remote-pair-programming-best-practices-q-and-a-part-1/tired-cat.jpg)

When I first started intense pairing, I felt a wreck at the end of the week. When we switched to remote pairing... it got worse! The extra effort to accommodate for video and headphone adds up to the mental load.

If done without care, it can ruin the team out. It's important to stick to a sustainable pace with pairing too.

Here are my advices:

*   Invest in the best material you can. A comfortable headphone will make a tremendous difference at the end of the day.
*   Accept that you cannot be productive for 8 hours of pairing a day. 6 hours of local pairing is plenty, 5 of remote is as well.
*   Don't be afraid to take breaks as often as needed.
*   It's important to leave some time out for solo work to let introverts re-charge batteries. A time difference will actually help you. Why not use these early morning or late afternoon hours for [deliberate practice](/why-20-hours-of-code-kata-are-so-effective-for-learning-new-languages/)? In the long run, it should make the whole team more productive (see [Nobody ever gets credits for fixing problems that never happened](http://web.mit.edu/nelsonr/www/Repenning=Sterman_CMR_su01_.pdf))

> 💡 When remote pair programming, use time difference at your advantage to deliberate practice.

## To be continued

This was the first part of [a mini series about Remote pair programming best practices](/categories/#remote-pair-programming-best-practices-series). In [the next post](/7-remote-pair-programming-best-practices-q-and-a-part-2/), we'll go over 5 more tips.

[Continue Reading...](/7-remote-pair-programming-best-practices-q-and-a-part-2/)
