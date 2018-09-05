---
layout: single
title: "Reducing the risks of large organization changes with the Mikado Method - part 2"
date: 2018-02-15 06:45
comments: true
categories: 
 - agile
 - lean
 - coaching
 - improvement kata
 - large scale
 - mikado-method
 - mikado-method-organization-series
keywords: "Mikado Method, Agile, Agile transformation, Large Scale Transformation, Large Scale Agile, Improvement Kata"
description: "Second post of a series about applying the Mikado Method for large organization changes. Here I show how the Mikado Method and the Improvement Kata are quite similar, and how to apply both for large organization changes."
---
In the [previous post](/reducing-the-risks-of-large-organization-changes-with-the-mikado-method-part-1/), I presented both large scale code and organization changes. I highlighted how they face similar difficulties of huge [Work In Progress](https://en.wikipedia.org/wiki/Work_in_process). Let's see how programmers deal with these problems.

![A drawing of a wipe, with the text "Mind your WIP"]({{site.url}}{{site.baseurl}}/imgs/2018-01-22-reducing-the-risks-of-large-organization-changes-with-the-mikado-method-part-2/mind-your-wip.jpg)

## The mikado method algorithm

The [mikado method](https://mikadomethod.wordpress.com/) is a programming technique to perform large [code refactoring](https://en.wikipedia.org/wiki/Code_refactoring) one step at a time. It fixes the problematic situation we raised at the beginning of these posts. It enables developers to integrate their work with their teammates' continuously. It allows to build features and do the refactoring in parallel. Developers can also pause a mikado refactoring for a while if needed. On top of all this, it makes it easier for the full team to collaborate on the same refactoring.

> 💡 Developers can pause a Mikado Method refactoring for a while if needed.

Here is how it goes, but you can get a more detailed (and technical) description [here](/10-things-to-know-that-will-make-you-great-at-refactoring-legacy-code/).

1.  Try to do the change you want
2.  If it the tests pass, great, you're done
3.  Otherwise, add a node for the change you wanted to do in your mikado graph
4.  Write down the errors you faced
5.  Revert your change
6.  Recurse from 1 for every error
7.  Draw a dependency arrow from the nodes of errors to the node of your initial change

The catch is that developers should revert the work they could not finish to move on !

## How to apply it to an organization change

In some way, the Mikado Method is very similar to the [improvement kata](http://www-personal.umich.edu/~mrother/The_Improvement_Kata.html). The flow of the Improvement kata goes on like that :

1.  Determine a target condition
2.  Try to work with the target condition in place
3.  If it works, you're done
4.  Otherwise, understand the main impediment, and revert to the old way of doing things
5.  Work to remove the impediment
6.  Start again from step 2

Have a look at [these blog posts](http://philippe.bourgau.net/how-we-used-the-improvement-kata-to-gain-25-percent-of-productivity-part-1/) for a more practical presentation of the improvement kata.

> 💡 The Mikado Method and the Improvement Kata are more than similar.

Granted, the Mikado method and the improvement kata look similar. They are in fact more than similar. The improvement kata does not prescribe how you should fix your impediments. What's not explicit is that we can use it recursively to fix impediments ! That makes it almost identical to the Mikado Method, but for organization instead of code. It won't be a surprise to know that some companies have used the improvement kata for that. For example, [HP used it to drive its Laser Jet team transformation](https://www.amazon.com/Practical-Approach-Large-Scale-Agile-Development/dp/0321821726?pd_rd_wg=UdZ7n&pd_rd_r=ea4d5912-c825-432a-b633-ac6822a475f4&pd_rd_w=rQ1LZ&ref_=pd_gw_psimh&pf_rd_r=0N5KT332R3TD0DWK8FM0&pf_rd_p=a1e8e44e-a6a8-5785-afd0-7f174f0d74f9). Others have already used the [Mikado Method for organization transformation](http://nomad8.com/organisational-change-with-mikado/).

[![Extract of the orga mikado graph used by the Sandy Mamoli]({{site.url}}{{site.baseurl}}/imgs/2018-01-22-reducing-the-risks-of-large-organization-changes-with-the-mikado-method-part-2/orga-mikado-post-its.jpg)](http://nomad8.com/organisational-change-with-mikado/)<div class="image-credits">[Original Post](http://nomad8.com/organisational-change-with-mikado/) by Sandy Mamoli</div>

Suppose your organization wants to move to full [Continuous Integration](https://en.wikipedia.org/wiki/Continuous_integration). It could start by trying to integrate all their devs in 10 minutes on a small group of teams. If it works, fine, other large teams can try it as well. Let's see what to do if it fails though. Thanks to a [retrospective]({{site.baseurl}}/categories/#retrospectives/) teams understand that they need to master CI themselves first. In this case, they could revert large scale CI, and have one of the teams try to do continuous integration. If it works, fine, another team can try it too. If it does not, they'll do a post-mortem of some sort to understand the root issue, and work on it. For example, here the main impediment could be a coupled architecture. The fun thing would be to apply the Mikado Method to do this refactoring 😉.

As with the Mikado Method, it is possible to draw an organization change Mikado graph along the way :

![The mikado graph for the story above]({{site.url}}{{site.baseurl}}/imgs/2018-01-22-reducing-the-risks-of-large-organization-changes-with-the-mikado-method-part-2/sample-mikado.png)

The graph is a living artifact. As we try and revert new experiments, we should expand and collapse the graph. This creates a global and shared view of the state of the change. Needless to say that this is great for collaboration.

## To be continued (again)

This was part 2 of a [series on applying the Mikado Method to organization changes]({{site.baseurl}}/categories/#mikado-method-organization-series/). I'll end this series up with [next post](/reducing-the-risks-of-large-organization-changes-with-the-mikado-method-part-3/), where I'll go through the pros and cons of the approach.
