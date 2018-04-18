---
layout: post
title: "How Immutable Value Objects fight Mocks"
date: 2018-04-26 08:51
comments: true
categories: 
 - tdd
 - ddd
 - mocking
 - testing
 - programming
 - how-to-avoid-mocks-series
keywords: "Mocks, Unit Testing, Automated Testing, TDD, Test Driven Development, London School of Testing, Mocking, Immutable Value Object, Value Objects, Immutable Data, Immutable Data Structures, DDD, Domain Driven Design"
description: "An explanation of how immutable value objects helps developers to remote mocks from their tests"
published: false
---
Excessive use of mocks makes tests very painful to maintain. If we stick painful mocks for too long, we'll end up abandoning unit testing. Eventually, the system will degrade into legacy. 

There are many techniques to avoid mocks. Some of the most effective involve architecture changes. Unfortunately, there are not the most straightforward to use. Re-architecting involves people and time that you may not dispose of right now. In the following posts, I'll go over techniques that any developer can use in his day to day code to avoid mocks. These battle tested techniques that I've used on different projects in the past. Check [the previous post](/careless-mocking-considered-harmful/) if you're interested to learn how I came to use them.

This is the second post [of a series about how to avoid mocks](/blog/categories/how-to-avoid-mocks-series/) in automated tests. If you haven't yet, I recommend you to read my [first post](/careless-mocking-considered-harmful/) to understand the perils of mocks in more details.

The first mock fighting small-scale technique I'll go over is [Immutable Value Objects](https://martinfowler.com/bliki/ValueObject.html).

![A drawing of a rock written "Immutable Value Object"](../imgs/2018-04-17-how-immutable-value-objects-fight-mocks/immutable-rock.jpg)

## What are Immutable Value Objects ?

Behind this weird name is something very simple to understand. Immutable Value Objects :

*   Cannot change their state after construction
*   Only depend on other Immutable Value Objects
*   Don't change the state of the whole system in any way
*   Don't do side effects, like inputs and outputs for example

Eric Evans popularized the name in the [Domain-Driven Design Blue Book](https://www.amazon.com/Domain-Driven-Design-Tackling-Complexity-Software/dp/0321125215/ref=sr_1_2?ie=UTF8&qid=1523985269&sr=8-2&keywords=domain+driven+design). Immutable Value Objects have existed for decades in functional languages though. We say these objects are immutable (they cannot change) and pure (they cannot do side effects). Here are 2 interesting properties of Value Objects :

*   you can call a method any number of times with no risk of changing anything to the system
*   you'll always get the same result every time you call the same method on the same object

These by itself, can already be handy when testing.

[![Cover of Eric Evans's DDD book](../imgs/2018-04-17-how-immutable-value-objects-fight-mocks/ddd.jpg)](https://www.amazon.com/Domain-Driven-Design-Tackling-Complexity-Software/dp/0321125215/ref=sr_1_2?ie=UTF8&qid=1523985269&sr=8-2&keywords=domain+driven+design)

## How do they prevent mocks ?

That was a bit theoretical, so let's see how this helps to reduce mocking.

### Simpler "init path"

Let's take it the other way round and see how side effects can lead to mocking. Every test starts with setting the state in which to run the test. Side effects make this complicated, as many objects need to collaborate to set this state up. When this becomes too painful, people start hacking around with mocks. This in turn makes the tests more fragile :

*   We are not testing a "real" situation
*   We need to keep this setup in line with the real code

> 💡 Intricate state initialization encourage people to use mocks.

### Isolates parts of the system

Unfortunately, that is not all the story ! Mutable state also, tricks us into using mocks. As soon as your test deals with mutable state, there is a chance that this state is changed in the 'real' system. This means that some bugs might 'escape' unit tests and appear in end to end tests or in production. That's where the mocks strike ! In order to detect this bug in a fast feedback loop, we're likely to add larger scope tests and use mocks to speed them up ...

> 💡 Mutable state and side effects make unit tests less effective.

### Reduces code with side effects

But there's another reason why Immutable Value Objects help us to avoid mocks. As we'll try to use them more and more for the previous two reasons, we'll need to adapt our programming style. As we'll push more and more code in Immutable Value Objects, the 'imperative' part will shrink. This 'imperative' part is where side-effect happen. This is the part where mocking out IOs makes sense. To summarize, the more Immutable Value Objects we use, the more isolated the IOs are, and the less mocking we need.

Javascript expert Eric Elliot also wrote about the immutability and mocks [here](https://medium.com/javascript-scene/mocking-is-a-code-smell-944a70c90a6a).

## Next week

This was the second post in a [series about how to prevent mocks](/blog/categories/how-to-avoid-mocks-series/) in your automated tests. Next post will be an example of using immutable value objects on the [FizzBuzz kata](http://codingdojo.org/kata/FizzBuzz/).

[Stay tuned !](https://feedburner.google.com/fb/a/mailverify?uri=PhilippeBourgau&loc=en_US) !

