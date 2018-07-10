---
layout: post
title: "How to convince your business of sponsoring a large scale refactoring"
date: 2018-06-28 06:14
comments: true
categories: 
 - refactoring
 - planning
 - large-scale-refactoring-sponsorship-series
keywords: "Large Scale Refactoring, refactoring large software projects, refactoring large software systems, refactoring large code base, refactoring in large software projects, how to convince a business of sponsoring you, Planning refactoring"
description: "Learn how to convince your business of sponsoring a large scale refactoring. Sometimes, refactorings are too big to be able to do them without business sponsorship. Unfortunately, if developers know they must be done, it's pretty difficult to convince the business of sponsoring one !"
---
Whenever I present or suggest a good practice to dev teams, I often get the same remark. Here is how it goes :

> - That's a great idea and we would love to do this, but our code is in such a mess that we cannot !

> - Maybe you should start doing more refactoring then !

> - We would like to, but we don't have the time. We are fire fighting all the time.

It's a bit like the old adage of the lumberjack that is too busy to cut wood to sharpen his axe... The sad part here, is that most of the time, developers know they would be a lot faster if they could clean up their code. Unfortunately, they are usually not given the time.

## How do we end up in this silly situation ?

[![Drawing of a '5 whys' mind map explaining why it is difficult to get sponsorship for a large scale refactoring]({{site.url}}/imgs/2018-06-15-how-to-convince-your-business-to-sponsor-a-large-scale-refactoring/why-are-large-scale-refactorings-not-prioritized-small.jpg)](../imgs/2018-06-15-how-to-convince-your-business-to-sponsor-a-large-scale-refactoring/why-are-large-scale-refactorings-not-prioritized.jpg)

### Only developers see the bad code

As I've [already been joking about](/the-size-of-code/), code is invisible. Mess in the code even more so, especially to people who don't code. The code could look like that and no one would notice.

[![Inside of a kitchen from someone suffering from Diogenes syndrome]({{site.url}}/imgs/2018-06-15-how-to-convince-your-business-to-sponsor-a-large-scale-refactoring/Syllogomanie-Puteaux.jpg)](https://en.wikipedia.org/wiki/Diogenes_syndrome)
<div class="image-credits">Par <a href="//commons.wikimedia.org/w/index.php?title=User:Un_Touriste&amp;action=edit&amp;redlink=1" class="new" title="User:Un Touriste (page does not exist)">Un Touriste</a> — <span class="int-own-work">Photographie personnelle</span>, <a href="https://creativecommons.org/licenses/by-sa/3.0" title="Creative Commons Attribution-Share Alike 3.0">CC BY-SA 3.0</a>, <a href="https://commons.wikimedia.org/w/index.php?curid=15988115">Lien</a></div><br>



If someone put his own office in that state, he would get fired, but not for the source code. The good side is that we, developers, are safe, we can continue to wreak chaos without fear ! That's pretty weird when we think that this is what we ship to customers ...

> 💡 Is [Diogenes syndrome](https://en.wikipedia.org/wiki/Diogenes_syndrome) for source code a recognized pathology ?

Business might also not see bad code because that's the only thing they're used to ! Maybe they've always been working in dysfunctional organizations that systematically create crappy code. Slow teams, late deliveries and fire fighting might be business as usual for them. From this point of view, trying to improve code is a pure waste of time and energy. The same goes for large scale refactorings.

The worse part of all this is that if devs don't have the time to keep their code clean, it will only get worse. This will reinforce the view that software delivery is slow and that there is nothing to do about it !

### Business has been burnt in the past !

Bad experiences are another reason why business is unwilling to sponsor refactoring. Did someone sell them an unrealistic productivity boost that turned in a never-ending tunnel project ? Badly managed large scale refactorings deliver late, create no value, and a lot of bugs. At one company I worked for, business gave devs 1 full year (!) to clean up the code ... We took 2 !! Meanwhile, the CEO had to dilute the stocks a bit to keep the boat afloat ! I'd think twice before giving this kind of mandate myself.

Performing a large scale refactoring is not easy, and involves specific skills. These skills are about refactoring in baby steps, alongside feature delivery.

Usually, people acquire these skills through hard won experience ... Unfortunately for us, our industry is not very nice to experienced engineers ... It's a lot easier to hire a fresh grad who knows the latest javascript framework than a 2 decades engineer. (Who, BTW, could learn this framework in 2 weeks ...) It's also a lot harder for the junior developer to succeed in negotiating a refactoring.

Again the twist of fate is that junior engineers are a lot more likely to start a submarine latest-framework.js rewrite supposed to solve all maintenance issues ... which will only make things worse.

## Overestimate, only as last resort

A quick fix is to systematically overestimate to get enough time to refactor. As any other 'submarine' initiative, I would recommend it only in last resort, after you've tried every other possible technique ... and just before you quit.

Hiding things to the business people kills trust and hides problems. Trust and collaboration is what you need to get the business to sponsor large scale refactorings ! Plus, if ever you mess up (as submarine initiative often do) you'll be the only one to blame ...

That said, 'overestimating' so that you can write clean code is ok. It's not overestimating, it's estimating to do a good job.

> 💡 We should never ask the permission to do a good job. ([Doc Norton](https://www.youtube.com/watch?v=SfWCRl75Kas))

## To be continued

You might wonder what these other techniques are ! That's exactly what I'll go through with the next posts. This was the first one in a [series about how to get sponsorship for a large scale refactoring](/blog/categories/large-scale-refactoring-sponsorship-series/). The series will cover topics like :

1.   [How to convince your business of sponsoring a large scale refactoring](/how-to-convince-your-business-to-sponsor-a-large-scale-refactoring/)
*   [Why we need Badass developers to perform large scale refactorings](/why-we-need-badass-developers-to-perform-large-scale-refactorings/)
*   5 mistakes badass developers never do
*   Principles That Will Make You Become a Badass Developer
*   Techniques to refactor in parallel with features
*   Nothing convinces business people like money

[Stay tuned !](http://eepurl.com/dxKE95)