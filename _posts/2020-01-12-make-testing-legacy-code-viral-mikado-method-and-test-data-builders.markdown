---
layout: single
title: "Make Testing Legacy Code Viral: Mikado Method and Test Data Builders"
date: 2020-01-30
comments: true
categories:
 - mikado-method
 - testing
 - refactoring
 - mocking
description: "When testing legacy code, combine the test data builder pattern with the mikado method. Next time you have to fix a bug, instead of trying to test it directly, start a mikado graph of test data builders to add this test. This will snowball into more and more objects that are easy to set up in tests"
header:
   teaser: /imgs/2020-01-12-make-testing-legacy-code-viral-mikado-method-and-test-data-builders/mikado-method-test-data-builder-pattern-squid-teaser.jpeg
   og_image: /imgs/2020-01-12-make-testing-legacy-code-viral-mikado-method-and-test-data-builders/mikado-method-test-data-builder-pattern-squid-og.jpeg
published: false
---
_When testing legacy code, combine the [test data builder pattern](https://thefriendlytester.co.uk/2015/06/an-introduction-to-data-builder-pattern.html) with [the mikado method](http://mikadomethod.info/). This snowballs into more and more objects that are easy to set up in tests._

![Drawing of a squid holding papers written "Test data builders". Combining the Mikado Method with the Test Data Builder Pattern makes large cross-concern testing improvement possible.]({{site.url}}/imgs/2020-01-12-make-testing-legacy-code-viral-mikado-method-and-test-data-builders/mikado-method-test-data-builder-pattern-squid.jpeg)

## Your Mission... Impossible!

I'm sure you've heard of this recommendation:

> Whenever you fix a bug, add a test before. [[stackexchange.com](https://softwareengineering.stackexchange.com/questions/148081/should-we-always-unit-test-bugs-when-correcting-them)]

Unfortunately, when working in legacy code, this is more depressing than empowering. I've seen codebases in which adding a unit test can take weeks! **Spending 3 weeks to add a test when fixing the bug will take 1 hour is often unjustifiable.** It's not easy to swallow for product managers or customers.

![A lego character at his desk looking stressed out by too much work. Spending many weeks to test a legacy code bug is not justifiable.]({{site.url}}/imgs/2020-01-12-make-testing-legacy-code-viral-mikado-method-and-test-data-builders/too-much-work.jpg)

This situation can get pretty stressful. Worst of all, it can only get worse!

## The False Promise: Mocks

When testing legacy code, most of the time is usually spent with the data setup. Legacy code is often a tangle of dependent classes. For every object we need to instantiate, we'll have 5 others to set up before.

The default solution to this problem is to use [mocks](https://stackoverflow.com/questions/2665812/what-is-mocking) to shortcut all this data setup.

### Pros

*   It gets the test running in a reasonable time

### Cons

*   Every test will have its own mocks of specific classes. Unfortunately, legacy code mocks duplicate the behavior of the real system. After a while, this creates rigidity. It will backfire and make refactoring more difficult. The exact opposite of what we wanted! That's what I call [Mock Hell]({{site.url}}/careless-mocking-considered-harmful/).
*   The flip side is that these tests won't be very robust. When we have to refactor the code, we'll have to refactor the tests. Worse, if the real code behavior changes, tests will silently continue to pass!
*   Finally, we often need to refactor the code before we add a mock.

Mocks have serious downsides. As I wrote before, **[using mocks to speed up test data setup is an anti-pattern.]({{site.url}}/how-to-use-test-data-builders-to-avoid-mocks-and-keep-your-tests-clear/)**

## Mikado to the rescue

[![The cover of the book The Mikado Method by Ola Ellenstam and Daniel Brolund]({{site.url}}/imgs/2020-01-12-make-testing-legacy-code-viral-mikado-method-and-test-data-builders/mikado-method-cover.jpg)](https://www.goodreads.com/book/show/17974534-the-mikado-method)

The mikado method is the perfect workaround against long technical endeavors. It lets you split them down in small steps that we can deliver along with other business-as-usual tasks.

Let's update the initial recommendation:

> 💡 Whenever you fix a bug, start a mikado graph to add a test around it.

You can now write your test at your own sustainable pace. It might take 1 month, but it's not an issue because you are not blocking features. There is no tunnel effect. You won't need to use mocks.

### What does it mean to start a mikado graph?

{% assign figure_path="/imgs/2020-01-12-make-testing-legacy-code-viral-mikado-method-and-test-data-builders/mikado-graph.jpg" | absolute_url %}
    
{% assign figure_alt="Sample mikado graph showing the steps for an encapsulation goal. The mikado method graph is a powerful communication tool to get everyone to contribute to a refactoring" %}
    
{% capture figure_caption %}
Sample mikado method graph as we can find on [mikadomethod.info/](http://mikadomethod.info) by [Daniel Brolund](https://twitter.com/danielbrolund) and Ola Ellnestam
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

You want to make the plan and the progress visible for everyone in the team.

If you are all in the same room, [stick it on the wall]({{site.url}}/to-do-list-or-mind-map-for-programming/)! If you're working as a mob, remind it to your buddies.

Otherwise, you'll need valid working agreements! For example, we used to generate mikado graphs from Jira tickets. Your team will have to find its own ways. [Retrospectives]({{site.url}}/categories/#retrospectives) help there!

## The Test Data Builder Pattern to make it Viral

The flip side of using the mikado method out of the box is that many tests will end up setting up similar data. The typical fix to this problem is the test data builder pattern. This is where it becomes magic.

Let's update the initial recommendation again:

> 💡 Whenever you fix a bug, start a mikado graph of test data builders to add a test around the bug.

Most nodes of the mikado graph will be about writing a test data builder for some data of the system. Every time you finish a step, you'll have a new reusable test data builder.

[![Sample mikado method graph containing a lot of nodes about using the test data builder pattern]({{site.url}}/imgs/2020-01-12-make-testing-legacy-code-viral-mikado-method-and-test-data-builders/test-data-builder-pattern-mikado-method-graph-small.jpg)]({{site.url}}/imgs/2020-01-12-make-testing-legacy-code-viral-mikado-method-and-test-data-builders/test-data-builder-pattern-mikado-method-graph.jpg)

At every step, you increase the testability of the system. As other developers try to test their own code, they are likely to:

1.  Re-use these new builders to add their tests faster.
2.  Improve the builders along the way.
3.  Make others even more likely to re-use these builders!


{% assign figure_path="/imgs/2020-01-12-make-testing-legacy-code-viral-mikado-method-and-test-data-builders/mikado-method-test-data-builders-pattern-viral-small.jpeg" | absolute_url %}
    
{% assign figure_alt="Drawing of an infographics of the viral effect of combining the Mikado Method with the Test Data Builder Pattern: Bug -> Mikado of test data builders -> new builders -> new composite builders -> new builders -> easier test data setup -> more tests -> builders are improved -> easier test setup -> ..." %}
    
{% capture figure_caption %}
By [Philippe Bourgau]({{site.url}}), under [CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/), [high resolution image]({{site.url}}/imgs/2020-01-12-make-testing-legacy-code-viral-mikado-method-and-test-data-builders/mikado-method-test-data-builders-pattern-viral.jpeg)
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

It's viral!

## Try it yourself

[Ahmad](https://ahmadatwi.me/) and I published a [kata](http://codekata.com/) to spread the idea. It's under MIT license on [Github](https://github.com/murex/testbuilders-workshop). We made it as self-service as we could. Give it a try! We'd love to get your feedback!

It's between 2 and 4 hours long. For the moment, code is available in Java and C++.

We have also submitted this session at [Devoxx](https://www.devoxx.fr/) and [NewCrafts](https://ncrafts.io/) conferences in Paris. Fingers crossed!
