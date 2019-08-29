---
layout: single
title: "Does Programming equal Refactoring?"
date: 2019-08-29
comments: true
categories:
 - infographic
 - tdd
 - tcr
 - refactoring
description: "TDD is 1/3 failing the test, 1/3 passing the test and 1/3 refactoring. TCR looks more like 1% failing, 4% passing, and 94% refactoring. It turns out that refactoring is already most of our daily work! Plus doing it well creates a sustainable pace and makes our lives more easy. Let's learn it now!"
header:
   teaser: /imgs/2019-08-02-does-programming-equal-refactoring/tdd-tcr-programming-equals-refactoring-teaser.jpeg
   og_image: /imgs/2019-08-02-does-programming-equal-refactoring/tdd-tcr-programming-equals-refactoring-og.jpeg
---
_This infographics presents how [TCR](https://medium.com/@kentbeck_7670/test-commit-revert-870bbd756864) increases the share of refactoring in [TDD](/categories/#tdd). But Refactoring is already most of our daily work! We'd better learn it seriously._

{% assign figure_path="/imgs/2019-08-02-does-programming-equal-refactoring/tdd-tcr-programming-equals-refactoring-small.jpeg" | absolute_url %}
    
{% assign figure_alt="Drawing of the TDD Red-Green-Refactor loop along the TCR loop. In the TCR loop, Red is reduced to a dot, green is small, but Refactor takes 95% of the circle." %}
    
{% capture figure_caption %}
By [Philippe Bourgau]({{site.url}}), under [CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/), [high resolution image]({{site.url}}/imgs/2019-08-02-does-programming-equal-refactoring/tdd-tcr-programming-equals-refactoring.jpeg)
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}



TCR stands for `test && commit || revert`. It started as an experiment by [Kent Beck](https://twitter.com/KentBeck). It's a script that automatically commits or reverts whether the tests pass or fail.

TCR is the 'natural' evolution of TDD. Kent Beck has been arguing for a long time to

> Make the change easy, then make the change

When you follow this mantra, even without TCR, most of your work becomes refactoring.

## Why refactoring?

Programmers, especially juniors, often shun refactoring. We are afraid of Legacy code. We tend to look for greenfield projects, to avoid refactoring other people's code.

Done well, I actually find Refactoring pretty rewarding. I know I'm making the lives of my teammates easier every time I improve a line of code. When all the team does it, it creates a sustainable pace, which dribbles down on all aspects of our lives.

## Start now!

We can [learn TDD refactoring techniques](/a-coding-dojo-exercises-plan-towards-refactoring-legacy-code/), like any skill. Reading a few [books](https://www.amazon.com/s?k=refactoring&i=stripbooks-intl-ship) and [starting a coding dojo](/how-to-start-a-team-coding-dojo-randori-today/) will get you on good tracks.

During this summer, I've posted a few similar [infographics](/categories/#infographic). This was the last one, [stay tuned!](http://eepurl.com/dxKE95) for a longer post next week.