---
layout: single
title: "Why Machine Learning in Software Engineering #1: A World of Experts"
date: 2019-09-12
comments: true
categories:
 - continuous improvement
 - machine learning
 - why-machine-learning-in-software-engineering-series
description: "It's the opinions of experts that drive Software Engineering! Models, like Big O, would lead to more fact-based discussions and better decisions. This is the first part of a 3 posts story about how we tried to apply machine learning to software engineering."
header:
   teaser: /imgs/2019-08-24-why-machine-learning-in-software-engineering-1-a-world-of-experts/a-world-of-experts-teaser.jpg
   og_image: /imgs/2019-08-24-why-machine-learning-in-software-engineering-1-a-world-of-experts/a-world-of-experts-og.jpg
published: false
---
_It's the opinions of experts that drive Software Engineering! Models, like [Big O](https://www.geeksforgeeks.org/analysis-algorithms-big-o-analysis/), would lead to more fact-based discussions and better decisions._

![Drawing of 'an expert' looking upwards with a finger raised. The best practices of software engineering are mostly the opinions of experts.]({{site.url}}/imgs/2019-08-24-why-machine-learning-in-software-engineering-1-a-world-of-experts/a-world-of-experts.jpg)

This is the first part of [a 3 posts story about how we tried to apply machine learning to software engineering]({{site.url}}/categories/#why-machine-learning-in-software-engineering-series). During a 6 months internship, we found a way to identify the most critical tests to run. We also confirmed that practices like small commits, modular code, and the open/closed principle apply to our codebase.

Fashion, fame and strong personalities drive the software engineering world! Think of .js frameworks, or of [Uncle Bob](https://blog.cleancoder.com/)'s [Clean Code](https://www.goodreads.com/book/show/3735293-clean-code) and [Software Craftsmanship](http://manifesto.softwarecraftsmanship.org/) movements.

All these define the current best practices. Even though they are only the result of the experience of some people.

> Our 'best-practices' are only the result of the experience of some people!

The same thing happens on a smaller scale. Many companies have a veteran-guru who defines the inside best practices!

## The catch

Experts are humans too! Unfortunately, this also means that they have biases and make mistakes. Could we get out of experts' rhetoric and in fact-based problem-solving?

Think of the following questions we get in many projects:

*   Our test-suite is too slow, which tests should we run first?
*   We have a lot of legacy code that is dragging us down, given the features ahead, what should we refactor?
*   We have too many bugs to fix, which ones should we focus on now?

The experts' answers are of little help here 😞. Still, answering these questions could increase productivity and set a sustainable pace!

## How a model would help

These challenges are contextual. There is not a single answer that is valid across all projects and teams.

![Cover of the book Thinking Fast and Slow. Daniel Kahneman said that algorithms are better than humans about decision involving a lot of uncertainty]({{site.url}}/imgs/2019-08-24-why-machine-learning-in-software-engineering-1-a-world-of-experts/thinking-fast-and-slow.jpg)

In [Thinking Fast and Slow](https://www.goodreads.com/book/show/11468377-thinking-fast-and-slow), [Daniel Kahneman](https://www.goodreads.com/author/show/72401.Daniel_Kahneman) explains that we, humans, are full of biases. He concludes that, in the face of high uncertainty, [we should prefer algorithms for better decision making](https://fs.blog/2017/03/algorithms-complex-decision-making/)!

I had a demonstration about that a few weeks ago while I was coaching a team. We were doing the 'Median of a list of list' [Randori kata]({{site.url}}/why-you-should-start-a-team-coding-dojo-randori-right-now/) to practice [Test Driven Development]({{site.url}}/categories/#tdd) with algorithms. The trick is that TDD won't drive you towards a non-trivial algorithm (cf [Ron Jefferies Sudoku](https://ronjeffries.com/xprog/articles/roroncemore/)). We can still leverage TDD with the following strategy:

1.  Think an algorithm
2.  Write tests to incrementally write to a slow version of this algorithm
3.  Optimize this algorithm with the safety of the test harness

We had reached step 3 and the team was discussing which part to optimize. People could not agree, so we did a quick Big O() analysis. In no time, everyone agreed.

> 💡 Models are always wrong. But they get us out of rhetoric, gut feelings, biases and into fact-based discussions!

Data Science is all about building models.

![Black and White wireframe illustration of a human head with a brain made of silicon circuits. Machine Learning in Software Engineering could help us to make better decisions.]({{site.url}}/imgs/2019-08-24-why-machine-learning-in-software-engineering-1-a-world-of-experts/machine-learning.jpg)

As software engineers, we have a lot of data and we build data-science systems for others. It's a pity we don't use Data Science for ourselves!

## To be continued

This was part 1 of [a 3 posts story about how we tried to apply machine learning to software engineering]({{site.url}}/categories/#why-machine-learning-in-software-engineering-series).

1. [A World of Experts]({{site.url}}/why-machine-learning-in-software-engineering-1-a-world-of-experts/)
2. An Experiment
3. The Future


In the next post, I'll go over how we applied machine learning to identify the tests that are most likely to fail.

[Stay tuned!](http://eepurl.com/dxKE95)