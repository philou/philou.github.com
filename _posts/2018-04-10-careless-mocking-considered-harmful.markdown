---
layout: single-mailing-list
title: "Careless Mocking Considered Harmful"
date: 2018-04-19 13:13
comments: true
categories:
 - tdd
 - mocking
 - testing
 - programming
 - how-to-avoid-mocks-series
keywords: "Mocks, Unit Testing, Automated Testing, TDD, Test Driven Development, London School of Testing, Mocking"
description: "The problems I got into on a side project after using too much mocking. This is the first post of a series about how to avoid mocks."
header:
  og_image: /imgs/2018-04-10-careless-mocking-considered-harmful/mocks-dont-rock.jpg
---
> 💡 Mock hell : when excessive use of test mocks makes [refactoring](https://en.wikipedia.org/wiki/Code_refactoring) extremely slow or difficult.

A few years ago, I managed to get a side project out of mock hell. Since then, I've been using what I learned to avoid mocks in all the projects I've worked on. This is the start of a series of posts about my mock-avoiding techniques.

![A tag "Mocks don't rock !"]({{site.url}}{{site.baseurl}}/imgs/2018-04-10-careless-mocking-considered-harmful/mocks-dont-rock.jpg)

## Escape from Mock Hell

Between 2010 and 2014, I was working on a side project I called [http://mes-courses.fr](https://github.com/philou/mes-courses). Which actually means "my house shopping" in English. I wanted people to be able to do their house shopping in 5 minutes, by using a better UI for online groceries. I was using Ruby, and I had just read [Growing Object Oriented Software Guided by Tests](https://www.amazon.com/Growing-Object-Oriented-Software-Guided-Tests/dp/0321503627/ref=sr_1_1?ie=UTF8&qid=1523422024&sr=8-1&keywords=growing+object-oriented+software+guided+by+tests). I got a bit too excited with mocking, and was using it way too much.

I'd been practicing [Test Driven Development](https://en.wikipedia.org/wiki/Test-driven_development) for more than 5 years and I was expecting great results with a language like Ruby. After a few months though, I could feel that something was not going as well as it should. The test initialization code was getting longer and longer, as it included a lot of mock setup. This made the tests more complex and less readable. It also made them unreliable, as it was not rare for all my unit tests to pass while the system was not working. I was taking the habit of running my end to end test more and more often. I was also losing a lot of time maintaining the mock setup code in line with the real classes. Mocks also tricked me into the bad practice of keeping a 1 to 1 mapping between code and test files. That again increased my maintenance burden when moving code from one file to another.

It reached a point where I could not take it anymore. All these problems were pointing at mocks, so I tried to remove them from a test file. Here are the techniques I ended up using to remove them mocks : 

*   [Value Objects](https://martinfowler.com/bliki/ValueObject.html)
*   [Test Data Builders](http://www.natpryce.com/articles/000714.html)
*   [Test Matchers](https://relishapp.com/rspec/rspec-expectations/docs/custom-matchers)
*   [Hexagonal architecture](http://alistair.cockburn.us/Hexagonal+architecture)
*   [In-memory fakes](https://www.martinfowler.com/articles/mocksArentStubs.html)
*   [Proxy doubles](https://wincent.com/wiki/Proxy_(test_double))

The end result was beyond my hopes, as my problems almost magically disappeared. The code got simpler, I became a lot more confident about my unit tests, and they got easier to maintain. As an illustration, here is an excerpts from the diff of a rails controller test file which went through this mock diet.

[![A screen capture of a Github diff showing a test file going on a mock diet]({{site.url}}{{site.baseurl}}/imgs/2018-04-10-careless-mocking-considered-harmful/diff.jpg)](https://github.com/philou/mes-courses/commit/2c9fce17f9b59d0b3828f309015c07b17cceddf4?diff=split)

## What's the long term risk ?

Basically, excessive mocking arms the maintainability of the tests. Here is what would have happened if I'd done nothing. Tests would have become so painful to maintain that I would have started to ignore or delete them. As coverage would decrease, more and more code would become untested. That's exactly Michael Feathers' definition of Legacy Code :

> Legacy Code is code without tests. [Michael Feathers](https://www.amazon.com/Working-Effectively-Legacy-Michael-Feathers/dp/0131177052/ref=sr_1_1?s=books&ie=UTF8&qid=1523422039&sr=1-1&keywords=legacy+code)

To summarize, excessive use of mocks leads to legacy code ! As most of us have learned the hard way, the further a system drifts into legacy, the lower the productivity.

> 💡 Excessive use of mocks leads to legacy code

## Next posts

Others already spoke about the dangers of mocks :

* Uncle Bob through [his blog](http://blog.cleancoder.com/uncle-bob/2014/05/10/WhenToMock.html)
* DHH in the ["Is TDD Dead" series](https://www.google.fr/search?q=is+TDD+dead&safe=active&tbm=vid)

In [this series of posts]({{site.url}}{{site.baseurl}}/categories/#how-to-avoid-mocks-series), I'll go through the details of the different techniques I used to remove mocks. Here is my plan :

1.  [Careless Mocking considered Harmful]({{site.url}}/careless-mocking-considered-harmful/)
2.  [How Immutable Value Objects fight mocks]({{site.url}}/how-immutable-value-objects-fight-mocks/)
3.  [Immutable Value Objects vs Mocks : Fizz Buzz]({{site.url}}/immutable-value-objects-vs-mocks-fizz-buzz/)
4.  [How to use Test Data Builders to avoid mocks and keep your tests clear]({{site.url}}/how-to-use-test-data-builders-to-avoid-mocks-and-keep-your-tests-clear/)
5.  [How Custom Assertion Matchers will keep mocks away]({{site.url}}/how-custom-assertion-matchers-will-keep-mocks-away/)
6.  [Avoid mocks and test your core domain faster with Hexagonal Architecture]({{site.url}}/avoid-mocks-and-test-your-core-domain-faster-with-hexagonal-architecture/)
7.  [Get rid of mock maintenance with full fledged in-memory fakes]({{site.url}}/get-rid-of-mocking-maintenance-with-full-fledged-in-memory-fakes/)
8.  [When is testing using mocks still a good idea ?]({{site.url}}/when-is-testing-using-mocks-still-a-good-idea/)
