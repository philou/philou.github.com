---
layout: post
title: "A coding dojo exercises plan towards refactoring legacy code"
date: 2018-06-14 06:29
comments: true
categories:
 - tdd
 - technical debt
 - coding dojo
keywords: "Legacy Code Refactoring, Coding Dojo Exercises, Coding Dojo, Legacy Code, Refactoring, Code Kata, TDD, Test Driven Development"
description: "Learn how to do Legacy Code Refactoring through Coding Dojo Exercises. Refactoring Legacy Code is hard. Although very effective on new code, Test Driven Development can seem impossible to apply on Legacy Code. Going through this Coding Dojo Exercises plan should bring your skills up to the task."
---
My current job [at work](http://www.murex.com) is technical coach. I'm available for teams that need help to adopt incremental coding practices.

## Problems with refactoring legacy code

A few months ago, a team which was struggling with a lot of legacy code asked for help. As you might know if you read my blog, I'm a big fan of [Test Driven Development (TDD)](https://en.wikipedia.org/wiki/Test-driven_development) because it has made my [life as a developer so much more easy](http://philippe.bourgau.net/from-apprentice-to-master-how-to-learn-tdd-test-driven-development/). I'm so used to TDD now, that even if I don't have tests yet (as is the case when refactoring legacy code), TDD helps me :

*   To stick to baby steps which are a lot less likely to fail than larges changes.
*   Write testable code. I know what testable code looks like, and when refactoring, I'll try to change it towards that.

That's why we started to run regular, all team, [coding dojo randoris](http://philippe.bourgau.net/blog/categories/team-randori-series/). It was nice for the [team dynamics](http://philippe.bourgau.net/why-you-should-start-a-team-coding-dojo-randori-right-now/), and the people where learning a lot of technical skills. I also got the feedback that they where not able to apply this directly on their day to day job though. After a bit more discussion, I understood that they did not know where this was going, what to expect, and when !

> 💡 Test Driven Development also teaches you what testable code looks like.

## The coding dojo exercices

It turned out that a coding dojo exercises plan was enough to answer their questions. This is what it looks like.

### Drawing

[![An illustrated Coding Dojo Exercises plan leading to the mastery of Legacy Code Refactoring]({{site.url}}/imgs/2018-06-04-a-coding-dojo-exercises-plan-towards-refactoring-legacy-code/Coding-Dojo-Hulk-small.jpg)]({{site.url}}/imgs/2018-06-04-a-coding-dojo-exercises-plan-towards-refactoring-legacy-code/Coding-Dojo-Hulk.jpg)

### Mind Map

Here is another, more concrete, version, with sample names of katas we can find online.

[![An mind map of Coding Dojo Exercises plan leading to the mastery of Legacy Code Refactoring]({{site.url}}/imgs/2018-06-04-a-coding-dojo-exercises-plan-towards-refactoring-legacy-code/TDD_Kata_Plan-small.jpg)]({{site.url}}/imgs/2018-06-04-a-coding-dojo-exercises-plan-towards-refactoring-legacy-code/TDD_Kata_Plan.jpg)

### Text

It starts with simple greenfield katas :

* [Fizz Buzz](http://codingdojo.org/kata/FizzBuzz/)
* [Roman Numerals](http://codingdojo.org/kata/RomanNumerals/)
* [Bowling](http://codingdojo.org/kata/Bowling/)

It goes on to intermediate katas, where we can use TDD to do design :

* [Mars Rover](http://kata-log.rocks/mars-rover-kata)
* [Poker Hands](http://codingdojo.org/kata/PokerHands/)
* [trading card game](http://codingdojo.org/kata/TradingCardGame/)

From then on, it's possible to tackle advanced katas and styles :

* Refactoring fresh code
   * Continue design katas on 2 or more sessions
   * Always compile Constraint
* Bottom-up TDD
   * [Game of Life](http://codingdojo.org/kata/GameOfLife/)
   * Median of a list of lists (with no concatenation)
   * [Langton ant](http://codingdojo.org/kata/LangtonAnt/)
* Top-Down TDD
   * [Kata Potter](http://codingdojo.org/kata/Potter/)
   * [LCD](http://codingdojo.org/kata/NumberToLCD/)
* TDD on algorithms
   * [Diamond](http://codingdojo.org/kata/Diamond/)
   * [Kata Lags](http://codingdojo.org/kata/Lags/)
   * [anagrams](http://codingdojo.org/kata/Anagram/)

All this opens the gate to legacy code refactoring katas :

* [Gilded Rose](https://github.com/emilybache/GildedRose-Refactoring-Kata)
* [Race Car Katas](https://github.com/emilybache/Racing-Car-Katas)
* [Ugly trivia game](https://github.com/jbrains/trivia)
* Others from http://kata-log.rocks

At that point, the team can [mob](https://en.wikipedia.org/wiki/Mob_programming) to refactor production code :

* Real life, static analysis issue, mob programming session
* Real life, code smell, mob programming session
* Real life, larger mob Refactoring

## What changed in practice ?

We wanted to split the teamwork and the coding dojos exercises. The team is now doing mob programming sessions on their usual stories twice a week (I'll blog about that someday). But also doing regular coding dojos exercises in pairs.

Even if they did not go through all the TDD katas yet, mobbing on real stories helps the team to take on legacy code.

> Given enough eyeballs, all bugs are shallow. Linus's Law

Working in pairs on the code katas allows them to be more engaged in the exercises. In the end, it brings faster learning.

> 💡 A mix of Coding Dojos in pairs and Mob Programming sessions is a good way to teach TDD in a Legacy Code context.
