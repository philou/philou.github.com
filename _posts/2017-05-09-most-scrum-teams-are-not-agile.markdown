---
layout: single-mailing-list
title: "Most Scrum teams are not agile"
date: 2017-05-09 06:36
comments: true
categories: 
 - continuous improvement
 - agile
 - scrum
 - retrospectives
 - mikado-method
keywords: "Continuous improvement, Software, Agile Software, Agile, Retrospectives, Scrum"
description: "Continuous improvement is key to be agile. Here are a few advices to continuously improve using retrospectives."
---
Being agile is about adapting to change and continuously improving. I've seen (and been) in too many teams blindly following Scrum ([Scrum Zombies](/how-to-kill-scrum-zombies/)) without figuring out how to continuous improve. The most obvious symptom is a boring (or no) retrospective.

Usually, it did not start that way, people had good intentions, and tried to follow the Scrum cookbook. Unfortunately, without any guidance or extreme perseverance, it is plain too easy to mess up the retrospective. If no concrete actions are scheduled at the end of the retro, if the same problems keep coming up at every retro, or if no problems at all are raised during the retro : your Scrum is somehow broken !

One of the promises of Scrum is to keep code quality high, in order to be able to adapt to late changes. Without a good retro to update the coding standards, the working agreements, or to spot and organize large scale refactoring, this will not happen.

One of the agile principle [explicitly states](http://agilemanifesto.org/principles.html) the need for motivated team members. In [Drive](https://www.amazon.com/Drive-Surprising-Truth-About-Motivates/dp/1594484805/ref=sr_1_1?tag=pbourgau-20&amp;ie=UTF8&qid=1494561757&sr=8-1&keywords=pink+drive) Daniel Pink explains that one of the ingredient for motivation is autonomy. As a way to fix recurring problems, effective retrospectives will create autonomy, and enable motivation. Dysfunctional retros will slowly kill both ...

Although continuous improvement at all levels is one of the most important element in your process, it needs a bit of practice to setup right. After trying different approach in different teams, I compiled a list of the things that worked for me :

[![The cover of the Daniel Pink's "Drive" book]({{site.url}}{{site.baseurl}}/imgs/2017-05-09-most-scrum-teams-are-not-agile/drive.jpg)](https://www.amazon.com/Drive-Surprising-Truth-About-Motivates/dp/1594484805/ref=sr_1_1?tag=pbourgau-20&amp;ie=UTF8&qid=1494561757&sr=8-1&keywords=pink+drive)

## How to do successful retrospectives

### Start !

Sounds obvious ! The first step is to schedule a recurring meeting and invite all the team. Someone should take care of facilitating. If you want to improve things, do this yourself at the beginning ! Once the practice is in place and everyone sees the benefits, you'll be able to get some help.

[Here](/how-we-introduced-efficient-agile-retrospectives/) is a crash-course about how to organize and drive your first retrospective. If your team is distributed, you'll need a slightly different setup. In my previous team, we had success using [Trello](https://trello.com), you can read more about it [here](/trellospectives-remote-retrospectives-with-trello/).

![Just Do It picture]({{site.url}}{{site.baseurl}}/imgs/2017-05-09-most-scrum-teams-are-not-agile/just-do-it.jpg)

### Make sure everyone talks

Retros should not be "just-another-boring-meeting" ! People should be excited to be there and to solve their recurring problems. I've seen retros where no one would speak, as if there was absolutely nothing to improve ! I've also been in retros where people raised collaboration issues, and came up with drastic improvements to the way they work, like adopting pair-programming for example.

There can be many reason why people don't speak : habit, organizational culture ... Whatever the cause, if you show them the path, if you demonstrate that retro work and that it is safe to speak, you'll get them to participate.

Here are a few tricks to guide a team there :

* It is said that if someone does not speak in the first 5 minutes of a meeting, he'll remain silent for the rest. That's why [energizers](www.funretrospectives.com/category/energizer/) work. They force everyone to participate to a Fun activity right from the start. [Fun Retrospective](http://www.funretrospectives.com/) contains a lot of engaging energizers.
* Bring food ! Having food at work was one of Kent Beck's main advises in [eXtreme Programming, Embrace Change](https://www.amazon.com/Extreme-Programming-Explained-Embrace-Change/dp/0201616416/ref=sr_1_2?tag=pbourgau-20&amp;s=books&ie=UTF8&qid=1494561932&sr=1-2&keywords=extreme+programming+explained+embrace+change). Food is social and create a more relaxed and safer atmosphere.
* Before you start the meeting, it might be useful to repeat the [Retrospective's Prime Directive](http://www.retrospectives.com/pages/retroPrimeDirective.html).

> Regardless of what we discover, we understand and truly believe that everyone did the best job they could, given what they knew at the time, their skills and abilities, the resources available, and the situation at hand.

* As the animator, you should make sure the discussions don't degenerate into some kind of trolling or blaming. If it's the case, remind that this is not the way the retro is meant to work. In worst case, give a 5 minutes break to everyone to calm down.
* If needed, have a private discussion with people outside the retro to make sure that they understand the "Blame the process, not the people" principle of the retro well enough.

Dealing with "bad" behavior in retros is a wide topic which I am only scratching the surface here. I guess I could write a full post about it.

[![The cover of the "Fun Retrospectives" book]({{site.url}}{{site.baseurl}}/imgs/2017-05-09-most-scrum-teams-are-not-agile/fun-retro.jpeg)](http://www.funretrospectives.com/)

### Get out of with actionable tasks

If you want a sure way to screw up your retros here it is : end the first one with no actionable things to do ! People will learn that it's a useless pscho-blabla meeting for agile softies.

This should be the absolute priority during the first retros. There are various kind of actionable tasks. Teams can adopt new conventions, decide to tackle some specific refactoring, or build a small new tool ...

Actionable items should be small enough to be completed in one sprint. This is fine for refactoring a class, adding a [SonarQube](https://www.sonarqube.org/) rule or asking for something from another team. What about larger tasks ? Suppose you just identified a large refactoring to do, how do you get started ? I know 2 strategies for that :

* Only identify the first step of what you want to start. At least, that's enough to get started and learn what to do later.
* Agree on a [Mikado](https://mikadomethod.wordpress.com/) discovery task to understand what needs to be done. Code is not the only thing that can be refactored with the Mikado method ! People have used it to transform [organizations](http://nomad8.com/organisational-change-with-mikado/) !

It's also a good habit to book the rooms for extra time after the official retro time. Nothing is as frustrating as being interrupted while investigating a promising improvement !

Finally, I think it's a good practice to review what happened of the improvements that were selected during last retro. It stresses the importance of doing what was scheduled in retrospective. It also gives a chance to investigate the reason why they were not done !

[![The cover of the "Mikado Method" book]({{site.url}}{{site.baseurl}}/imgs/2017-05-09-most-scrum-teams-are-not-agile/mikado-method.jpg)](https://www.amazon.com/Mikado-Method-Ola-Ellnestam/dp/1617291218/ref=sr_1_1?tag=pbourgau-20&amp;s=books&ie=UTF8&qid=1494562230&sr=1-1&keywords=mikado+method)

### Put them in the sprint

When actions are selected in the retro, you should add them to the coming sprint before it starts. Obviously, you'll add non business related items in your sprint backlog. Whatever you might have hear from agile zealots, do it ! Process improvements are fist class backlog citizens, just don't discuss them with your [product owner](https://www.scrum.org/resources/blog/who-professional-scrum-product-owner).

If you want a chance to deliver what you committed to in your sprint backlog, you'll need bandwidth for that ! They are many ways to do get that. Some teams use [slack time](http://www.jamesshore.com/Agile-Book/slack.html), others reserve an 'improvement day' every sprint. My personal favorite (and the one we've been doing at work) is to estimate the improvements in story points and reserve a fraction (ex 20%) of your story points for improvements.

You can try to negotiate your improvement ratio with your product owner ... or you might also just set it yourself ! The team is responsible for the quality of its work. Better be sorry than ineffective. If you stick to your ratio and only work on the most important improvements, it's usually pretty easy to justify working on them. Plus if you manage to go under the radar for a few sprints, the results of the improvements should speak by themselves.

### Do them as soon as the sprint starts

One last thing. Start to work on your improvements as soon as the sprint starts.

Improvements are similar to investments : you invest in process, tools or code in exchange for more value creation downstream. Once you've decided to invest in something, what's the point of waiting 1 week ? Plus if you wait for later in the sprint, you run the risk of having unfinished improvements at the next retro, which might interfere when prioritizing new ones.

## Continuously improving teams

Being part of a continuously improving team is easier to live than to describe. It feels like the future is bright. Once a team has mastered continuous improvement, people can be optimistic that they'll manage to adapt to change later down the road :

* They could switch gears and go full speed on a particular re-architecture
* They could change their working agreements to adapt to new constraints
* They could re-focus their efforts to handle a maintenance pike

At the end of the day, bottom-up continuous improvement makes everyone's lives easier. Developers experience more autonomy while improving their productivity, they can do good work (which also means spending less time bug-fixing). Product owners learn that they can trust the team to do their best. Sponsors get more value for their money.

> Agile teams bend so they don't break !

