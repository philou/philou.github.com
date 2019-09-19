---
layout: single
title: "Why Machine Learning in Software Engineering #2: An Experiment"
date: 2019-09-19
comments: true
categories:
 - testing
 - continuous improvement
 - machine learning
 - why-machine-learning-in-software-engineering-series
description: "Slow tests are painful. This is the story of how a Machine Learning in Software Engineering intern, identified the most critical tests to run. By using Gradient Boosting, an interpretable model, he also confirmed that the open-closed principle, modular code, and small-commits apply to our codebase!"
header:
   teaser: /imgs/2019-08-24-why-machine-learning-in-software-engineering-2-an-experiment/machine-learning-teaser.jpg
   og_image: /imgs/2019-08-24-why-machine-learning-in-software-engineering-2-an-experiment/machine-learning-og.jpg
---
_A Machine Learning in Software Engineering intern identified critical tests to run. He also confirmed the [open-closed principle](https://en.wikipedia.org/wiki/Open%E2%80%93closed_principle), [modular code](https://en.wikipedia.org/wiki/Modular_programming), and [small-commits](https://crealytics.com/blog/5-reasons-keeping-git-commits-small/)!_

![A drawing of a robot reading a book. Can we use machine learning on software engineering challenges?]({{site.url}}/imgs/2019-08-24-why-machine-learning-in-software-engineering-2-an-experiment/machine-learning.jpg)

This is part 2 of [a 3 posts story about how we tried to apply machine learning to software engineering]({{site.url}}/categories/#why-machine-learning-in-software-engineering-series). In [the previous post]({{site.url}}/why-machine-learning-in-software-engineering-1-a-world-of-experts/), I explained how data science could help us to make better decisions. If you haven't, start reading from the beginning.

With all the technical coaching going on, I am already quite busy at work. I cannot dive into machine learning for software engineering myself. Fortunately, I found an intern to explore the topic.

## Ismail's internship

That's how I had the chance to meet and welcome [Ismail](https://twitter.com/ismailham91) for 6 months. We had many topics to work on but here is the one we selected:

_Given a commit and a list of slow-running end-to-end tests, which tests are most likely to fail?_

Developers and testers used to pick the tests to run from experience. Automating this looked promising because:

*   [Murex](https://www.murex.com/) has already industrialized its QA, so we had log-data to rely on.
*   It could save developers from a lot of waiting-for-tests time.

The internship was not straightforward and Ismail had to go through many hoops. Still, it generated very interesting results.

![Close-up photo of a microscope. Ismail had to dig into the data to find valuable information to feed his machine learning in software engineering algorithms]({{site.url}}/imgs/2019-08-24-why-machine-learning-in-software-engineering-2-an-experiment/analysis.jpg)

## Main outcome

Ismail succeeded in finding a subset of tests that are most likely to fail. The model is not accurate enough to avoid running the entire test harness though. 😞

Still, it is useful in different ways:

*   It can generate a fail-fast test-suite to run first. This can find errors earlier, or increase the confidence about a commit
*   It can also compute a quality-score on a commit in seconds, even before running any test

As of today, people in the QA department still need to see how to use this prototype.

## Secondary findings

That was not all though. Ismail used the [Gradient Boosting](https://en.wikipedia.org/wiki/Gradient_boosting) algorithm to train his models. Gradient Boosting is interpretable. A machine-learning algorithm is interpretable if it can explain its decisions. As Gradient Boosting relies on [decision-trees](https://en.wikipedia.org/wiki/Decision_tree), it's easy to understand its conclusion.

That's how we confirmed that software engineering best practices apply to our codebase!

### Modular Code

The model relied on the position of files in the codebase. The model computes the average and standard-deviation of the positions of the committed files.

The decision-trees showed something surprising:

*   The average position only had a small impact on the test result!
*   Unlike the standard-deviation, which was everywhere in the decision-tree!

{% assign figure_path="/imgs/2019-08-24-why-machine-learning-in-software-engineering-2-an-experiment/finaltree-modular-code-small.jpg" | absolute_url %}
    
{% assign figure_alt="Graph of the main decision tree used in a test-result prediction model. The nodes checking the standard-deviation of the position of the files in the commit are highlighted" %}
    
{% capture figure_caption %}
Graph of the main decision tree used in a test-result prediction model. The nodes checking the standard-deviation of the positions of the files in the commit are highlighted. We see that the first nodes in the tree, the almost half the nodes are about checking standard-deviation of the positions of the files. [High Res image]({{site.url}}/imgs/2019-08-24-why-machine-learning-in-software-engineering-2-an-experiment/finaltree-modular-code.png).
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

If a codebase is modular, it means that we can add new features with small and local changes. This will reduce a commit's standard-deviation of positions. Which makes the commit more likely to pass the tests.

This confirmed that, in our codebase, modular code is easier to evolve.

### Small commits

Ismail discovered that the number of files in a commit correlates with more test failures. In short, the smaller the commit, the safer.

{% assign figure_path="/imgs/2019-08-24-why-machine-learning-in-software-engineering-2-an-experiment/finaltree-small-commits-small.jpg" | absolute_url %}
    
{% assign figure_alt="Graph of the main decision tree used in a test-result prediction model. The node checking the number of files in the commit is highlighted" %}
    
{% capture figure_caption %}
Graph of the main decision tree used in a test-result prediction model. The node checking the number of files in the commit is highlighted. We see that this node is the most significative after the standard-deviation of the positions of the files. [High Res image]({{site.url}}/imgs/2019-08-24-why-machine-learning-in-software-engineering-2-an-experiment/finaltree-small-commits.png).
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

Nothing new here, but a statistical proof that this applies to a specific codebase has value. Next time a grumpy programmer tells us something like:

> Small commits are fine in theory, but it does not work like that here!

We'll have an extra argument in our pocket to get the point!

### Open-Closed principle

Ismail also took into account the revisions of files in a commit. He found that the higher the standard-deviation of file revisions, the more tests fail.

{% assign figure_path="/imgs/2019-08-24-why-machine-learning-in-software-engineering-2-an-experiment/number_revisions.jpg" | absolute_url %}
    
{% assign figure_alt="Graph showing test results probability of a commit over number of files on the abscissa, and standard-deviation of revisions on the ordinate. Passing tests are in green, failing tests are in red; the darker the color, the more likely." %}
    
{% capture figure_caption %}
Graph showing test results probability of a commit over number of files on the abscissa, and standard-deviation of revisions on the ordinate. Passing tests are in green, failing tests are in red; the darker the color, the more likely. We see that passed a particular standard-deviation, it is almost impossible for the commit to pass the test.
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

When code follows the open-closed principle, new features don't impact the old code. This means that a commit's standard-deviation of revisions will be small. Which, again, makes the commit more likely to pass the tests.

It's also a case for splitting new features and refactoring in different commits:

1.  Refactor the old code to make the change easy
2.  Add the feature with new code only

Again this confirms [a known best practice](https://www.conventionalcommits.org).

## To be continued

This was part 2 of [a 3 posts story about how we tried to apply machine learning to software engineering]({{site.url}}/categories/#why-machine-learning-in-software-engineering-series). In the next post, I'll go over different opportunities for Machine Learning in Software Engineering.

[Stay tuned!](http://eepurl.com/dxKE95)

## PS

Ismail and I gave a talk at [Agile France 2019](http://2019.conf.agile-france.org/) and a [BBL talk](https://www.brownbaglunch.fr/) at [leboncoin.fr](https://www.leboncoin.fr/). The [slides are online](https://docs.google.com/presentation/d/1POm_idOFeLXXW-85dibZZnWF0mAy0s0zT87S5fpnVLY/edit?usp=sharing).