---
layout: post
title: "Enabling agile practices and elephant taming"
date: 2014-06-15 21:37
comments: true
categories:
 - agile
 - testing
keywords: "Agile, Practices, Testing, Agile practices, Agile processes"
description: "An explanation about how agile practices rely on each other. It highlights the point that it is not possible to achieve true agility without technical practices."
---
Everybody knows about the agile software development promise "Regularly and continuously deliver value". This is how it is supposed to work :

* Iterative
* Focusing on what is needed now
* Release as soon as possible
* Planning small stories according to the team's velocity

![A business A squirrel jumping from one tree to another (source mayamumu.centerblog.net)]({{site.url}}/imgs/2014-06-15-enabling-agile-practices-and-elephant-taming/squirrel.jpg)

It all seems common sense and simple. Especialy for people who don't code. That's not the whole story though, let's have a look at a few variations :

Suppose a team uses [Scrum](http://www.scrum.org) but does not do any automated testing. As soon as the software will be used, bugs will create havoc in the planning. The velocity will quickly fall, within a few monthes, the team won't be able to add any value. Surely, things could be improved with some rewrite and upfront design ... this does not sound like Scrum anymore.

Now let's suppose that another team is also using Scrum, uses automated tests, but [missunderstood Sprint](/sprints-are-not-sprints/) and KISS for quick-and-dirty-coding. Hopefully, this team won't get too many bugs in production ! Unfortunately, any change to the source code will trigger hundreds of test failures : again, the velocity will decrease. I've been in such projects, in about 2 years, the team got really slow, and might eventually drop their test suit ...

These two examples show that automated testing improves the situation, but also that it is not enough ! There are quite a few agile practices that are in fact *enabling* practices. These are the practices that are required for the process to accomplish the agile promise described at the begining of this article. Most come from [eXtreme Programming](http://www.extremeprogramming.org/) and have been reincarnated through [Software Craftsmanship](http://manifesto.softwarecraftsmanship.org/). That's what Kent Beck meant when he said that XP practices reinforce each other. Here are a few examples :

For example let's take **coding standards** and **pair programming** which really seem to be a programmer choice.
It turns out that they help to achieve **collective code ownership**.
Which in turn helps to get 'switchable' team members.
Which helps to make good team estimates.
Which is required to have have a reliable **velocity**.
Which is a must have to regularly **deliver value** on commitment !

It turns out that all of the other original [XP practices](http://www.extremeprogramming.org/rules.html) help to achieve the agile promise.

![A business meeting with a real elephant in the room]({{site.url}}/imgs/2014-06-15-enabling-agile-practices-and-elephant-taming/elephant-in-the-room.jpg)

After a lot of time spent writing software, I now tend to think of the code as the elephant in the room. It directly or indirectly constrains every decision that is make. Recognize and tame your elephant or you'll get carted away ...

... or dragged away ...

... or trampled ...
