---
layout: post
title: "ReXP : Remote eXtreme Programming"
date: 2016-10-18 04:27
comments: true
categories:
 - agile
 - xp
 - remote
 - rexp
keywords: "eXtreme Programming, Remote eXtreme Programming, Remote Programming, Agile Software, Beirut, Agile Tour Beirut"
description: "A brief about a talk about Remote eXtreme Programming one of my colleagues gave at Agile Tour Beirut, plus ideas for tools to support it"
---
My colleague [Ahmad](https://ahmadatwi.me/) from Beirut gave a talk at [Agile Tour Beirut](http://www.agiletourbeirut.org/) on Saturday about how we adopted [XP](http://www.extremeprogramming.org/) to a distributed team [at work](http://www.murex.com). I gave him a hand and played the remote guy during the talk.

<blockquote class="twitter-tweet" data-lang="fr"><p lang="en" dir="ltr">If Marvel wants to create coding superheroes I propose <a href="https://twitter.com/ahmadatwi">@ahmadatwi</a> and <a href="https://twitter.com/pbourgau">@pbourgau</a> from <a href="https://twitter.com/Work_at_Murex">@Work_at_Murex</a>. &quot;Ballsy&quot; pres at <a href="https://twitter.com/hashtag/Agiletourbeirut?src=hash">#Agiletourbeirut</a> <a href="https://t.co/SkVMPPGcrq">pic.twitter.com/SkVMPPGcrq</a></p>&mdash; Xavier René-Corail (@XCorail) <a href="https://twitter.com/XCorail/status/787223833405161473">15 octobre 2016</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

With me through Skype, we did a first demo of remote pair programming on [FizzBuzz](https://en.wikipedia.org/wiki/Fizz_buzz) using [IDEA](https://www.jetbrains.com/idea/) and [Floobits](https://floobits.com)

<iframe width="560" height="315" src="https://www.youtube.com/embed/5nKyfeq9CY0" frameborder="0" allowfullscreen></iframe>

We then did a demo of [remote retrospectives](/trellospectives-remote-retrospectives-with-trello/) using [Trello](https://trello.com/)

<iframe width="560" height="315" src="https://www.youtube.com/embed/NCRM3rvb8WA" frameborder="0" allowfullscreen></iframe>

## When should I use ReXP

The conclusion is that :

* If people are spread over 2 or a few cities, and that they are enough at every place to build a teams, just build different teams at every location
* If people are spread over a lot of places, maybe involving many time zones, then the open source, pull request based work-flow seems the best
* Otherwise, if there are not enough people to build 2 teams, that they are spread over only a few locations, that the time difference is not too big, then stretching XP to Remote will work best

As it is said that "nothing beats XP for small collocated teams", I guess "nothing beats ReXP for small almost collocated teams".

## Tools to make it better

As Ahmad said in his talk, tools already exist. We could add that more would be welcome :

* Floobits or [Saros](http://www.saros-project.org/) help tremendously for remote pairing, but maybe cloud based IDEs like [Eclipse Che](http://www.eclipse.org/che/) or [Cloud 9](https://c9.io/) will make all these tools useless !
* Trello works well for remote retrospectives, but some great activities like the [5 whys](https://en.wikipedia.org/wiki/5_Whys) are still difficult to do with Trello. I'm sure new tools could do better.
* I'm currently building a [remote planning poker app](https://github.com/philou/planning-poker)
* My other colleague [Morgan](https://twitter.com/mc_moe) wants to build a virtual stand up token to make it flow

Finally, here are the slides :

<iframe src="//www.slideshare.net/slideshow/embed_code/key/vfbIUiRZNHqHo1" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/aatwi/extreme-practices-agiletourbeirut-2016" title="Extreme Practices - AgileTourBeirut - 2016" target="_blank">Extreme Practices - AgileTourBeirut - 2016</a> </strong> from <strong><a target="_blank" href="//www.slideshare.net/aatwi">Ahmad Atwi</a></strong> </div>

EDIT 2016/11/23 : [the full video](https://www.youtube.com/watch?v=oJsukJhxt7E) is now on YouTube
