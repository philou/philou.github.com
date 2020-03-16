---
layout: single-mailing-list
title: "Flavors of TDD"
date: 2016-09-20 20:54
comments: true
categories:
 - tdd
 - testing
 - programming
keywords: "TDD, Test Driven Development, Testing, Software Testing, Automated Testing"
description: "Discussion over different flavors of TDD and in what situation they are best suited"
---
During the years doing some coding dojos with the same circle of people, I came up with my own style of practicing [TDD](https://en.wikipedia.org/wiki/Test-driven_development). Lately, I had the chance to do a pair programming session with someone I did not know. That made me realize that they are in fact even more ways to practice TDD than I thought.

## Mockist vs Classisist

A lot has already been written (and discussed) about these two approaches. I myself have already [blogged](/hitting-the-middle-ground-between-classicist-and-mockist-tdd/) about the subject, I even gave a [talk](/how-not-to-use-mocks-my-talk-at-paris-rb/) about it. From my own point of view, I believe that the inconvenients of making mocking the default far outweights the benefits. I'm not saying that mocks aren't useful from time to time, but rather that they should remain the exception.

## Top-Down vs Bottom-Up

That's the reason why I wrote this post. This is the main difference I found between my style and my pair's. Let me explain.

![Top-Down vs Bottom-Up]({{site.url}}{{site.baseurl}}/imgs/2016-09-20-flavours-of-tdd/topdown-vs-bottomup.jpg)

### Top-Down

Doing TDD top-down means starting with high level end to end tests, implementing the minimum to make it work, refactor and repeat. A bit like BDD, the point is to focus on the expected behavior, and avoid writing useless things. The bad point is that the refactoring part can get pretty difficult. On real life code, strictly following top-down would mean writing a feature test first, passing it with a quick and dirty implementation, to then spend hours trying to refactor all that mess ... good luck !

Here is another example, from coding dojos this time. Having had success with the top-down approach during previous dojos, we once intentionally tried to code [Conway's Game of Life](https://en.wikipedia.org/wiki/Conway%27s_Game_of_Life#) using a top-down approach. We did so by writing high level tests that were checking special patterns (gliders ...). That was a nightmare ! It felt like trying to reverse engineer the rules of the game from real use cases. It did not bring us anywhere.

![Conway's game of life gliders]({{site.url}}{{site.baseurl}}/imgs/2016-09-20-flavours-of-tdd/glider.gif)

### Bottom-Up

At the other side of the spectrum, you can do bottom-up TDD. This means unit testing and implementing all the small bricks you think you'll need to provide the expected overall feature. The idea is to avoid tunnels and to get fast feedback on what you are coding. The bad side is that you might be coding something that will end up being unnecessary. Be careful, if you find yourself spending a lot of time building up utility classes, you might be doing too much bottom-up implementation.

The [Numerals to Romans Kata](http://codingdojo.org/cgi-bin/index.pl?KataRomanNumerals) is a good exercise to fail at bottom-up. Every time I did this exercise during a coding dojo, people new to it would start to come up with complicated ways to do it (often involving complex array manipulation). Compared to that, applying disciplined bottom-up TDD brings a [brutally effective solution for Numerals to Romans](https://github.com/FreeCodeCamp/FreeCodeCamp/wiki/Algorithm-Roman-Numeral-Converter).

## Mixed approach

Both approaches have their pros and cons. I really believe developers who are serious about TDD should master both, and learn when to apply each. In fact, as often, the best approach lies somewhere in the middle. Here's my recipe :

1. Start with a high level feature test
1. try to make it pass ...
1. ... (usually) fail
1. rollback or shelve your test and draft implementation
1. build a brick
1. unshelve
1. try to make it pass ...
1. ... and so one until the high level test finally passes.

In fact, it's a lot like the [Mikado Method](https://mikadomethod.wordpress.com/) for building features instead of refactoring.

## Practice in dojos

It's possible to intentionally practice this in coding dojos as well. Most kata should be OK, as long as the group agrees to fix it using this particular approach up front.

If during the dojo, you've just written a test, suddenly realize that it won't be easy to get it passing, and that you've got the elements spread out in your code, this is the time ! Comment the test, get the green bar, refactor, uncomment the test, try to make it pass, repeat ... Eventually, you'll have all the bricks to make it easy to pass your test.

![Cargo Cult : People thought that by building something that looks like a plane, they would be able to fly]({{site.url}}{{site.baseurl}}/imgs/2016-09-20-flavours-of-tdd/cargo-cult.jpg)

Some might say this is not 'pure' TDD, but that sounds like cargo cult to me ! As long as you make sure you are not building useless stuff, and that you keep the feedback loop as short as possible, you're on the right track.
