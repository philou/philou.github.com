---
layout: post
title: "How to start a team coding dojo Randori today"
date: 2018-03-08 08:57
comments: true
categories:
 - tdd
 - team building
 - coding dojo
 - team-randori-series
keywords: "Coding Dojo, TDD, Test Driven Development, Randori, How to, Guide"
description: "A very practical guide as to how to start a Randori Coding Dojo to boost your team's teamwork"
---
In my [previous post](/why-you-should-start-a-team-coding-dojo-randori-right-now/), I explained why you should start a team [coding dojo](http://codingdojo.org/) [Randori](http://codingdojo.org/RandoriKata/) as soon as you can. Here is a step by step guide to set one up today.

![A white belt](../imgs/2018-02-23-how-to-start-a-team-coding-dojo-randori-today/white-belt.jpg)

## Logistics

This the most important, and most easy, part !

### A Time Slot

For a regular team coding dojo, practice showed that 2 hours every 2 weeks works great. Most teams I've worked with had 2 weeks sprints, which made this rhythm natural.

Try to find a day and a slot that fits your own constraints. It could on the first, last or mid day of the sprint. It could be in the morning where people are usually fresh. People might have a bit less energy in the afternoon. Don't put it in the middle of the afternoon, or you'll ruin the programmers' focus. Some teams use the lunch break, and bring food in to make the coding dojo even more fun.

Once you've found the perfect slot, book a recurring meeting with all your team. It's now official, you are going to have your first team coding dojo !

### Material Stuff

You now need only 4 other things :

*   a room
*   a laptop with a programming environment
*   a large visible screen to display the laptop
*   a timer

It used to need a bit of preparation to get all these, but nowadays, it should be easy.

## Your first session

The good thing about the Randori is that it is almost preparation-free. Here is the typical agenda for a Randori session :

1.  Introduction (0:05)
2.  Problem Selection (0:05)
3.  Coding (1:40)
4.  Retrospective (0:10)

### Introduction

Start by reviewing last session's retrospective. This will bring good resolutions back to everyone's minds. Obviously, you cannot do that at the first session. Present the rules of the Randori instead (as stated by [Emily Bache](https://twitter.com/emilybache?lang=fr) in her [book](https://www.amazon.com/Coding-Dojo-Handbook-Emily-Bache/dp/919811803X/ref=sr_1_1?ie=UTF8&qid=1519388493&sr=8-1&keywords=coding+dojo+handbook)):

> 1.  If you have the keyboard, you get to decide what to type
> 2.  If you have the keyboard and you don’t know what to type, ask for help
> 3.  If you are asked for help, kindly respond to the best of your ability
> 4.  If you are not asked, but you see an opportunity for improvement or learning, choose an appropriate moment to mention it. This may involve waiting until the next time all the tests pass (for design improvement suggestions) or until the retrospective.

Don't hesitate to repeat the rules when you have a newcomer or when you see fit.

The introduction is also a moment where participants can share things together. Just make sure it does not eat on coding time.

### Problem Selection

There is a ton of coding dojo subjects out there. For the first session, pick in 1 or 2 problems for the team to choose from. After a few sessions, let people bring in problems and dot vote on their favorite subjects.

As a first problem, I like the [Roman Numerals](http://codingdojo.org/kata/RomanNumerals/) kata. It's not too difficult and has some interesting [YAGNI](https://martinfowler.com/bliki/Yagni.html) and "Do the simplest thing that could work" properties. That's only a personal preference though. Here some resources where to find kata problems :

*   [codingdojo.org](http://codingdojo.org/)
*   [cyber-dojo.org](http://cyber-dojo.org/)
*   [kata-log.rocks](http://kata-log.rocks)
*   [The Coding Dojo Handbook](https://www.amazon.com/Coding-Dojo-Handbook-Emily-Bache/dp/919811803X/ref=sr_1_1?ie=UTF8&qid=1519279127&sr=8-1&keywords=coding+dojo+handbook) (Where you'll also find tons of other valuable advices)

[![The Coding Dojo Handbook cover](../imgs/2018-02-23-how-to-start-a-team-coding-dojo-randori-today/coding-dojo.jpg)](https://www.amazon.com/Coding-Dojo-Handbook-Emily-Bache/dp/919811803X/ref=sr_1_1?ie=UTF8&qid=1519279127&sr=8-1&keywords=coding+dojo+handbook)

Whatever the topic you chose for your first session, make sure it is not too difficult.

> 💡 As a first team Randori coding dojo problem, I like [Roman Numerals](http://codingdojo.org/kata/RomanNumerals/) kata.

### Coding

That's why we are here ! The Randori is a dojo format where everyone works together, on the same problem, through the same computer. Start the timer for 5 minutes as the first pair works on the problem. When the timer rings, the co-pilot takes the keyboard, and someone new becomes the co-pilot. Start the timer again, and repeat after 5 more minutes. If you did not already, have a look at my previous post(TODO) for more details.

You should be using [Test Driven Development](https://en.wikipedia.org/wiki/Test-driven_development) during the Randori. Even if you are not (yet) using it on your production code. Here is why :

* It provides a fast feedback loop which enables the fast paced 5 minutes round robin
* It teaches how to design testable code, which is always useful
* It teaches how to do baby steps refactorings
* 🎁 Bonus : it demonstrates agile principles in practice (focus on outcome, incremental delivery, YAGNI ...)

I've written a lot about TDD, have a look at my posts(TODO) for more. Applying TDD means sticking to the Red-Green-Refactor loop. During first sessions, be particularly careful that people don't refactor on red tests.

> 💡 Team Randori coding dojo demonstrates agile principles in practice (focus on outcome, incremental delivery, YAGNI ...)

### Retrospective

Stop coding 10 minutes before the end of the session. It might be difficult, but remind everyone that you are here to learn and that you can resume on next session. Use these 10 minutes to think about how it went. As the facilitator, take the keyboard, write these 4 questions in a text document :

*   What did we do ?
*   What did we learn ?
*   What still puzzles us ?
*   What did we decide ?

Ask everyone for their answers and write them down. You'll use this at the beginning of next session.

## Next Post

I thought 2 posts would be enough to cover coding dojos, but it seems I have more to say ! My next post will be about tricks and advices to make your dojos a success. Don't miss it : [subscribe](https://feedburner.google.com/fb/a/mailverify?uri=PhilippeBourgau&loc=en_US) !