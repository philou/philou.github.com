---
layout: single
title: "From apprentice to master, how to learn TDD (Test Driven Development)"
date: 2017-05-15 06:53
comments: true
categories:
 - tdd
 - software
 - testing
 - learning
keywords: "Testing, TDD, Automated Testing, Learning, Learning TDD, Test Driven Development, Learning Test Driven Development"
description: "The story of how I learned TDD, and advises for the aspiring TDD apprentice"
---
I started to learn [Test Driven Development](https://en.wikipedia.org/wiki/Test-driven_development) a long time ago. Since then, even though I'm still not a master, it's been my most useful programming skill, by far. TDD is the first trick every new programmer should learn. It made my whole career as a developer easier.

I've been working as a professional software engineer for more than 15 years, including around 10 years in the trading industry. Only once did I need to work on week ends or late into the night to fix emergency issues. I believe I largely owe this work-life balance to the high test coverage that TDD ensures by design.

TDD also enables safe refactoring. Refactoring enables [incremental design](/incremental-architecture-a-cure-against-architecture-astronauts/) which lets you decide late. Deciding late is how you make your customers happy by accepting late changes. Deciding late is how take up-front design easy, and improve your code as you go. Deciding late is how you build trustful and harmonious relationships with the stakeholders of your project.

Finally, writing tests before the code is both easier and more fun. Among compilation errors and never ending customer demands, the recurring green barre tastes like pure candy to the poor programmer !

{% assign figure_path="/imgs/2017-05-15-from-apprentice-to-master-how-to-learn-tdd-test-driven-development/road.jpg" | absolute_url %}
{% assign figure_alt="A long winding road" %}
{% capture figure_caption %}
From [Pinterest winding road catalog](https://fr.pinterest.com/explore/winding-road/)
{% endcapture %}
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

## The TDD Road

Here are the steps I took to learn TDD.

### Learn the principles

The principles of Test Driven Development are fairly basic. 5 minutes is enough to know them forever :

1. Write a failing test
2. Make it pass by doing the simplest thing possible
3. Refactor your code while keeping the tests passing
4. Repeat until your acceptance test is green

TDD newbies might ask a few questions like :

* Is making the code compile in step 1 or 2 ? Honestly, that does not matter. Write the test as if you had the code, then make it compile, make sure it fails, and continue.
* How much should I refactor ? It often takes a good amount of experimentation to find your good balance. If you don't refactor enough, you going to drown in dirty code. If you refactor too much, you're going to waste your time ([YAGNI](https://martinfowler.com/bliki/Yagni.html)). As a rule of thumb, [Kent Beck's](https://martinfowler.com/bliki/BeckDesignRules.html) rules on simple design are a very good starting point :

{% assign figure_path="/imgs/2017-05-15-from-apprentice-to-master-how-to-learn-tdd-test-driven-development/beck-rules.jpg" | absolute_url %}

{% assign figure_alt="A visual graph of Kent Beck's rules of simple design" %}

{% capture figure_caption %}
[From Martin Fowler : Beck Design Rules](https://martinfowler.com/bliki/BeckDesignRules.html)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

### Find your tools

Back in 2003, after reading [Martin Fowler](TODO)'s [Refactoring: Improving the Design of Existing Code](https://www.amazon.com/Refactoring-Improving-Design-Existing-Code/dp/0201485672/ref=sr_1_1?tag=pbourgau-20&amp;s=books&ie=UTF8&qid=1495080119&sr=1-1&keywords=martin+fowler+refactoring) book, I decided to give TDD a serious try. I was using C++ at work but we did not even have a nightly build. I had to download and setup [CppUnit](https://en.wikipedia.org/wiki/CppUnit) on my own. As solo endeavor, this was a required step to get into TDD.

Find and setup a tool. Which one should be rather obvious, if your team already uses a unit test framework, stick to it, otherwise, pick the most standard for your language, ex : [JUnit](http://junit.org/) for [Java](https://www.java.com) (you might as well start searching for a new job where they use a unit testing tool).

### Train at a TDD coding dojo

[Coding dojos](http://codingdojo.org/) were first invented as a tool to [learn TDD](http://www.peterprovost.org/blog/2012/05/02/kata-the-only-way-to-learn-tdd/). They were started by two french eXtreme Programmers [Emmanuel Gaillot](https://ut7.fr/) and [Laurent Bossavit](http://institut-agile.fr/). It happens that I live in Paris, and that Emmanuel came to work as a contractor at the same company I was. I learned that he was organizing a weekly coding dojo open to any developer. That's how I started attending coding dojos. Looking back, the TDD skills I learned at the coding dojo are just enormous !

If you are serious about learning TDD, attend coding dojos. Whether you find one in your city (ask [meetup.com](https://www.meetup.com/)) or in your company does not really matter. If you cannot find any, just start one at work ! Send a public call for interested people (use wiki, mail, posters or whatever), book a room and start hacking ! [Emily Bache's Coding Dojo Handbook](https://www.amazon.com/Coding-Dojo-Handbook-Emily-Bache/dp/919811803X/ref=sr_1_1?tag=pbourgau-20&amp;ie=UTF8&qid=1494908749&sr=8-1&keywords=coding+dojo) seems a very good reference about how to start a coding dojo (Disclaimer : I did not read the book, I only know it by reputation.)

[![Cover of The Coding Dojo Handbook]({{site.url}}{{site.baseurl}}/imgs/2017-05-15-from-apprentice-to-master-how-to-learn-tdd-test-driven-development/coding-dojo.jpg)](https://www.amazon.com/Coding-Dojo-Handbook-Emily-Bache/dp/919811803X/ref=sr_1_1?tag=pbourgau-20&amp;ie=UTF8&qid=1494908749&sr=8-1&keywords=coding+dojo)

### Use it

If you're a professional programmer, you must be spending most of your time writing code. Take this opportunity to use TDD. You'll be slowed down a bit at the beginning, but as both your code and your skills improve, you'll get your time back manyfold.

I remember one of my first professional use of TDD was to write a small parser. A few weeks later I was asked to make it faster. Having tests around it made it easy to optimize it without breaking it.

### Deliberate practice

In [The first 20 hours](https://www.amazon.com/First-20-Hours-Learn-Anything/dp/1591846943/ref=sr_1_1?tag=pbourgau-20&amp;s=books&ie=UTF8&qid=1494910468&sr=1-1&keywords=the+first+20+hours), Josh Kaufman explains that deliberately practicing specific topics is a more time effective way of learning than simply crunching hours of practice.

My friend [Thomas Pierrain](https://twitter.com/tpierrain) is used to regularly practice short 30 minutes katas to sharpen his programming skills. Katas can be found at [codingdojo.org](http://codingdojo.org/KataCatalogue/), at [cyber-dojo.org](http://cyber-dojo.org/) or in [The Coding Dojo Handbook](https://www.amazon.com/Coding-Dojo-Handbook-Emily-Bache/dp/919811803X/ref=sr_1_1?tag=pbourgau-20&amp;ie=UTF8&qid=1494908749&sr=8-1&keywords=coding+dojo).

### Read

Meanwhile I was doing all this, I also spent a lot of time reading on the subject. At the time, there was a lot of things about TDD in the [C2 Wiki](http://wiki.c2.com/), so I spent a lot of time there. Since then, I stumbled upon a few books that helped me to understand some aspects of TDD :

* Kent Beck's classic [TDD by example](https://www.amazon.com/Test-Driven-Development-Kent-Beck/dp/0321146530/ref=sr_1_1?tag=pbourgau-20&amp;s=books&ie=UTF8&qid=1495080564&sr=1-1&keywords=tdd+by+example) remains a great reference for beginners
* I got very useful advices from [TDD, a practical guide](https://www.amazon.com/Test-Driven-Development-Practical-Guide/dp/0131016490/ref=sr_1_3?tag=pbourgau-20&amp;s=books&ie=UTF8&qid=1494911486&sr=1-3&keywords=test+driven+practical+guide) especially the section about UI testing, which really saved me at some point
* Finally, [Growing Object Oriented Software Guided By Tests](https://www.amazon.com/Growing-Object-Oriented-Software-Guided-Tests/dp/0321503627/ref=sr_1_1?tag=pbourgau-20&amp;s=books&ie=UTF8&qid=1495080583&sr=1-1&keywords=growing+object-oriented+software+guided+by+tests) is now a classic about what is called "The London school of testing", which uses mocks as a design tool. Definitely a must read.

[![Cover of GOOSGT]({{site.url}}{{site.baseurl}}/imgs/2017-05-15-from-apprentice-to-master-how-to-learn-tdd-test-driven-development/growing.jpg)](https://www.amazon.com/Growing-Object-Oriented-Software-Guided-Tests/dp/0321503627/ref=sr_1_1?tag=pbourgau-20&amp;s=books&ie=UTF8&qid=1495080583&sr=1-1&keywords=growing+object-oriented+software+guided+by+tests)

### Practice advanced topics

The TDD road goes on forever, testing has a lot of tricky topics. Once you've mastered the basics, it's quite interesting to explore and practice more complex subjects. Here are a few things worth trying out :

* Use automated IDE refactorings to keep the code compiling all the way through a kata
* Do the same kata twice, using [top-down and bottom-up](/flavours-of-tdd/) styles
* Do refactoring katas to learn how to work with legacy code
* Do UI katas, to learn how to test the UI
* Learn how to deal with DB
* Learn how to handle remote services

If needed, invent your own katas to deliberately practice these topics and others.

## The pitfalls

As any road worth walking, the TDD path is not linear and smooth. Before fully mastering TDD, you'll regularly wonder if you're on the right track. As any practice, TDD has pitfalls. I've fell into some quite a few times. I guess that's part of the learning process.

### Emerging Design

There's always been a lot of misunderstanding around this topic.

Bad smells in your code make your tests harder to write. If adding a test is painful, that's an indication that something could be improved in your design. It's then up to you to know what. Once you've figured out what you want to change, use your existing tests to refactor your design first. Only then, add this new test.

As you can see, the tests will give you more feedback about the design of your code, but they won't tell you what to do. That's where your coding skills will help. This is particularly true about algorithms. Don't expect a good algorithm to magically appear as you do the simplest-thing-that-could-possibly-work ...

As with any rules, there are exceptions. At times, you'll walk into a problem which emerging design is great. For example, I've done the [Arab to Romans](http://agilekatas.co.uk/katas/RomanNumerals-Kata) kata many times, and that repeatedly doing the simplest-thing-that-could-possibly-work yields a good solution.

### Mocks

[Mocks](https://en.wikipedia.org/wiki/Mock_object) are useful at times, but be careful not to overuse them. I already [wrote about mocks]({{site.baseurl}}/categories/#mocking). Too much mocking makes your test suite brittle, ineffective and difficult to maintain ! I've been bitten hard by this one on a personal [side project](https://github.com/philou/mes-courses), the day I decided to get rid of all the mocks, I shrank the test code size by 25%. Since then I learned about alternate techniques such as :

* [Test data builders](http://www.natpryce.com/articles/000714.html) which allow to easily build test data
* [Value objects](https://martinfowler.com/bliki/ValueObject.html) that are immutable and don't need mocking
* [test spies and proxies](/my-new-gem-for-creating-rspec-proxies/) as a way to mock and track calls while still calling the real code
* [in-memory fake implementations](/hitting-the-middle-ground-between-classicist-and-mockist-tdd/) which make the tests independent and fast without unmaintainable proliferation of mock setup

As an indicator, less than 5% of my tests use mocks.

### Metrics

In his [keynote at RailsConf 2014](https://www.youtube.com/watch?v=9LfmrkyP81M) DHH explains the danger of testing metrics.

[![DHH's keynote at RailsConf 2014]({{site.url}}{{site.baseurl}}/imgs/2017-05-15-from-apprentice-to-master-how-to-learn-tdd-test-driven-development/dhh.jpg)](https://www.youtube.com/watch?v=9LfmrkyP81M)

By using TDD correctly, you should get a high code coverage as a side effect. If you get below 80%, you must be doing something wrong. The other metric you should keep an eye on is the total build time. Original [eXtreme Programming](http://www.extremeprogramming.org/) had the [10 minutes build rule](http://www.jamesshore.com/Agile-Book/ten_minute_build.html) which states that if your build + tests takes more than 10 minutes, you should refactor it.

That's it ! Things like 100% test coverage or test ratio are complete nonsense.

## Pushing it even further

My promise, at the beginning of this post, was that Test Driven Development would make your life as a developer easier. Now let's imagine that your whole team or company was using TDD. It's a foundation on which to build a sustainable agile organization.

The mastery of automated testing at organization scale is a key element to continuous delivery, making releasing software a non-event, and as stress-free as possible.

Full adoption of TDD can yield to [incremental architecture](/incremental-architecture-a-cure-against-architecture-astronauts/) which delivers features faster, by skipping the conflictual arguments about supposed future needs.

Finally, TDD can simplify your processes and tooling. Team-wide TDD results in a steady flow of features on top of which it is easier to create simple and effective processes and tools.

The road is long, sinuous and at times rocky, but so are the rewards.
