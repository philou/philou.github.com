---
layout: single-mailing-list
title: "What Rails teaches us about building platforms and frameworks"
date: 2017-10-09 09:20
comments: true
categories: 
 - agile
 - rails
 - architecture
 - testing
keywords: "Rails, Ruby on Rails, Framework, Architecture, Software, Software architecture, Testing, Automated Testing, Agile, Agile Software Development"
description: "Reflection about how the Rails framework was built, and how agile development practices enable to build specific before generic."
---
More than ever, the cheapest way to build a framework is to refactor it out of a specific app.

[Rails](http://rubyonrails.org/) is a web development server side framework built in [Ruby](https://www.ruby-lang.org/). It's been and remains very popular. It set the tone for all the [MVC](https://en.wikipedia.org/wiki/Model%E2%80%93view%E2%80%93controller) web frameworks that followed. People have ported it to many other languages. Rails is now in it's 5th version, what is less known is how it was built in the first place.

![Drawing of a train being detached from its rails]({{site.url}}{{site.baseurl}}/imgs/2017-10-09-what-rails-teaches-us-about-building-platforms-and-frameworks/train-and-rails.jpg)

## The story of Rails

[David Heinemeier Hansson](http://david.heinemeierhansson.com/), the creator of Rails, is a cult in the Ruby community. You can find the history of Rails at many places. If you have a bit of time, read [this great article](https://www.wired.com/2008/02/mf-signals/?currentPage=all) from Wired. If you don't have a lot of time, here is a summary.

[Jason Fried](https://twitter.com/jasonfried?lang=fr) and DHH were working at [37signals](https://37signals.com/). They were working on project management app for small businesses called [Basecamp](https://basecamp.com/). After releasing the first version of Basecamp, DHH extracted and open sourced Rails out of it.

37signals later then re-used Rails to build other apps like Campfire, Highrise and Backpack.

We all know the end of the story, Rails adoption exploded. Many successful companies like [Github](https://github.com/), [Airbnb](https://www.airbnb.com/), [Twitter](https://twitter.com) & [Shopify](https://www.shopify.com) have used it. It evolved a lot, through the darwinism of open source. Today, Rails might not be the latest and coolest web framework, but it is still very productive and popular.

![The Rails logo]({{site.url}}{{site.baseurl}}/imgs/2017-10-09-what-rails-teaches-us-about-building-platforms-and-frameworks/rails-logo.jpg)

## Economic sense

To summarize, here is how they did it :

1.  Built a specific app, and monetized it
2.  Extracted an open source framework from it
3.  Built other apps on the framework

If you are not a programmers, you're likely to assume that the cost of reusing software is negligible. If you are a programmer, I'll ask you to assume that it is for a while.  Under this hypothesis, all they did makes a lot of business sense :

*   Building a specific app first is the fastest path to paying customers. Building a framework first would need more work.
*   Once you have paying customers, you've got money to fuel further work.
*   In particular, you have money to finance the extraction of an open source framework.
*   Putting the framework open source increases its reusability through bug reports and contributions.
*   Building the next app is even easier thanks to a mature framework and the revenues from the original app

> 💡 Once you have paying customers, you've got money to fuel further work.

## How can it work ?

[![Cover of Rework book]({{site.url}}{{site.baseurl}}/imgs/2017-10-09-what-rails-teaches-us-about-building-platforms-and-frameworks/rework-cover.jpg)](https://www.amazon.com/Rework-Jason-Fried/dp/0307463745/ref=sr_1_1?ie=UTF8&qid=1507610064&sr=8-1&keywords=rework)

Ok, enough for common sense. Let's see what happens when you take into account the real cost of changing software ? All software developers know that changing software is far from cheap. Very often, it's more expensive to adapt than to rebuild

So how did the Rails guys manage it ? Rails has 3 specificities that explain that :

*   Rails has automated testing built in and out
*   Basecamp guys are agile with a lower 'a'. They don't follow Scrum or any method. Read [their books](https://basecamp.com/about/books) and you'll understand how agile they are. They follow principles like KISS, YAGNI, Lean startup discovery ...
*   Finally, it was open sourced !

Agile principles and technical practices is what allowed them to take the common-sense path.

> 💡 Thanks to agile practices, the cheapest way to build a framework is to extract it from a specific app.

## Open question

If it is possible to do the thing that makes the most economic sense, why isn't it the default way ? Why are so many of us still losing a ton of money writing large frameworks and platforms up-front ? How could we get large companies to adopt the more nimble 'basecamp' way ?

_If you have remarks, answers or different point of views, I'd love to read your comment !_
