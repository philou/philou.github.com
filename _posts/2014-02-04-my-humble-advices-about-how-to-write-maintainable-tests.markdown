---
keywords: "testing, agile, tdd, humble, advices, about, write, maintainable, tests"
layout: single
title: "My humble advices about how to write maintainable tests"
date: 2014-02-04 06:10
comments: true
categories:
 - testing
 - agile
 - tdd
---
I love writing automated tests ... or rather, I hate having to work in untested code. I find it makes my life unnecessarily stressful. On the other hand, the cost of maintaining badly written tests can sometimes outweigh their benefits. This is usually the moment where the team resorts to manual testing, and gets back to the ways of 'the good old days'. Personally, I don't like the good old days when we had to stay up all night ~~to add even more mess~~ to fix something for an important deadline.

Here is how I try to make my tests as maintainable as possible :

* Write the tests before the code, it gets a (short) time to get used to, but after that, it's just a lot more fun. Just try it for a while
* Write tests with no side effects, otherwise, it will not be possible to run your tests alone, or in a different order ! So don't use globals
* Write readable tests : did you ever had to fix a test that you cannot figure out the intent ? A lot of the other points just help writing more readable tests
* Write small tests : they are usually faster to run, allow you to test more edge cases, and make a better job at pinpointing the actual faulty code. The receipe for writing short tests is to follow the given-when-then pattern :
    * start your test by setting the context (given)
    * do the thing you actually want to test (when)
    * verify that it did what you wanted (then)
* Remove code duplication from your tests, in the same way as you would in production code. This will help you when you'll want to modify that constructor that is used in 764 test files ...
* Use test data builders. This will avoid duplicated and long context setup at the beginning of every test. Don't use factory methods or the object mother pattern, it just does not scale. In java, this usually means [rollying your own](http://www.natpryce.com/articles/000714.html), in ruby, just use [Factory Girl](https://github.com/thoughtbot/factory_girl)
* Use custom assertion objects. This will avoid duplicated and complicated verification code at the end of every test. It will also help to improve assertion messages. In ruby, this comes built in [rspec](http://rspec.info/) and its [matcher dsl](https://www.relishapp.com/rspec/rspec-expectations/v/2-0/docs/matchers/define-matcher). Lately, in Java I have been using [Fest Assert](https://github.com/alexruiz/fest-assert-2.x)
* Use the extended red -> red with explicit error message -> green -> refactor in place of the shorter red -> green -> refactor. By spending some time to improve your assertion messages, you'll eventually save time to understand what broke when the test fails
* As [I already wrote about](http://philippe.bourgau.net/hitting-the-middle-ground-between-classicist-and-mockist-tdd/), only use mocks to
    * speed up a test that is too slow
    * cut off a dependency to an unavailable subsystem
    * simplify an overly complex test setup
* Use constructor based dependency injection. It's straightforward, low tech, and simplifies test setup
* As there is no need to mock immutable data structures, I found that using immutable classes for values simplifies tests
* Usually use hand coded mocks. Hand coded mocks become difficult to maintain when the code becomes too tangled, they can help me to know that I am doing something wrong (not mocking at the correct place, testing implementation, not doing enough refactoring ...). On the contrary, mock framework make this so easy that I usually miss the issue completely until it is too late
* Except when your mocking framework provides object proxing and automatic unmocking. Ruby's [RR](http://rr.github.io/rr/) provides this. Both features can be really useful when needed.
* Use existing mocks when possible. For example, [Sqlite](http://www.sqlite.org/) in memory database : it speeds up the tests, removes the need for any environment setup, and is usually very simple to setup
* Last of all, listen to your tests : if they get difficult to write, they might be a design improvement opportunity lying somewhere

All in all there is nothing new here. A lot of things come from [GOOS](http://www.amazon.com/Growing-Object-Oriented-Software-Guided-Tests/dp/0321503627/ref=sr_1_1?tag=pbourgau-20&amp;ie=UTF8&qid=1391579113&sr=8-1&keywords=growing+object-oriented+software+guided+by+tests) others from [Clean Code](http://www.amazon.com/Clean-Code-Handbook-Software-Craftsmanship/dp/0132350882/ref=pd_bxgy_b_text_y), the mocking 'requirements' come from [an article from Gregory Brown](http://blog.rubybestpractices.com/posts/gregory/052-issue-20-thoughts-on-mocking.html), I found others from my own experience and from a lot of other sources I cannot remember now ...

Happy testing !

