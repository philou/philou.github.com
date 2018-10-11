---
layout: single
title: "20 Bad Excuses For Not Writing Unit Tests"
date: 2017-05-23 06:08
comments: true
categories:
 - joke
 - testing
 - software
keywords: "Unit Testing, Programmer Testing, Joke, Software"
description: "A list of 20 somehow funny excuses why not to write unit tests"
---
> I guess we always find excuses to keep on with our bad habits, don't we ? *[Stephen King](http://www.goodreads.com/quotes/797048-i-guess-we-always-find-excuses-to-keep-on-with)*


1. I don't have the time. *But you'll have the time to fix the bugs ...*
2. I don't know how to write tests. *No problem, anyone can [learn](/from-apprentice-to-master-how-to-learn-tdd-test-driven-development/).*
3. I'm sure the code is working now. *[The competent programmer is fully aware of the limited size of his own skull ...](https://www.brainyquote.com/quotes/quotes/e/edsgerdijk204340.html)*
4. This code is not testable. *Learn or refactor.*
5. It's (UI|DB) code, we don't test it. *Because it never crashes ?*
6. Because I need to refactor first ... and I need tests to refactor ! *Damn, you've fallen into the test deadlock !*
7. It's multithreaded code, it's impossible to test. *Because it's fully tederministic ?*
8. The QA department is already testing the code. *Is that working well ?*
9. I should not test my own code, I'll be biased. *Start testing other people's code right now then !*
10. I'm a programmer, not a tester. *[Professional programmers write tests](https://softwareengineering.stackexchange.com/questions/159572/as-a-professional-developer-is-it-acceptable-to-not-write-unit-tests).*

{% assign figure_path="/imgs/2017-05-23-20-bad-excuses-for-not-writing-unit-tests/stronger_than_excuses_quote.jpg" | absolute_url %}

{% assign figure_alt="A quote 'Be Stronger Than Your Excuses'" %}

{% capture figure_caption %}
From [todayiwillbefit.com](https://todayiwillbefit.com/2013/10/30/excuses-suck-top-10-bad-excuses-to-not-exercise/)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

11. I'm using a REPL, it replaces unit tests. *Sure, and you're running your REPL buffers on the CI ? and keeping your them for the next time someone modifies your code.*
12. My type system is strong enough to replace tests. *Does it detect when you use '+' instead of '\*' ?*
13. We don't have the tooling to write unit tests. *[Get one](https://en.wikipedia.org/wiki/List_of_unit_testing_frameworks).*
14. Tests aren't run automatically anyway. *[Install a Continuous Integration Server](https://en.wikipedia.org/wiki/Comparison_of_continuous_integration_software).*
15. I'm domain expert developer, writing tests is not my job. *Creating bugs isn't either !*
16. We'd rather switch to the [Blub language](http://www.paulgraham.com/avg.html) first ! *You're right, let's do neither then !*
17. We don't test legacy code. *Specifically because it is [legacy code](https://en.wikipedia.org/wiki/Legacy_code).*
18. Adding tests for every production code we write is insane ! *As shipping untested code is unprofessional.*
19. I find more issues doing manual testing. *[Exploratory Testing](/how-we-started-exploratory-testing/) is a valuable testing, even more so on top of automated tests.*
20. Because my teammates don't run them. *Time for a [retrospective](/most-scrum-teams-are-not-agile/).*

!['Just Do It' written on a board]({{site.url}}{{site.baseurl}}/imgs/2017-05-23-20-bad-excuses-for-not-writing-unit-tests/just-do-it.jpg)
