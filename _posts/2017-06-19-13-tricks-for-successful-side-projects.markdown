---
layout: single
title: "13 Tricks for Successful Side Projects"
date: 2017-06-19 18:48
comments: true
categories:
 - side project
 - software
 - personal-productivity
keywords: "Side Projects, Software Side Projects, Best practices, Programming, Software, Moon Lighting"
description: "A collection of side projects best practices I learned from past experience"
---
As [I said last week](/side-projects-matter/), I released the v0.1 of [Philou's Planning Poker](https://philous-planning-poker.herokuapp.com/), my latest side project. Although I have a day job, a wife, a family and a mortgage to pay, I still manage to finish my side projects. In the past 7 years, I published 5 of these as open source projects, website, or wannabe businesses.

Side projects rely on 2 things : time and motivation. If motivation goes down, you'll  stop working on it, and it will die. If you don't manage to find enough time for it, it will also die.

Over the years, I accumulated best practices that increase the chances of success. Here is a shortlist of 13 of these.

[![A comic strip about side projects]({{site.url}}{{site.baseurl}}/imgs/2017-06-19-13-tricks-for-successful-side-projects/Strip-Side-project.jpg)](http://www.commitstrip.com/en/2014/11/25/west-side-project-story/)

## 1\. Know your goal

As I said before, side projects are time constrained. If you try to follow many goals at once, you'll spread too thin and won't deliver anything. That will kill your motivation.

To avoid this, you need to decide on a unique goal for your project. It can be anything : learning a new tech, building a tool, sell a simple product, maintain a blog.

Depending on the nature of your goal, your side project can take different forms. [20 hours experiments](/how-i-got-my-feet-wet-with-machine-learning-with-the-first-20-hours/) are great for learning new techs. As a side note, [MOOCs](https://en.wiktionary.org/wiki/MOOC) can also be very effective for this. If you want to start a business, start a [lean startup concierge MVP](http://www.allencheng.com/concierge-mvp/). Finally, if you already know users who need a tool, build a minimalistic version for them.

## 2\. Time box your work

Time boxing will force you to make the choices that will keep you going forward. The risk is to take on too many topics : more refactoring, more UI polish, more options, more bells and whistles. All these can be very interesting and valuable, but are usually not the main priority.

20 hours programs are time boxes, that's one of the reasons they work. For other kinds of side projects, I do a quarterly prioritization. "This is what I'd like to have in 3 months". I often slip a bit, but that's not a problem as long as I stay focused on my goal.

## 3\. Setup a routine

You'll need to dedicate time to your side project. Think of what you could do if you worked one hour per day to it. 365 hours per year, or 90 hours per quarter ! That's 2 full weeks of work !

In the long run, having a routine is more effective than anything else. After a few weeks of sticking to a routine, it will become part of your daily life, and won't be an effort anymore. It will also help to forecast what you'll be able to do in the coming month or so.

To setup a routine, block a slot in your day to work on your project, and stick to it. My own routine is waking up early to have some focused time. I have entrepreneur friends who did the same. [GrassHopper](http://grasshopper.com/) founder says the same in this [Indiehacker podcast](https://www.indiehackers.com/podcast/003-david-hauser-of-grasshopper).

## 4\. Keep delivering to sustain motivation

Nothing kills motivation as not delivering. At work, I can go on without user feedback for a while ([not too long though](/how-long-can-your-inner-drive-last/)). Unfortunately, that does not work on a time constrained side project. We have only one life and we don't want to spend our time on things that don't matter. Things that don't deliver don't matter ...

To get the technical aspect of delivery out of the picture once and for all, I use [Continuous Delivery](https://www.amazon.com/Continuous-Delivery-Deployment-Automation-Addison-Wesley/dp/0321601912/ref=sr_1_1?tag=pbourgau-20&amp;ie=UTF8&qid=1498106027&sr=8-1&keywords=continuous+delivery). Continuous Delivery is pretty easy to start with on a new project :

*   automate all your tests
*   setup a CI server
*   deploy when the CI passes

Once this is up and running, as long as I split my work in baby steps, I'll be delivering.

[![The cover of the continuous delivery book]({{site.url}}{{site.baseurl}}/imgs/2017-06-19-13-tricks-for-successful-side-projects/continuous-delivery.jpg)](https://www.amazon.com/Continuous-Delivery-Deployment-Automation-Addison-Wesley/dp/0321601912/ref=sr_1_1?tag=pbourgau-20&amp;ie=UTF8&qid=1498106027&sr=8-1&keywords=continuous+delivery)

## 5\. Use SasS tools

Setting up a CI and a deployment server can take some time. In 2017 though, online platforms make this very easy. Use as many as you can.

For [Philou's Planning Poker](https://philous-planning-poker.herokuapp.com/), I save my code on [Github](https://github.com/philou/planning-poker), test through [Travis CI](https://travis-ci.org/philou/planning-poker) and deploy to [Heroku](https://dashboard.heroku.com). I also use [Code Climate](https://codeclimate.com/github/philou/planning-poker) for static code analysis.

Most of these tools have some free plans for small or open source projects. That alone is a great advantage of making your project open source !

## 6\. Pay for good tools

If you don't want to make your project open source, consider paying for these services. How much you value your time will tell you whether to buy or not.

There are other things you should pay for as well. I definitely recommend paying for a good laptop and IDE.

Remember, anything that helps you to deliver also helps you to keep your motivation high. You have a day job that earns you money, so use it !

## 7\. Pick a productive language 

Depending on your project, you'll have a choice in which programming language to use.

Paul Graham advices to [use dynamic languages](http://www.paulgraham.com/power.html). I tend to do the same, especially after watching ["The Unreasonable Effectiveness of Dynamic Typing for Practical Programs"](https://www.infoq.com/presentations/dynamic-static-typing).

[![A presentation about dynamic typing]({{site.url}}{{site.baseurl}}/imgs/2017-06-19-13-tricks-for-successful-side-projects/dynamic-typing-pres.jpg)](https://www.infoq.com/presentations/dynamic-static-typing)

In the end, I guess it's a matter of personal preference. Pick the language you'll be the most productive with.

## 8\. Use a popular platform

Use a popular open source platform to build your side project on. Useless to say, if your goal is to learn X, use X, even if it is not popular !

There are many advantages to using a popular platform :

*   you'll have something that has already been production proofed
*   you'll suffer less bugs (remember Linus's Law ["Given enough eyeballs, all bugs are shallow"](https://en.wikipedia.org/wiki/Linus%27s_Law))
*   you'll get help from the community
*   you'll find compatible libraries to solve some of your problems

The end goal is always the same : sustain your motivation by delivering fast enough !

## 9\. Walk the edge

We don't start side project to spend time updating dependencies. The saying goes ["If it hurts, do it more often"](https://martinfowler.com/bliki/FrequencyReducesDifficulty.html). To save your productivity and motivation, always keep your dependencies up to date.

This is easy with automated test and continuous integration in place. I use no version constraint, but update all dependencies at least every week. I  commit if all tests pass. Sometimes I fall into small 5 to 10 minutes fixes, but that's all it takes.

## 10\. Take technical debt

When starting a new side project, you have no ideas how long it will last. Could be one week, for example if you started a 20h experiment at the beginning of holidays. Could also be 20 years, if you managed to transform this side project into a full fledged business.

Starting with all the practices that make large software systems manageable will fail. You won't deliver fast enough. By now, you know the story, if you don't deliver, you'll lose your motivation.

I used [```TODO``` comments](/a-seamless-way-to-keep-track-of-technical-debt-in-your-source-code/) in my latest side project to keep track of the shortcut I took. I found it had 2 main advantages in my situation :

*   I had a quick view of how much total technical debt I took
*   if things get more serious, it will be easy to find improvement points

I know that ```TODO``` comments are [controversial in the software community](https://techbeacon.com/useless-comments-can-ruin-code-review-heres-how-erase-them). In the context of new side projects though, they make a lot of sense.

My advice is to take technical debt !

## 11\. Use your day job

I'm not saying to use time from your day job to work on your side project. That would be like stealing. Your day job can help your side project in many other ways.

One I already mentioned is using your income to buy better tools.

If you have [Slack Time](http://www.jamesshore.com/Agile-Book/slack.html) at your day job, you could use it to start a side project that benefits your company. You'll need to make sure that this kind of arrangement does not pose any IP issues. It can result in a win-win situation.

Another way is to find subjects at work which will grow some skills that are also useful for your side project.

## 12\. Talk about it

Talking about your side project serves many purposes :

*   it's an unofficial engagement to work on it
*   it provides feedback
*   it could attract early users

To summarize, the more you'll talk about it the more it will become 'real'. You can share your side project anywhere : blog, Meetups, work, with friends or family. Depending on your topic, some places will work better than others.

Don't be afraid that one might steal your idea. A side project is small, not yet rocket science. It's usually too small to be on the radar of serious businesses, and too big for individuals.

Let me explain that. Very few people have the grit to turn their ideas into something real. If you encounter someone who has the grit and the interest, ask her to join forces !

## 13\. Find real users

Deploying your software is nice, but it's useless until you have users. Find some ! It's never too early to find testers. If your first demo does not embarrass you, it was too late ! At the beginning, it can be as basic as walking through an unfinished feature to get feedback.

Real user feedback always results in both high motivation and value. There are many places to get beta users : at work, through friends ... have the courage to ask !

That's again a case for building your system in baby steps. The faster you get to something you can show, the faster you can have beta users.

## Do it !

If I needed a 14th best practice it would be to start today ! As with most things, just do it !

![Just Do It !]({{site.url}}{{site.baseurl}}/imgs/2017-06-19-13-tricks-for-successful-side-projects/just-do-it.jpg)
