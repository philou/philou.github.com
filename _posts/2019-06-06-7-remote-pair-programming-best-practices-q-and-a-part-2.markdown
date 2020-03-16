---
layout: single-mailing-list
title: "7 Remote pair programming best practices Q&A - Part 2"
date: 2019-07-04
comments: true
categories:
 - pair programming
 - remote
 - remote-pair-programming-best-practices-series
description: "Tired of coding in your cubicle? Code in your garden with remote pair programming! Here are 5 more remote pairing best practices. Learn how to deal with a painful headphone or a time difference. Discover other tricks like an online todo list, the importance of eye contact and continuous improvement"
header:
   teaser: /imgs/2019-06-06-7-remote-pair-programming-best-practices-q-and-a-part-2/remote-pair-programming-yagourt-phones-teaser.jpeg
   og_image: /imgs/2019-06-06-7-remote-pair-programming-best-practices-q-and-a-part-2/remote-pair-programming-yagourt-phones-og.jpeg
---
_5 more best practices about remote pair programming. Let's deal with a painful headphone, a todo list, time difference, eye contact and continuous improvement_

![Drawing of 2 yagourt cans linked together from a string going through a cloud. Making remote pair programming work still has a DIY flavor, but it is worth the effort.]({{site.url}}/imgs/2019-06-06-7-remote-pair-programming-best-practices-q-and-a-part-2/remote-pair-programming-yagourt-phones.jpeg)

This is the second post in a [mini series about Remote pair programming best practices](/categories/#remote-pair-programming-best-practices-series). In [the previous post](/7-remote-pair-programming-best-practices-q-and-a-part-1/), I gave answers to 2 questions about remote pair programming:

*   How to deal with the connection lag?
*   How tiring is remote pair programming?

If that rings a bell, start with this [first post](/7-remote-pair-programming-best-practices-q-and-a-part-1/) and get the full story.

Here are 5 others best practices.

## The headphone is hurting me!

I remember the headphone was hurting the top of my head. I had to hack it with a small cushion so that it would be more comfortable.

![Drawing of the headphone I had tuned with extra cushion because it was hurting my head. My advice is to buy the best you can afford when remote pair programming]({{site.url}}/imgs/2019-06-06-7-remote-pair-programming-best-practices-q-and-a-part-2/remote-pair-programming-headphone-tuning.jpeg)

We were remote pair programming pioneers in the company. It was difficult to get budget for top notch headphones. Nonetheless, here again, my advice is to buy the best you can.

Another option is to use a loud speaker and the camera's mic. This setup works great as long as you are the only one remote pairing in the office. If you are not, all conversations will blend together in an unintelligible mess!

## We used to keep a todo list on paper, how can we do?

![A sketch of a todo list. Keeping an online todo list while remote pair programming is a key ingredient to make it work]({{site.url}}/imgs/2019-06-06-7-remote-pair-programming-best-practices-q-and-a-part-2/todo.jpg)

As [Ahmad](https://ahmadatwi.me) said in [10 Pair Programming Best Practices Q&A](/10-pair-programming-questions-answers/), it's a great practice for the [navigator](https://gist.github.com/jordanpoulton/607a8854673d9f22c696) to maintain a TODO list of some sort. It reduces driver interruption while keeping note of improvements points. Usually, when the driver switches, the sheet switches hand too. This cannot be done when remote pairing...

Any online concurrent editor will do the trick here. We had success using Google Docs, but Office 365 or even a mind map would work.

As a side-note, this can be particularly useful for the [Mikado Method](/categories/#mikado-method). Regular readers will know about it. It's an incremental refactoring technique that relies on a graph of small steps.

## How can we deal with the time difference ?

We had 1 hour difference between Paris and Beirut. 1 hour of time difference is not a lot, but still needs to handled. Ahmad went over this topic in [10 Pair Programming Best Practices Q&A](/10-pair-programming-questions-answers/).

> 1. Have an up-to-date shared document of all the story’s tasks. Any of the pair should be quickly updated on the story’s status by just having a quick look at the document.
> 2. Don’t leave un-committed code when you leave your desk! If you are using Git, create a branch for your un-committed code, if you are using perforce use the shelve feature.
> 3. Every morning, the pair share their calendars to be aware when they have separate meetings
> 4. Use the time difference to finish any paperwork you need to do alone.

I'd also add the following:

> 💡 A time difference while remote pair programming is a perfect opportunity for learning and deliberate practice.

I've already done some remote pair programming with people in India. We had 4 to 5 hours of time difference. We could only pair for 2 to 3 hours every day. Nonetheless, it was very useful.

## Any other trick?

### Eye contact

Facial expressions are super important when discussing code or design. Communication is a lot more fluid when we manage to keep eye contact as we work.

Unfortunately, we never managed to completely fix this issue. Ideally, when you look both at the code or at your buddy, he should feel you are watching him in the eyes... More easily said than done.

Here is a setup suggested by [Justin Gordon](https://twitter.com/railsonmaui?lang=fr) on [his blog](http://www.railsonmaui.com/blog/2014/05/06/remote-pair-programming-tips-using-screenhero/):

{% assign figure_path="/imgs/2019-06-06-7-remote-pair-programming-best-practices-q-and-a-part-2/pair-programming-justin-steve-3.jpg" | absolute_url %}
    
{% assign figure_alt="Photo of Justin's Gordon remote pair programming setup that uses a tablet bellow the screen to enable eye contact while coding" %}
    
{% capture figure_caption %}
By [Justin Gordon](https://twitter.com/railsonmaui) from his blog post [Remote Pair Programming Tips Using RubyMine and Screenhero](http://www.railsonmaui.com/blog/2014/05/06/remote-pair-programming-tips-using-screenhero/)
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}


Technology might improve this in the future:

*   Cameras behind and at the center of our screens
*   Augmented reality glasses

Until then, this looks like the best setup I found.

### Continuous Improvement

We did not get there from day 1, it took us many [retrospective](/categories/#retrospectives) iterations.

> 💡 Our Do It Yourself culture helped a lot to get remote pair programming working.

Be ready to discuss and experiment with your remote pairing setup. At some point you should find something that works well for you.

You don't have to wait for the sprint retrospective to improve. I recently attended [Woody Zuill](https://twitter.com/WoodyZuill)'s (great) workshop on [mob programming](https://en.wikipedia.org/wiki/Mob_programming). He used to do daily mini-retro at the end of every day.

> [If it hurts, do it more often](https://martinfowler.com/bliki/FrequencyReducesDifficulty.html). [[eXtreme Programming](https://en.wikipedia.org/wiki/Extreme_programming) moto]

## Try it yourself!

Remote pairing might seem daunting at first. I hope our experience will help you to get started better than we did. Give it a few tries and see how it works for you. Who knows, you might decide to make it part of your daily practices!

We'd love to hear your own pair remote pair programming best practices. Comments are more than welcome!
