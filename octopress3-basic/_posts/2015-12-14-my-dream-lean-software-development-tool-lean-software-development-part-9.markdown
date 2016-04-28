---
layout: post
title: "My Dream Lean Software Development Tool (Lean Software Development part 9)"
date: 2015-12-14 20:49
comments: true
categories:
 - lean
 - software
 - planning
 - business value
keywords: "Lean, Software, Lean Software Development, Project Management Tool"
description: "A vision of a software project tool providing business insights by using lean product development techniques."
---
Current software project tracking tools suck !

{% img center /imgs/2015-12-14-my-dream-lean-software-development-tool-lean-software-development-part-9/it-sucks.jpg A stamp that writes "SUCKS" %}

By writing [this series of posts](/the-flow-book-summary-lean-software-development_part_1/), I realized that they should help us to prioritize rather than just serving as a nice GUIs on top of a ticket database.

Let's take the story of developer Joe as an example. Joe is working for Megacorp, where he makes a good living, but feels like a small cog in the machine. He has lost the thrill of programming ... He's still staying informed about latest trends in software world, but his job involves aging technologies. He knows that if he wants to remain in the course, he has to change gears. One day, he decides to do something *now*, and starts a side project in the hope of someday making a living out of it.

He does not have a large amount of money to invest in his project, so he decides to bootstrap his product using [Lean Startup](http://theleanstartup.com/). He reads and understands that there is a lot of different kind of activities to do if he wants to realize his dream : experiments, marketing, sales, design, coding ...

Unfortunately, he's so tired of programming boring stuff that he contracted the developer bias : he starves to code cool things again ! He knows the rest is important, he tries to do some of it, but he just doesn't realize how *much* needs to be done. So, without realising it, he wastes a lot of time coding something that people eventually don't buy. After 1 or 2 years of hard work, a working product but no users, he eventually quits, quite depressed ...

I guess you don't want to be Joe ! I know you'll think it won't happen to you ... believe me, it can, [I learned it the hard way](rip-mes-courses-dot-fr/) !

Now suppose you had a tool that estimates the expected values of all different tasks :

* By applying [Monte Carlo simulations](https://en.wikipedia.org/wiki/Monte_Carlo_method) to probabilistic value and size ranges, it could compute which features we should work on first. As a side effect, this could give us some release date estimates for a feature, depending on its position in the backlog.
* By having explicit experiment tasks with target value or size ranges, it could compute the value of information and prioritize experiments versus other tasks.
* Crossing informations from IDEs, VCS, Quality Trackers and CIs, it could detect technical debt items (aka. productivity opportunities), compute their values in the long run, and prioritize them with other tasks.
* If we found a way to integrate marketing, sales and design tasks, any kind of activity could be stored in the backlog, valued and prioritized.

Here is what the backlog could look like :

{% img center /imgs/2015-12-14-my-dream-lean-software-development-tool-lean-software-development-part-9/mockup.jpg A mockup of the backlog view of such a product %}

All different kind of activities (developments, marketing, experiments, refactorings) would fit in the backlog. The system would estimate the value of every task for Joe, advising him what to work on first. It would make it obvious just how much market experiments are important when starting ! With such a tool, he is a lot more likely to build his new life.

The good thing with such a tool is that it could be built by feeding itself. [Eating its own dog's food](https://en.wikipedia.org/wiki/Eating_your_own_dog_food) has always been the nice thing about writing software tools.

I'd like to know, what do you think of the idea ? Would you use such a tool ? Is it worth me spending my nights building it ?

This was 9th and last part of my [suite of article about Lean Software Development](/the-flow-book-summary-lean-software-development_part_1/), Part 8 was [How I'll Measure the Lean Startup Value of Information in My Next Side Project](/how-ill-measure-the-lean-startup-value-of-information-in-my-next-side-project-lean-software-development-part-8/).
