---
layout: post
title: "Forget unit tests"
date: 2017-08-08 06:24
comments: true
categories:
 - testing
 - tdd
 - software
keywords: "Unit testing, Unit tests, Testing, Software, Automated testing"
description:  "An explanation of why I think that there is no such thing as unit tests, and how we should focus on fast tests instead"
---
Don't worry if your unit tests go to the DB, that might not be so bad.

When I started writing unit tests, I did not know what these were. I read [the definition](http://www.artima.com/weblogs/viewpost.jsp?thread=126923), and strived to follow the recommandations :

*   they should be independent from each other
*   they should not access the DB
*   they should not use the network
*   they should only cover a small scope of your code

I started to write unit tests on my own and became [test infected](http://wiki.c2.com/?TestInfected) pretty fast. Once I got convinced of the benefits of unit testing, I tried to spread the practice around me. I used to explain to people that it is very important to write real unit tests by the book. Otherwise, *Bad Things* would happen ...

## How I changed my mind

A few years ago, I spent a few years working on a [Rails](http://rubyonrails.org/) side project called [mes-courses.fr](https://github.com/philou/mes-courses). I was using a small test gem to enforce that no unit tests were accessing the db. I had to write a lot of mocks around the code. I ended up hating mocks : they are too painful to maintain and provide a false sense of security. I'm not alone in this camp, check [DHH's keynote at RailsConf 2014](https://www.youtube.com/watch?v=9LfmrkyP81M).

<iframe width="560" height="315" src="https://www.youtube.com/embed/9LfmrkyP81M" frameborder="0" allowfullscreen></iframe>

At some point, the mock pain got so bad that I stopped all developments until I found another way. I found a pretty simple workaround : use in-memory SQLite. I got rid of all the DB access mocks. Not only were the tests easier to write and maintain, but they were as fast as before, and they covered more code.

That changed something fundamental in my understanding of testing

## It's all about speed baby

The only thing that makes unit tests so important is that they run fast.

Unit tests as described in the literature run fast. Let's see what happens when you remove one of the recommandations for unit tests.

*   If tests depend on each other, their outcome will change with the execution order. This wastes our time in analyzing the results. On top of that, independent unit tests are easy to run in parallel, providing an extra speedup. We lose this potential when our tests are dependent.
*   Tests that rely on an out-of-process DB run slower. Tests need to start the DB before anything else. Data needs to be setup and cleaned at every test. Accessing the DB implies using the network, which takes time as well. There's also a risk of making the tests dependent by sharing the same DB. A last issue is troubleshooting the DB process when things don't work.
*   Tests that use the network are slow too ! First, Network is slower than memory. Second, data serialization between processes is slow as well. Finally, these tests are likely to use some form of sleep or polling, which is slow, fragile, or both !
*   Finally, there is always a scope past which a test will be too slow.

This means that not only unit tests are fast, but also that fast tests usually show the features of unit tests.

My guess is that 'unit tests' were explicitly defined as a recipe for fast tests ! If you stick to the definition of unit tests, you'll get fast tests and all their benefits.

![A speedometer](../imgs/2017-08-08-forget-unit-tests/speedometer.jpg)

## Fast tests

That also means that we should focus first on having fast tests rather than unit tests. Here is my real check to know if tests are fast enough :

*   Is the build (and the tests and everything) less than 10 minutes ?
*   Can I continuously run my tests while coding and stay in the flow ?

If both answers are yes, then I won't question myself too much whether my tests are unit, integration or end to end.

## So what ?

I've been experimenting with these heuristics for some time. Side projects are great for experimenting since you don't have a team to convince ! Here are my main takeaways :

*   Stick to end to end tests at the beginning of your project. They are easy to refactor to finer grained tests later on.
*   In-memory DBs are great to speed tests up without wasting your time with mocking.  We can use a unique DB for every test to keep them independent.
*   Large scope tests are not an issue provided 2 things.
    1.  The code contains very few side effects.
    2.  It provides good exceptions and assertions messages

On the other side, there are things that I still recommend :

*   Independent tests are easy to write from the beginning, difficult to fix later on. As they save a lot of headaches in diagnostic, I stick to them from the start.
*   Avoid network, it makes the tests slow, fragile and tricky to diagnostic. But please, read [this](http://philippe.bourgau.net/how-not-to-use-mocks-my-talk-at-paris-rb/) before jumping to mocks.

These rules have served me well, particularly in my side projects, where I don't have a lot of time. What about you ? Do you have your own testing rules ?