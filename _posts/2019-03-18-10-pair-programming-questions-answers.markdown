---
layout: single
title: "10 Pair Programming Best Practices Questions & Answers"
author: Ahmad Atwi
date: 2019-04-25
comments: true
categories:
 - pair programming
 - remote
 - extreme programming
 - agile
description: "Pair programming is not just sitting together in front of an IDE. How much time should we pair? Will it slow us down? How do we organize the pairs? What about remote team members? Won’t senior devs waste their time? Here are battle-tested best practices that will make pairing work for you."
header:
   teaser: /imgs/2019-03-18-10-pair-programming-questions-answers/how-do-we-pair-teaser.jpeg
   og_image: /imgs/2019-03-18-10-pair-programming-questions-answers/how-do-we-pair-og.jpeg
published: false
---
_Pair programming is not just sitting together in front of an IDE. Here are battle tested answers to common questions that will make pairing work for you._

![Drawing of 2 programmers sitting on a double chair, asking many questions about pair programming]({{site.url}}/imgs/2019-03-18-10-pair-programming-questions-answers/how-do-we-pair.jpeg)

[Philippe](/about-me/) and [I](https://ahmadatwi.me/about) are well known to be advocates for [Extreme Programming](https://en.wikipedia.org/wiki/Extreme_programming) and its practices (well Philippe more than me, but I will share some of the credits 😀). Because of that, we were asked lately to participate in a Q&A session to share with our experience and recommendations on applying [pair programming](https://en.wikipedia.org/wiki/Pair_programming) within a dev team.

## Question I: When to do Pair Programming?

All teams do pair programming in one way or another, even if they don't like to admit it!

Almost all developers have the tendency to ask a colleague for help when stuck on a complex piece of code or a bug, this is a form of pair programming! If we acknowledge that the four eyes principle can help solve complex problems faster, then why don’t we apply it all the time?

Going back to the question, some teams love [pair programming](/categories/#pair-programming) all the time! But, it might be better and easier to start slowly. For example, in the next sprint, try to pair 50% of your time. Another idea is to try Mob programming on a specific story. Try that for one sprint, then in your next retrospective, evaluate your experience. If you think the team is ready to do full-time pair programming then go for it! 

## Question II: How should we start pair programming in our team? Will it impact the team's capacity and velocity?

If the team believes that pair programming can bring them benefits, then we advise you try it in your next Sprint!

The first thing to do is allocating the next retrospective to define the pairing agreement within the team. This includes:  

1.  How long to pair? 
2.  How to organize the pairs?
3.  How to distribute the stories? 
4.  When to switch between the driver and the navigator? 

Philippe and I used to work together in the same team when [we switched to full-time pair programming](/from-zero-to-pair-programming-hero/). 

At first, the velocity did not change, our records showed that **we were able to close the same number of story points before and after pairing**. But, after a few sprints, we started to become more concerned about improving the code quality. As we focused more on that, the velocity dropped for a while, but we also managed to drastically reduce the defects and the time allocated for code review. On the long run, we can say that our productivity increased! 

Finally, another important observation to be mentioned here is that thanks to pair programming and knowledge sharing, our team’s productivity was not impacted when any of the team members left the team, even senior ones! 

## Question III: How long do we pair?

Some teams tend to switch pairs every day or half a day. Although it might be a good approach to spread knowledge across team members, that doesn't always work well, as it might take some time for the story lead to onboard their pair on the story's tasks and objectives. Thus, it might take more time to finish the story. 

In our team, we used to switch pairs either on a weekly basis or a story basis. 

We used to organize the pairs and stories on a weekly basis during the sprint and mid-sprint planning meetings. We used to re-shuffle the during those meetings, even if the stories were not closed yet. By doing so, we ensured that no pair worked together for more than one week. 

The second option was switching pairs after closing a story. During the daily standup, a pair used to announce that they have closed their story and ask if any pair is interested in switching the partners. 

It is crucial to change pairs frequently for several reasons. Amongst those reasons is creating a stronger bond between team members and reducing any conflicts that might arise if two developers spend a long time working together. 

## Question IV: When do we plan the pairs?

The ‘_**sprint planning**_’ and ‘_**mid-sprint review**_’ meetings are good candidates for pair-planning. After going over all the pending stories (Not Started & InProgress) in the sprint, we used to agree on the pairs and the story each pair will work on next. Our sprint was 2 weeks long, thus, we had one of those meetings every week which made them ideal for pair-planning. 

## Question V: How will we split the stories?

![Photo of a axe splitting wood. We should take Pair programming into account when splitting stories]({{site.url}}/imgs/2019-03-18-10-pair-programming-questions-answers/axe-splitting-stories.jpg)

Each pair should work on a single story, that means working together on all of its tasks. There are two things that need to be considered when distributing the stories over the pairs. 

First, ensure that all team members are contributing to the different modules of the code. By doing so, you foster collective code ownership between the team members. 

Second, one of the pair should be familiar and knowledgeable of the respective code and the tasks needed to close the story. Pairing will definitely help to spread the knowledge across the team members, thus with time, this will be less of an issue! 

## Question VI: What are the best practices you applied when pair programming?

We built our best practices through trial and collecting feedback during retrospectives. But obviously, the best practices will vary from one team to another. 

Here are four of the best practices we adopted in our team: 

1.  Frequently switch between the driver and the navigator. Failing to do so increases the risk of losing the navigator’s focus and engagement on the story. 
2.  Submit the code as frequent and possible. This practice should be applied always not just when pair programming. But, you can use this technique as an incentive to switch between the driver and the navigator frequently, especially when pairing remotely. 
3.  **Keep an up-to-date shared document of the story’s tasks.** This could be in the form of a to-do-list, word document on Sharepoint or Google Drive, or even a mind-map.  
4.  Do not be afraid of asking for clarification when there is something that you do not understand.
5.  Do not be afraid of asking for a break when you are tired. 

## Question VII: Do we pair on complex stories? or all stories?

In our opinion, pairing should be applied to all stories. It was in very rare cases where we decided not to pair. Even for what might be considered ‘Silly’ stories, a pair can find a better solution than a solo developer, this could be like automating some tasks, proposing a new tool, factorization, etc. Pairing on all production stories is a good way to spot and perform refactoring.

If pairing all the time scares you, leave enough solo-slack to keep the pace sustainable.

## Question VIII: What do we do if we had to wait for a build that takes one hour?

![2 snails slogging on side by side. Pair programming can seem excruciatingly slow with a slow build. It's also an opportunity to speed it up!]({{site.url}}/imgs/2019-03-18-10-pair-programming-questions-answers/snails-slow-build-pair-programming.jpg)

In extreme programming, the rule is to have a build that is at most 10 minutes long. But in reality, some projects take much more to build due to compiling different modules, legacy code, etc.  Rather than having a long build blocking you from pairing, think of how can pair programming help you improve the build time! Here are some ideas: 

1.  Due to the four-eyes principle, it is easier and faster to detect issues while writing the code and before pushing to build pipeline! With this, you will have higher chances for your build to pass 
2.  While waiting for the long build time to finish, think together [how the build can be improved](/you-dont-have-to-ask-your-boss-for-a-fast-build-lean-software-development-part-6/). In our team, we managed to drop the build time from 9 to 3 minutes

## Question IX: How do we handle knowledge difference between the pair?

One of the key benefits of pair programming is knowledge sharing amongst the team members. Still, some developers will remain more knowledgeable on specific modules of the code especially senior members. When there is a knowledge difference between the pair, the driver should play the role of a coach for the navigator. Doing so might delay the story closure, but it is definitely much faster for the less experienced developer to become acquainted of the code.

Philippe wrote an interesting blog on this topic, you can check it [here](/pair-programming-from-pain-zone-to-skill-zone/#)! 

## Question X: What do we do with the time difference between the 2 cities

![Synchronized clocks from Tokyo, New York, London, Hong Kong and Amsterdam. Pair programming needs to be adapted to work well across time zones.]({{site.url}}/imgs/2019-03-18-10-pair-programming-questions-answers/time-difference.jpg)

That is an interesting question for us because it is linked to applying pairing programming in remote mode! In the book [Extreme Programming Explained](https://www.amazon.com/Extreme-Programming-Explained-Embrace-Change/dp/0201616416/ref=pd_lpo_sbs_14_t_0?_encoding=UTF8&psc=1&refRID=WZ5NDKC3KF6D6CMJZWST), Kent Beck & Cynthia Andres recommends having the whole team sitting together in an open space. We could not do that since we were distributed between Paris and Beirut. Instead of quitting XP, we decided to try pair programming in remote mode! And we succeeded for 4 years!  

To be honest, it wasn’t easy at first! But we managed to make it work through determination, feedback collection during [retrospectives](/categories/#retrospectives), and trial and tuning. 

Time difference between Paris and Beirut was one of the issues we faced when remote pairing. Here are some of the agreements we reached that helped us overcome this problem: 

1.  Have an up-to-date shared document of all the story’s tasks. Any of the pair should be quickly updated on the story’s status by just having a quick look at the document. 
2.  Don’t leave un-committed code when you leave your desk! If you are using Git, create a branch for your un-committed code, if you are using perforce use the shelve feature. 
3.  Every morning, the pair share their calendars to be aware when they have separate meetings
4.  Use the time difference to finish any paperwork you need to do alone. 

Philippe and I gave the talk ‘_**Extreme Practices**_’ at Agile Tour Beirut in 2016 and the SPA Conference London in 2017. The talk covered our experience in adopting the XP practices in remote mode. You can check the talk [here](https://ahmadatwi.me/2016/11/23/extreme-practices-video/). 

## Finally…

Even a slight dose of pairing will have benefits on your team’s work. There is no one-size-fits-all with pair programming. Try it a little, see how it works, and improve! Refactoring the way you work is the only way to achieve long term productivity and a sustainable pace.