---
layout: single
title: "TO DO list or Mind Map for programming"
date: 2019-09-05
comments: true
categories:
 - personal-productivity
 - mob programming
 - pair programming
 - remote
 - mikado-method
description: "Maintaining a TO DO list for programming creates a higher-level view of the work, improves our decision making and show what's left to do. A Mind Map for programming helps with refactoring and improves collaboration when pair or mob programming. Online collaborative tools make this remote-friendly."
header:
   teaser: /imgs/2019-08-16-to-do-list-or-mind-map-for-programming/todo-map-for-programming-teaser.jpeg
   og_image: /imgs/2019-08-16-to-do-list-or-mind-map-for-programming/todo-map-for-programming-og.jpeg
published: false
---
_Maintaining a TO DO list or a Mind Map for programming a task has many benefits. It improves collaboration, our decisions and our vision of what's left to do._

![Drawing of a laptop for programming, surrounded with a TO DO list and a Mind Map for programming sub tasks]({{site.url}}/imgs/2019-08-16-to-do-list-or-mind-map-for-programming/todo-map-for-programming.jpeg)

Through my years of programming, I've been refining the notes I keep next to my keyboard. It went from nothing, to an online mind map! Here are the steps I went through.

## Nothing... and buggy code!

I always had my head in the clouds. At school, I did a lot of silly mistakes, but it ended up ok most of the time. When I started programming, I thought I could approach the job the same way.

> 💡 ~~Dont' worry too much, it will work fine in the end...~~

That did not work! I soon got the feedback that my code contained a lot of bugs.

## Hand notes for TDD

Knowing that I could not trust myself to be-more-careful, I looked for something else. That's how I discovered [Test Driven Development](/categories/#testing) and [eXtreme Programming](/categories/#extreme-programming).

TDD contains 3 steps Fail the test, Pass the test and Refactor, aka Red, Green, Refactor. The catch is that we can always come up with more things to refactor than we have time. So, we often postpone refactoring, for good reasons:

*   "These 2 pieces of code look similar, but I am not sure they relate to the same business concept. Let's wait until I catch Joe and ask him"
*   I could refactor this now, but it might be faster to wait until I have done X.
*   This is duplicated, but it's a lot of work to factorize. More than I can afford given the customer constraints. We'd rather start a long term refactoring with the team
*   etc

That's why I started to keep hand written notes next to my keyboard. To be sure not to forget things before I closed my task. With time, I would add more reminders to these notes, like special test cases for example.

![Sample hand notes like I used to write]({{site.url}}/imgs/2019-08-16-to-do-list-or-mind-map-for-programming/hand-written-notes-for-programming.jpeg)

These little notes already brought quite some benefits:

*   A higher level view of the full task.
*   They help to take a step back and make better decisions.
*   They help to skip parts of the work that are not necessary right now, which is key to a sustainable pace.

> Simplicity--the art of maximizing the amount of work not done--is essential. [The Agile Manifesto](https://agilemanifesto.org/principles.html)

## A TODO-list for pair programming

A few years down the road, I had the chance to join an XP team. I discovered pair programming, and the role of navigator. The hand written notes proved even more useful there.

When navigating, we are at a unique place to think of the design, notice things to improve, tests cases to add... [The navigator](https://gist.github.com/jordanpoulton/607a8854673d9f22c696) can spend his time updating the notes, without interrupting the driver! That's one of the main benefits of pairing.

The difficulty though, is that when we switch roles, the new navigator takes over the notes. This forced us to use a more structured format. [That's how we ended up with real TO DO list](/real-programmers-have-todo-lists/).

![Sample hand written TO DOs list. A TO DO list for programming is a boost to pair programming collaboration.]({{site.url}}/imgs/2019-08-16-to-do-list-or-mind-map-for-programming/hand-written-to-do-list-for-programming.jpeg)

Plus, when starting to pair on a task, it's useful to lay down the steps we'll go through. Here again, the TO DO list is a perfect support to write this down.

To summarize, maintaining a TO DO list for programming boosts pair programming collaboration.

The story of my hand notes does not end there though...

## An online doc for remote pairing

A while ago, [I started to remote pair program](/from-zero-to-pair-programming-hero/) with my friend [Ahmad Atwi](https://ahmadatwi.me/). Maintaining a TO DO list on paper did not work anymore. 😰

We switched to online collaborative editors like Google docs to keep this TO DO list up to date. This was an easy improvement that made remote pairing simpler for everyone!

![Sample detailed TO DO list in Google Docs. Maintaining a TO DO list for programming made remote pair programming easy.]({{site.url}}/imgs/2019-08-16-to-do-list-or-mind-map-for-programming/to-do-list-for-programming-google-docs.jpg)

As we improved the way we worked, we improved our TO DO list for programming as well!

## A Mind Map for refactoring

As explained in [5 XP practices that will make your remote team more effective](https://ahmadatwi.me/2019/07/03/5-xp-practices-that-will-make-your-remote-team-more-effective/) remote pairing is easier with small commits. We were trying to keep the tests passing all the time, and were doing more and more baby-steps refactoring.

> Make the change easy, them do the change. [Kent Beck](https://www.kentbeck.com/)

To make this manageable, we started to split the TO DO list items in sub steps. Our TO DO list was looking more and more like a graph of baby steps changes. (Side Note: Graph of baby refactoring steps are also called [Mikado Graphs](/categories/#mikado-method))

At this stage, the TO DO list had become a full plan of the work to do. The root node represented the story or task itself. It's children were the main sub-tasks. Each sub-task could have sub-parts, etc... We did not plan everything in details from the start, but we updated it as we went.

The text todo list was showing its limits, that's when we switched to a mind map for programming.

![Sample detailed TO DO mind map in an online mind map editor. Maintaining a mind map for programming makes everyone in the mob see where we stand]({{site.url}}/imgs/2019-08-16-to-do-list-or-mind-map-for-programming/mind-map-for-programming.jpg)

## Works fine for mobbing as well

I now coach teams to mob programming. I also use mob programming to help them to refactor their own code.

We use a mind map for programming as a mob. Maintaining a mind map of the work to do ensures everyone understands the why, what and how of the work.

We're not alone! Other teams, like the cucumber pro guys, are doing it as well:

> We use the [MindMup](https://www.mindmup.com/) tool to draw and update a mind-map of our problem solving as we go. see

Check their post [The Surprisingly Inclusive Benefits of Mob Programming](https://cucumber.io/blog/inclusive-benefits-of-mob-programming/) for the full story.

## Start yours today!

![Photo of a man, sitting in front of a laptop, a pencil in one hand, writing something on a notebook. Maintaining a TO DO list for programming is easy to start.]({{site.url}}/imgs/2019-08-16-to-do-list-or-mind-map-for-programming/hand-writing-to-do-list-for-programming.jpg)

Whether you are solo, pair or mob programming, I encourage you to start your TO DO map now. It's very easy to get started. Draw a mind map of your plan, and update it as you go. It's a low effort, high return move.

You'll be able to keep a high level vision of the task at hand:

1.  You will take better decisions
2.  You will know what's done and what's left to do
3.  You will be able to efficiently pair or mob program

If you are solo or colocated, a sheet of paper or a whiteboard will be enough. If you are remote, you'd better head to Google Docs, [Coggle](https://coggle.it/) or any online mind mapping tool.