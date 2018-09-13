---
layout: single
title: "Incremental Software Development Strategies for Large Scale Refactoring #2 : Baby Steps"
date: 2018-08-09 08:50
comments: true
categories: 
 - refactoring
 - incremental-software-development
 - coding-dojo
 - mikado-method
 - large-scale-refactoring-sponsorship-series
keywords: "Baby steps, Baby steps software, Baby steps software development, Large Scale Refactoring, refactoring large software projects, refactoring large software systems, refactoring large code base, refactoring in large software projects, incremental software development, incremental software development approach, iterative incremental software development, incremental development of software, incremental and iterative development strategies, incremental software development strategies"
description: "Learn to split a large scale refactoring in tiny baby steps to be able to deliver it alongside features. Slack time, the Boy Scout Rule and embedding refactoring in features creates many small time slots. Cutting large scale refactorings in baby steps is mandatory to take advantage of these slots."
---
*How can we exploit short time slots here and there to perform large scale refactoring?*

[My previous post](/incremental-software-development-strategies-for-large-scale-refactoring-number-1-constant-merciless-refactoring/) was about how to get slots of time in your daily (or weekly) work to do some refactoring. I left my readers with the promise of techniques to fit the refactoring work into these small slots.

Obviously, it won't be possible to perform any refactoring of any size in this way. With a bit of discipline and know-how though, it is possible to deal with quite a lot by splitting them up.

Baby steps are small increments of working software. The idea is that we test, commit, integrate and even deploy every small code change ! Using baby steps, we can perform large scale refactorings little by little. Refactoring in this way might seem involved, but it's so much safer that it's [a no brainer once you've tried it](/7-reasons-why-learning-refactoring-techniques-will-improve-your-life-as-a-software-engineer/) ! Refactoring in baby steps can be challenging to master though.

![Baby footprints. Taking really small baby steps when going through a large scale refactoring is safer]({{site.url}}{{site.baseurl}}/imgs/2018-08-07-incremental-software-development-strategies-for-large-scale-refactoring-number-2-baby-steps/baby-steps.jpg)

10 years ago, I used to work in a large bank in Paris. I had been dabbling on my own with [eXtreme Programming](https://en.wikipedia.org/wiki/Extreme_programming) for a few years, when we started a small project. I was to become the informal XP coach. The project was about connecting to an online brokering service. It involved adapting an existing domain library. It went out pretty well. More precisely, we created very few bugs in production, which was very different from the norm at the time. I remember this feedback from the manager :

> We managed to move the code from X to Y through a succession of working baby steps ! That's pretty uncommon ! A manager in 2006

Keep in mind that this was 10 years ago. We had not done anything special except trying to apply eXtreme Programming. Nowadays, as Continuous Integration has become mainstream these skills are becoming more common. That said, we still need to learn how to apply incremental software development to large scale refactoring. This is what I'm going to write about today.

This is the seventh post in a [series about how to get sponsorship for large scale refactoring]({{site.baseurl}}/categories/#large-scale-refactoring-sponsorship-series). If you haven't, I encourage you to start from [the beginning](/how-to-convince-your-business-to-sponsor-a-large-scale-refactoring/).

## Team TDD Coding Dojos

Learning to work in baby steps is not as complicated as it might first seem. The safest and easiest way is to setup a [team TDD coding dojo]({{site.baseurl}}/categories/#team-randori-series). With its Red-Green-Refactor loop TDD sets up a baby steps rhythm. As I'll explain in [my next post](/incremental-software-development-strategies-for-large-scale-refactoring-number-3-manage-it/), baby steps work best when all the team uses them. That's another thing the team Coding Dojo helps with.

> 💡 TDD has a baby steps rhythm baked in.

We can push the learning further. For example, we can use the [baby steps constraint](http://kata-log.rocks/baby-steps) during a few coding dojo sessions. With this constraint, we revert the code if tests fail for more than 2 minutes ! Here is a way to go at it :

1.  Setup [continuous testing](https://www.amazon.com/Continuous-Testing-Ruby-Rails-JavaScript/dp/1934356700/ref=sr_1_4?ie=UTF8&qid=1533638529&sr=8-4&keywords=continuous+testing) : [NCrunch](https://www.ncrunch.net/) in [.Net](https://www.microsoft.com/net), [Guard](https://github.com/guard/guard) in [Ruby](https://www.ruby-lang.org/fr/) or [Infinitest](http://infinitest.github.io/) in [Java](https://en.wikipedia.org/wiki/Java_(programming_language))
2.  Only use automated refactorings or extremely simple code changes in order to ....
3.  ... keep the code compiling all the time ...
4.  ... and cut the time the tests fail as much as possible

## Mikado Method

One way to keep the tests green all the time is to use a slightly different TDD loop, as [Nat Pryce suggests](http://natpryce.com/articles/000780.html) :

[![The red-green-refactor loop of TDD with an extra green arrow from failing test to refactor. This alternate TDD loop illustrates how to take baby steps with the Mikado Method]({{site.url}}{{site.baseurl}}/imgs/2018-08-07-incremental-software-development-strategies-for-large-scale-refactoring-number-2-baby-steps/listening-to-the-tests.png)](http://natpryce.com/articles/000780.html)
<div class="image-credits">From <a href="http://natpryce.com">Nat Pryce's</a> <a href="http://natpryce.com/articles/000780.html">blog</a></div><br>

Here is how it goes. 

1.  Add a new failing test 
2.  If it's trivial to fix, fix it. We are done
3.  If not, see what's missing in the code
4.  Comment the test to get back to a green state
5.  Refactor the code to add what's missing (and use other tests if needed)
6.  Uncomment the test
7.  Repeat from step 2

When doing this at the scale of a real life story or feature, we'd use `git stash` instead of comments. This way of working has a name, it's called the [Mikado Method](https://mikadomethod.wordpress.com/). It is at the heart of making baby steps work in real life.

> 💡 The Mikado Method is at the heart of making baby steps work in real life

## Take a break

With TDD and the Mikado Method we can put the refactoring on pause. We can perform a small increment of the refactoring, commit and deploy it ... and pause ! We'll work on business features for a while, and resume the refactoring later on.

![A cup of coffee next to a computer. Developers can pause their large scale refactoring if they work in small enough baby steps]({{site.url}}{{site.baseurl}}/imgs/2018-08-07-incremental-software-development-strategies-for-large-scale-refactoring-number-2-baby-steps/coffee-break.jpg)

When done well, it feels slow. We have to remember that the alternative is to convince business people of prioritizing a refactoring ... As we'll regularly ship baby steps of a large scale refactoring, we'll know we're on the good track !

## More to come

Unfortunately, even with bandwidth and skills, we are not there yet ... It's one thing for developers to do incremental software development of large scale refactoring on their own. It's another to do it as a team !

This was the seventh post in a [series about how to get sponsorship for large scale refactoring]({{site.baseurl}}/categories/#large-scale-refactoring-sponsorship-series). [Next post](/incremental-software-development-strategies-for-large-scale-refactoring-number-3-manage-it/) will be about how to manage constant merciless refactoring and baby steps as a team.
