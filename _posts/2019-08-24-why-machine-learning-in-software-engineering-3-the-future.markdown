---
layout: single
title: "Why Machine Learning in Software Engineering #3: The Future"
date: 2019-09-26
comments: true
categories:
 - machine learning
 - testing
 - continuous improvement
 - why-machine-learning-in-software-engineering-series
description: "There are many opportunities for Machine Learning in Software Engineering. Testers already use it to generate test data, analyze test results, identify the best tests... New tools use it to identify improvement points. Will we use it for product management and setting a sustainable pace one day?"
header:
   teaser: /imgs/2019-08-24-why-machine-learning-in-software-engineering-3-the-future/dive-in-the-future-teaser.jpg
   og_image: /imgs/2019-08-24-why-machine-learning-in-software-engineering-3-the-future/dive-in-the-future-og.jpg
published: false
---
_There are many opportunities for Machine Learning in Software Engineering: testing, product management, processes... It might even set a sustainable pace!_

![Drawing of someone diving in a swimming-pool of 0s and 1s. There will be machine learning in software engineering.]({{site.url}}/imgs/2019-08-24-why-machine-learning-in-software-engineering-3-the-future/dive-in-the-future.jpg)

This is the last of [a 3 posts story about how we tried to apply machine learning to software engineering]({{site.url}}/categories/#why-machine-learning-in-software-engineering-series). [The previous post]({{site.url}}/why-machine-learning-in-software-engineering-2-an-experiment/) was about how a 6-month internship in Machine-Learning confirmed software-engineering best-practices. If you haven't, start reading from [the beginning]({{site.url}}/why-machine-learning-in-software-engineering-1-a-world-of-experts/).

This was only a 6 months internship. We only had a glimpse at machine learning and data science for software engineering.

## Testing

Data science for software testing is becoming a hot topic. I've noticed an increasing number of talks about data science at testing conferences.

[![Invite to the Paris Ministry of Testing Meetup "How Machine Learning Is Used In the New Age of QA Automation Tools"]({{site.url}}/imgs/2019-08-24-why-machine-learning-in-software-engineering-3-the-future/meetup-ministry-of-testing-paris-AI.jpg)](https://www.meetup.com/fr-FR/Ministry-Of-Testing-Paris/events/260728954/)

I've heard the most about [fuzzing smart inputs](https://www.researchgate.net/publication/326874506_An_Automatic_Test_Data_Generation_Tool_using_Machine_Learning) and creating an AI for large test failure analysis.

The [cucumber pro](https://cucumber.io/) team also seems to be looking into the same problem as Ismail did.

<iframe width="560" height="315" src="https://www.youtube.com/embed/wNBadMEeoEY?start=2845" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>

### Unit Testing

At the developer level, IDEs could embed an AI similar to Ismail's. It could analyze every test run and identify the tests which are the most likely to fail. Running tests in a particular order could save a few seconds every time. This could particularly improve continuous testing tools like [NCrunch](https://www.ncrunch.net/) or [InfiniTest](https://infinitest.github.io/).

> 💡 A smart AI could record what's done on the IDE to provide working improvement ideas.

## Tools

A new breed of tools that leverage data science is appearing. Here are a few I've heard about:

*   [Code Climate's Velocity](https://codeclimate.com/) analyzes pull-requests to identify process bottlenecks
*   [Code Scene](https://codescene.io/) analyzes git-history to pin-point high-ROI refactorings
*   [LGTM](https://lgtm.com/) analyzes quality and security violations to highlight the ones to fix now. 

> 💡 [LGTM team's blog](https://lgtm.com/blog) about data science and software engineering is pretty interesting!

## Other usages

Could it help us to learn best practices in product management? It might also support continuous-improvement, similarly to what [Velocity does by analyzing PRs](https://codeclimate.com/velocity/act-optimize/). It seems [a team at Content Bloom has been successfully applying a data-driven mindset to an Agile Framework](https://www.contentbloom.com/blog/how-to-apply-a-data-driven-mindset-in-an-agile-framework/).

Data Science will improve software engineering in ways we cannot even think of today. What could we do if we combined data from all sources: ticketing-systems, VCSs, IDEs, static analyzers, CI servers, production...?

### Proving 'slow' practices

Finally, a lot of the industry's 'best practices' are about taking the time to do good work... to go faster in the end. Unfortunately, this is a hard message to sell when we are under the stress of fire-fighting bugs.

[![Cover of the book 21 Lessons for the 21st Century. The book argues that we will resort to AIs to take uncertain decisions better than we can.]({{site.url}}/imgs/2019-08-24-why-machine-learning-in-software-engineering-3-the-future/21-lessons-for-the-21st-century.jpg)](https://www.goodreads.com/book/show/38820046-21-lessons-for-the-21st-century)

In [21 Lessons for the 21st Century](https://www.goodreads.com/book/show/38820046-21-lessons-for-the-21st-century) [Yuval Noah Hariri](https://www.ynharari.com/fr/) says that we will resort to AIs to make better decisions for us. With more knowledge and fewer biases, these decisions should be smarter. [Daniel Kahneman](https://en.wikipedia.org/wiki/Daniel_Kahneman) supports a similar idea in [Thinking Fast and Slow](https://www.goodreads.com/book/show/11468377-thinking-fast-and-slow?from_search=true).

This sounds frightening! But this could also achieve a sustainable-pace in a profession that too often hasn't.

## Give it a try!

Believe it or not, it is not as difficult as it seems to get started with Data Science and Machine Learning. Especially for software engineers who already know how to manipulate data. Improving our processes is the perfect occasion to get started! [20 hours is all you need]({{site.url}}/how-i-got-my-feet-wet-with-machine-learning-with-the-first-20-hours/).

Unfortunately, there is also another, darker, reason to get into the topic. As data science can increase productivity, it will become part of our daily work, sooner or later. We'd rather learn and own the topic before it becomes the [Pointy-Haired Bosse](https://en.wikipedia.org/wiki/Pointy-haired_Boss)'s Big Brother dream...