---
layout: single
title: "Incremental architecture, a cure against architecture astronauts"
date: 2017-04-24 06:52
comments: true
categories:
 - architecture
 - software
 - agile
 - extreme programming
keywords: "Incremental Architecture, Evolutionary Architecture, Incremental Design, Agile Architecture"
description: "The story of how I started to do incremental design and architecture, and how to do it"
---
Back in 2001, when I started to code for a living, fresh out of school, I was mainly doing a form of [cowboy coding](https://en.wikipedia.org/wiki/Cowboy_coding). After a few months of maintaining my own mess, I started to recall my university lessons : we should be doing design before coding ...

When I was asked to re-engineer the 'wizards UI', I paused my coding to design something clean from scratch. It worked quite well at first : the overall code was a lot simpler and contained a lot less duplication than before. Seeing this new shiny UI, product people asked for new features. Unfortunately, I hadn't thought of them when designing this little framework. I was almost back at my initial situation.

That's how I started to look for another way to design software. At about the same time the [eXtreme Programming book](https://www.amazon.com/Extreme-Programming-Explained-Embrace-Change/dp/0201616416/ref=sr_1_3?tag=pbourgau-20&amp;ie=UTF8&qid=1493096057&sr=8-3&keywords=extreme+programming) fell into my hands. That's where I discovered the idea of incremental design and architecture.

[![Front cover of the first edition of the XP book]({{site.url}}{{site.baseurl}}/imgs/2017-04-24-incremental-architecture-a-cure-against-architecture-astronauts/xp-1ed.jpg)](https://www.amazon.com/Extreme-Programming-Explained-Embrace-Change/dp/0201616416/ref=sr_1_3?tag=pbourgau-20&amp;ie=UTF8&qid=1493096057&sr=8-3&keywords=extreme+programming)

## What is Incremental Archi

Let's start with the antithesis of incremental architecture :

### Astronaut Architecture

The term "Architecture Astronaut" was coined by [Joel Spolsky](https://www.joelonsoftware.com) back in 2001. If you haven't read this [classic post](https://www.joelonsoftware.com/2001/04/21/dont-let-architecture-astronauts-scare-you/) yet, I strongly encourage you to do so. Basically, he explains that we should not be impressed by architects going over their heads talking about too abstract stuff.

Incremental is the exact opposite of astronaut architecture

### Two Schools to Software Architecture

Traditional architecture is about taking up-front choices that will be difficult to change. Incremental architecture is about preparing for non-stop change and taking decisions as late as possible.

The idea in incremental architecture is really simple : keep your code simple, clean and automatically tested in order to be able to simply adapt your code and architecture when definitely needed.

### Pros and Cons of incremental architecture

The first reaction of most software engineers (me included, remember how my story started) is that it can only work on trivial stuff. After practicing it for about a decade, I am now convinced it works most of the time. I'm not alone, [James Shore](http://www.jamesshore.com/Agile-Book/incremental_design.html) (who wrote the more on the subject) also shares my view:

> Common thought is that distributed processing, persistence, internationalization, security, and transaction structure are so complex that you must consider them from the start of your project. I disagree; I've dealt with all of them incrementally.

> Two issues that remain difficult to change are choice of programming language and platform. I wouldn't want to make those decisions incrementally!

I would add published APIs to this list.

Granted, there are situations that incremental architecture alone cannot handle, what about its good points then ?

In all the other cases (and that means most of the time), here is what you get :

* As you won't need to deal with future use cases, you'll do less work
* That in turn, will keep your code simpler, decreasing time to release new features
* As change is built-in, you'll be able to improve your architecture in ways you could not have imagined from the start !

[![Front cover of the Art of Agile Software Development book]({{site.url}}{{site.baseurl}}/imgs/2017-04-24-incremental-architecture-a-cure-against-architecture-astronauts/art-of-agile.jpg)](https://www.amazon.com/Art-Agile-Development-Pragmatic-Software/dp/0596527675/ref=sr_1_1?tag=pbourgau-20&amp;s=books&ie=UTF8&qid=1493096137&sr=1-1&keywords=the+art+of+agile+development)

If you cannot see how this could possibly work ? Read on !

## How to do it

### eXtreme Programming

As I said earlier, incremental architecture emerged from eXtreme Programming. It won't come as a surprise that in order to work well incremental architecture requires the XP practices to be in place. In particular, the code base should be automatically tested, the continuous integration cycle should take less than 10 minutes, the design should be simple. The team should be good at doing refactoring.

Don't expect to be able to do incremental architecture without these practices in place. But this alone might be enough already !

[![Front cover of the Martin Fowler's refactoring book]({{site.url}}{{site.baseurl}}/imgs/2017-04-24-incremental-architecture-a-cure-against-architecture-astronauts/refactoring.jpg)](https://www.amazon.com/Refactoring-Improving-Design-Existing-Code/dp/0201485672/ref=sr_1_1?tag=pbourgau-20&amp;s=books&ie=UTF8&qid=1493096197&sr=1-1&keywords=fowler+refactoring)

### Architecture Vision

At work, where our team consists of 9 developers, it's not always that simple to coordinate and all pull in the same direction. That's why we find it useful to share a very long term architecture vision ([Enabling Incremental Design and Evolutionary Architecture](https://www.thoughtworks.com/insights/blog/enabling-incremental-design-and-evolutionary-architecture)). This will help people to make coherent decisions when hesitating between 2 alternate designs.

The vision can be the result of the work of a pair, or a mob brainstorming or whatever. Building this vision is typically an activity where experienced programmers can contribute a lot of value.

Once this vision is shared and understood by the team, every time a pair has to work on a story, they can orient the design towards it. But always as little as possible to finish the work at hand, remember the XP motos [KISS (Keep It Simple & Stupid)](https://en.wikipedia.org/wiki/KISS_principle) & [YAGNI (You Ain't Gonna Need It](https://en.wikipedia.org/wiki/You_aren%27t_gonna_need_it).

One final word ... a vision is just that : a vision ! It might turn out true, or false, be ready to change it as circumstances change.

### Spikes

At times, even with a story in your hands and a long term architecture sketch on the whiteboard, you might have difficulties to know how to change your design to fulfill both.

As always in XP, in case of uncertainty, use [Spikes](http://agiledictionary.com/209/spike/) ! Spikes are short time-boxed experiments of throwaway code, which goal is to answer a specific design question.

### How to mitigate the risks

What about these topics that don't yield to incremental architecture ? What if you discover late that you need to change your platform ? Or your API ?

Obviously, you should think about these questions up-front. Hopefully, there are usually not that difficult to answer. But, over time, Non-Functional-Requirements and technologies change. Large and long living systems are particularly likely to need to change to a new platform someday.

[Unix had the answer](https://en.wikipedia.org/wiki/Unix_philosophy) : build your system out of small tools, that do only one thing well, and that communicate through a standard protocol. Systems built that way can be re-written one piece at a time.

{% assign figure_path="/imgs/2017-04-24-incremental-architecture-a-cure-against-architecture-astronauts/Ken_n_dennis.jpg" | absolute_url %}

{% assign figure_alt="Ken Thompson and Dennis Ritchie, the creators of Unix" %}

{% capture figure_caption %}
Ken Thompson and Dennis Ritchie, the creators of Unix. Photo from [WikiMedia](https://commons.wikimedia.org/wiki/File:Ken_n_dennis.jpg)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

The modern version of this is the micro-services architecture. Incremental architecture allows you to start with a monolith, split it when you need to, and replace micro-services as needed.   With the safety of simple code and a great automated test harness. Interestingly, successful software systems that were architectured up-front also take this road ... without the safety !

### The Architect

Good news : no more PowerPoints and a lot more coding with the team ! Here is what's expected from an incremental architect :

* To code with the team. As Bertrand Meyer once said "[Bubbles (aka. diagrams) don't crash](http://stal.blogspot.fr/2008/08/architect-always-implements.html)", it's plain too easy, and wrong, to mandate architecture without living with the consequences
* To come up with more ideas when drafting the long term vision
* To keep an eye on the 'long term' while being the navigator in pair programming
* In the second edition of the [XP book](https://www.amazon.com/Extreme-Programming-Explained-Embrace-Change/dp/0321278658/ref=sr_1_1?tag=pbourgau-20&amp;ie=UTF8&qid=1493096057&sr=8-1&keywords=extreme+programming) Kent Beck suggests that the architect should write large scale tests to stress the system and demonstrate architecture issues to the team
* To delegate as much as possible to the team. However smart the architect, the team as a whole is smarter ! Delegating architecture increases motivation and the quality of the outcome.


## End of the story

I've been practicing incremental architecture and design for a long time now. It made my life a lot simpler ! Most architecture questions become backlog items to prioritize.

One last advice : be prepared to re-read [Joel Spolsky's article](https://www.joelonsoftware.com/2001/04/21/dont-let-architecture-astronauts-scare-you/) whenever you get caught up in architecture meetings ...
