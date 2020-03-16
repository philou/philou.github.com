---
layout: single-mailing-list
title: "5 SPA Conference takeaways that could make us better software professionals"
date: 2017-07-06 22:17
comments: true
categories: 
 - extreme programming
 - pair programming
 - refactoring
 - coaching
 - management
keywords: "SPA Conference, eXtreme Programming, Software, Coaching, Pair programming"
description: "Things I learned at the SPA Conference 2017. Topics include refactoring, pair programming, coaching and management"
---
Last week, my colleague [Ahmad Atwi](https://ahmadatwi.me/) and I went to the London [SPA Conference](https://www.spaconference.org/spa2017/) to give our [Remote eXtreme Practice](https://www.youtube.com/watch?v=oJsukJhxt7E) talk.

The London [eXtreme Programming](http://www.extremeprogramming.org/) is one of the most active in the world. You could feel an XP atmosphere at the conference. For example, people like [Nat Pryce](http://www.natpryce.com/) and [Steve Freeman](https://twitter.com/sf105), authors of [GOOSGT](https://www.amazon.com/gp/product/0321503627/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0321503627&linkCode=as2&tag=pbourgau-20&linkId=fcdd83a07a3cfb190f2c8e7e8b9f72c3) book were speakers.

[![The cover of Growing Object-Oriented Software, Guided By Tests]({{site.url}}{{site.baseurl}}/imgs/2017-07-06-5-spa-conference-takeaways-that-could-make-us-better-software-professionals/growing.jpg)](https://www.amazon.com/gp/product/0321503627/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0321503627&linkCode=as2&tag=pbourgau-20&linkId=fcdd83a07a3cfb190f2c8e7e8b9f72c3)

To summarize, we had the chance to attend a lot of very interesting sessions during the 3 days of the conference. Here are 5 pearls of wisdom I took back with me.

## What connascences are

Identifying code [connascences](http://connascence.io/) helps to rank refactorings and keep the system maintainable.

[Continuous refactoring](http://www.extremeprogramming.org/rules/refactor.html) is one of the core practices of XP. For me, knowing what to refactor next has been a matter of [code smells](https://martinfowler.com/bliki/CodeSmell.html), discussing with my pair and gut feeling.

A connascence is a coupling between parts of the system. Two parts of your code are connascent if changing one implies changing the other. For example, a function call is connascent by name with the function definition. If you change one, you need to change the other.

Connascences are more formal than code smells. We can detect and rank them to pick the most important refactoring to do. People have listed 9 types of connascences. Some are visible in the source code, others are dynamic and difficult to spot before runtime.

The lowest form of connascence is ['of name',](http://connascence.io/name.html) like in the function call example above. The worst form is ['of Identity'](http://connascence.io/identity.html), when different parts of the system must reference the same object.

<iframe src="//www.slideshare.net/slideshow/embed_code/key/jPvF4gxm5z6cGN?startSlide=14" width="510" height="420" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>

The higher the connascence, the more difficult it is to evolve the parts involved. Instead of relying on intuition, you can use a connascence based refactoring algorithm :

1.  Detect the highest connascence
2.  Reduce or remove it
3.  Repeat.

Thanks [Kevin Rutherford](https://twitter.com/xpsurgery) and [Adrian Mowat](https://twitter.com/mowat27) for your [Red Green then what ?](http://xpsurgery.com/resources/connascence-hunt-slides/) session about connascence.

## Tips for pairing with junior developers

[Irina Tsyganok](https://twitter.com/irinatsyganok) and [Nat Pryce](http://www.natpryce.com/) gave a very fun session about this topic. A lot of valuable points discussed, from which I saved a few pearls of wisdom.

<blockquote class="twitter-tweet" data-lang="fr"><p lang="en" dir="ltr">Cat eating session from <a href="https://twitter.com/natpryce">@natpryce</a> at <a href="https://twitter.com/hashtag/spaconf17?src=hash">#spaconf17</a> (unless <a href="https://twitter.com/irinatsyganok">@irinatsyganok</a> stops him) <a href="https://t.co/XSiaPDp9kJ">pic.twitter.com/XSiaPDp9kJ</a></p>&mdash; Andy Longshaw (@andylongshaw) <a href="https://twitter.com/andylongshaw/status/879714743963054080">27 juin 2017</a></blockquote>
<script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

It was reassuring to hear Nat saying that "As we gain experience, we are not expected to know everything". Pairing with developers out of college is an occasion to "exchange" skills. Hard learned design skills versus updates on the latest technologies.

I also learned about the [Expert's Amnesia](http://actingcoachscotland.co.uk/blog/expert-induced-amnesia/) and why experts often have a hard time teaching. Expert level knowledge is by nature instinctive. At this level of skill, it becomes very difficult to detail the logic of things that seem obvious.

## We engineers are more mentors than coaches

In the [first XP book](https://www.amazon.com/gp/product/0201616416/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0201616416&linkCode=as2&tag=pbourgau-20&linkId=dc2f9dc4f5ca106842921bfded07b405), there were only 3 roles in the team : team members, on site customer and XP coach. The XP coach should be a developer who can help the team to learn the practices and principles of XP.

About the same time, the personal or professional coach jobs appeared. The Scrum Master, is to Scrum what the XP coach is to XP, without the developer part. Remember the joke "Scrum is like XP, without everything that makes it work" ([Flaccid Scrum](https://martinfowler.com/bliki/FlaccidScrum.html)).

It looks like the Agile Coach job title appeared out of all this. The problem is no one exactly knows what this is. Should he be an experienced developer like the XP coach ? A great people person ? Or someone good at introducing change ? or a mix of these ?

[Portia Tung](http://www.selfishprogramming.com/about/) and [Helen Lisowski](https://uk.linkedin.com/in/helenlisowski) 's  talk "The power of coaching" clarified that.

There is no knowledge transfer from the coach to the coachees ! On the other side, a mentor does transfer knowledge to his mentees. The coach helps his coachee take a step back and take decisions in full consciousness. The goal of the mentor is to inspire and train to new techniques.

I'm fine being a mentor and not a coach ;-)

## Servant leaders need to be tough at times

We hear a lot about servant leadership nowadays. Scrum Master should be servant leaders, as well as managers in agile organizations.

[Angie Main](https://fr.linkedin.com/company/bellebeck-limited) gave a very interesting session about servant leadership. She made an interesting point I had not heard about before. We all know that servant leaders should trust the team to get the work done most of the time. In spite of that, servant leaders must also be ready to step in and remove people who don't fit in and endanger the team !

This reminded me of what Jim Collins says in [Built to last](http://www.wikisummaries.org/wiki/Built_to_Last#Chapter_6_.E2.80.93_Cult-like_Cultures) : "People who don't fit are expelled like viruses !"

[![The cover of Built to Last]({{site.url}}{{site.baseurl}}/imgs/2017-07-06-5-spa-conference-takeaways-that-could-make-us-better-software-professionals/built-to-last.jpg)](https://www.amazon.com/gp/product/0060516402/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0060516402&linkCode=as2&tag=pbourgau-20&linkId=e83ad8e3dcf7bdb7f875d5b22e8eb4c6)

## 1/3000 ideas succeeds

Thanks to [Ozlem Yuce](https://twitter.com/ozzieyuce)'s session, I learned about the "Job To Be Done" technique to understand the customer's real needs.

Studies measured that only 1 idea out of 3000 ends up as a successful product ! [Here](https://www.researchgate.net/file.PostFileLoader.html?id=56217976614325233f8b4567&assetKey=AS%3A285916150157312%401445179130594) seems to be the original research.

I'll remember this fact next time I'm ask for a funky feature !

## To conclude

At the end, we had a very good time at SPAconference. The talks were insightful, we had interesting discussions, the premises were comfortable and on top of that, food was great !

I'm already eager to go to SPA conference 2018 !
