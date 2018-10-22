---
layout: single
title: "Measure The Business Value of Your Spikes and Take High Payoff Risks (Lean Software Development Part 4)"
date: 2015-01-31 15:13
comments: true
categories:
 - lean
 - agile
 - extreme programming
keywords: "Lean Software Development, eXtreme Programming, Business Value, Spike, Cost of Delay"
description: "A case study about computing the business value of an eXtreme Programming Spike (aka experiment) in order to know how to prioritize it."
---
Lately [at work](http://www.murex.com), we've unexpectedly been asked by other teams if they could use our product for something that we had not forseen. As we are not sure whether we'll be able to tune our product to their needs, we are thinking about doing a short study to know the answer. This looks like a great opportunity to try out [Cost of Delay](http://en.wikipedia.org/wiki/Cost_of_delay) analysis about uncertain tasks.

Unfortunately, I cannot write the details of what we are creating at work in this blog, so let's assume that we are building a Todo List Software.

We have been targeting the enterprise market. Lately, we've seen some interest from individuals planning to use our todo list system for themselves at home.

For individuals, the system would need to be highly available and live 24/7 over the internet, latency will also be critical to retain customers, but the product could get a market share with a basic feature set.

On the other side, enterprise customers need advanced features, absolute data safety, but they can cope with nightly restarts of the server.

In order to know if we can make our todo list system available and fast enough for the individuals market, we are planning to conduct a pre-study, so as not to waste time on an unreachable goal. In [XP](http://www.extremeprogramming.org/) terms, this is a [spike](http://www.extremeprogramming.org/rules/spike.html), and it's a bunch of experiments rather than a theoretical study.

[![Photo of someone studying behind piles of books]({{site.url}}{{site.baseurl}}/imgs/2015-01-31-measure-the-business-value-of-your-spikes-and-take-high-payoff-risks-lean-software-development-part-4/study-petit.jpg)]({{site.url}}/imgs/2015-01-31-measure-the-business-value-of-your-spikes-and-take-high-payoff-risks-lean-software-development-part-4/study.jpg)

## When should we prioritize this spike ?

If we are using the [Weighted Shortest Job First](http://www.scaledagileframework.com/wsjf/) metric to prioritize our work, we need to estimate the cost of delay of a task to determine its priority. Hereafter I will explain how we could determine the value of this spike.

## Computing the cost of delay

The strategy to compute the cost of delay for such a risk mitigation task is to compute the difference in cost of delays with or without doing it.

### 1. The products, the features, the MVP and the estimates

As I explained in [a previous post](/how-to-measure-your-speed-with-your-business-value-lean-software-development-part-3/), for usual features, cost of delay is equivalent to it's value. Along with our gross estimates, here are the relative values that our product owner gave us for the different products we are envisioning.

Feature                   | $ Enterprise | $ Individuals | Estimated work
--------------------------|--------------|---------------|---------------
Robustness	          | 20*	         | 20*           | 2
Availability	          | 0	         | 40*           | 2
Latency	                  | 0	         | 40*           | 1
Durability	          | 40*	         | 13            | 2
Multi user lists          | 20*          | 8             | 2
Labels                    | 20           | 13            | 2
Custom report tool        | 13           | 0             | 3
TOTAL Cost Of Delay of v1 | 80	         | 100           |

<sup>Stared (*) features are required for the first version of the product. Features with a value of 0 are not required for the product. Eventually, unstared features with a non null business value would be great for a second release.</sup>

It seems that the individuals market is a greater opportunity, so it's worth thinking about it. Unfortunately for the moment, we really don't know if we'll manage to get the high availability that is required for such a product.

The availability spike we are envisioning would take 1 unit of time.

### 2. Computing the cost of delay of this spike

The cost of delay of a task involving some uncertainty is the probabilistic expected value of its cost of delay. We estimate that we have 50% of chances of matching the availability required by individuals. It means that CoD of the spike = 50% * CoD if we match the latency + 50% CoD if we don't match the availability.

#### 2.a. The Cost of Delay if we get the availability

Let's consider the future in which we'll manage to reduce the latency.
The cost of delay of a spike task is the difference in Cost with and without doing the spike, per relevent months.

##### 2.a.i. The cost if we don't do the spike

Unfortunately, at this point in this future, we don't yet know that we'll manage to get to the availability.

Feature                   | $ Enterprise | $ Individuals | $ Expected   | Estimated work | WSJF
--------------------------|--------------|---------------|--------------|----------------|------------
Latency	                  | 0	         | 40*           | 20           | 1              | 20
Durability	          | 40*	         | 13            | 26           | 2              | 13
Robustness	          | 20*	         | 20*           | 20           | 2              | 10
Availability	          | 0	         | 40*           | 20           | 2              | 10
Labels                    | 20           | 13            | 17           | 2              | 9
Multi user lists          | 20*          | 8             | 14           | 2              | 7
Custom report tool        | 13           | 0             | 8            | 3              | 3

We'll resort to WSJF to prioritize our work. Here is what we'll be able to ship :

Product | Delay | CoD | Cost
--------|-------|-----|-----
Individuals                     | 7    | 100   |  700
Individuals Durability          | 7    | 13    |   91
Individuals Labels              | 9    | 13    |  117
Enterprise                      | 11   | 80    |  880
Enterprise labels               | 11   | 20    |  220
Individuals Multi user lists    | 13   | 8     |  104
Enterprise Custom reports       | 16   | 13    |  208
                                |      |       | 2320

##### 2.a.ii. The cost if we do the spike

In this case, we would start by the spike, and it would tell us that we can reach the individuals availability and so that we should go for this feature first. Here will be our planning

Feature                   | $ Enterprise | $ Individuals | Estimated work | Enterprise WSJF | Individuals WSJF
--------------------------|--------------|---------------|----------------|-----------------|-----------------
Feasibility spike         |              |    	         | 1              |                 |
Latency	                  | 0	         | 40*           | 1              |                 | 40
Availability	          | 0	         | 40*           | 2              |                 | 20
Robustness	          | 20*	         | 20*           | 2              | 10              | 10
Durability	          | 40*	         | 13            | 2              | 20              | 7
Multi user lists          | 20*          | 8             | 2              | 10              | 4
Labels                    | 20           | 13            | 2              | 10              | 7
Custom report tool        | 13           | 0             | 3              | 4               |

Here is how we will be able to ship :

Product | Delay | CoD | Cost
--------|-------|-----|-----
Individuals                     | 6    | 100   |  600
Individuals Durability          | 8    | 13    |  104
Individuals Multi user lists    | 10   | 8     |   80
Enterprise                      | 10   | 80    |  800
Individuals Labels              | 12   | 13    |  156
Enterprise Labels               | 12   | 20    |  240
Enterprise Custom reports       | 15   | 13    |  195
                                |      |       | 2175

##### 2.a.iii. Cost of delay of the spike if we reach the availability

By making the spike, we would save 2320 - 2175 = 145$

Without doing the spike, we would discover whether we would reach the availability when we try it, around time 7 (see 2.a.i).

So the cost of delay for the spike would be around 145/7 = 21 $/m

#### 2.b. The Cost of Delay if we don't get the availability

Let's now consider the future in which we don't manage to increase the availability.

Using the same logic as before, let's now see what happens

##### 2.b.i. The cost if we don't do the spike

Unfortunately, at this point in this future, we don't yet know that we'll not manage to get to the availability.

Feature                   | $ Enterprise | $ Individuals | $ Expected   | Estimated work | WSJF
--------------------------|--------------|---------------|--------------|----------------|------------
Latency	                  | 0	         | 40*           | 20           | 1              | 20
Durability	          | 40*	         | 13            | 26           | 2              | 13
Robustness	          | 20*	         | 20*           | 20           | 2              | 10
Availability	          | 0	         | 40*           | 20           | 2              | 10
Multi user lists          | 20*          | 8             | 14           | 2              | 7
Labels                    | 20           | 13            | 17           | 2              | 9
Custom report tool        | 13           | 0             | 8            | 3              | 3

When we'll fail at the availability, we'll switch multi user lists and labels to be able to ship to enterprises as quickly as possible.
Here is what we'll ship.

Product | Delay | CoD | Cost
--------|-------|-----|-----
Enterprise                      |  9   | 80    |  720
Enterprise Labels               | 11   | 20    |  220
Enterprise Custom reports       | 14   | 13    |  182
                                |      |       | 1122

##### 2.b.ii. The cost if we do the spike

In this case, we would start by the spike, and it would tell us that we won't match the availability required for individuals and so that that there's no need to run after this now.

Feature            | $ Enterprise | Estimated work | WSJF
-------------------|--------------|----------------|----------
Feasibility spike  |              | 1              |
Durability	   | 40*	  | 2              | 13
Robustness	   | 20*	  | 2              | 10
Multi user lists   | 20*          | 2              | 7
Labels             | 20           | 2              | 9
Custom report tool | 13           | 3              | 3

Here is how we will be able to ship :

Product | Delay | CoD | Cost
--------|-------|-----|-----
Enterprise                      |  7   | 80    |  560
Enterprise Labels               |  9   | 20    |  180
Enterprise Custom reports       | 12   | 13    |  156
                                |      |       |  896

##### 2.b.iii. Cost of delay of the spike if we reach the availability

By making the spike, we would save 1122 - 896 = 226$

As before, without doing the spike, we would discover whether we would get the availability when we try it, around time 7.

So the cost of delay for the spike is around 226/7 = 32 $/m

#### 2.c. Compute overall Cost of Delay of the Spike

[![Bank notes going through an hourglass]({{site.url}}{{site.baseurl}}/imgs/2015-01-31-measure-the-business-value-of-your-spikes-and-take-high-payoff-risks-lean-software-development-part-4/CoD-petit.jpg)]({{site.url}}/imgs/2015-01-31-measure-the-business-value-of-your-spikes-and-take-high-payoff-risks-lean-software-development-part-4/CoD.jpg)

Given that we estimate that there is a 50% chances of making the latency, the overall expected cost of delay is

50% * 21 + 50% * 32 = 26.5 $/m

Inject the spike in the backlog

With the Cost of Delay of the spike, we can compute it's WSJF and prioritize it against other features.

Feature | $ Enterprise | $ Individuals | Expected $ | Estimated work | WSJF
--------|--------|--------|------------|----------------|-----
Feasibility Spike         |              |               | 26.5         | 1              | 26.5
Latency	                  | 0	         | 40*           | 20           | 1              | 20
Durability	          | 40*	         | 13            | 26           | 2              | 13
Robustness	          | 20*	         | 20*           | 20           | 2              | 10
Availability	          | 0	         | 40*           | 20           | 2              | 10
Multi user lists          | 20*          | 8             | 14           | 2              | 7
Labels                    | 20           | 13            | 17           | 2              | 9
Custom report tool        | 13           | 0             | 8            | 3              | 3

The spike comes at the top of our backlog. Which confirms our gut feeling.

## Conclusion

Doing this long study confirmed classic rule of thumbs

* Don't develop many products at the same time
* Do some Proof Of Concepts early before starting to work on uncertain features
* Tackle the most risky features first

By improving the inputs, we could get more quality results :

* If we had access to real sales or finance figures for the costs
* If we did some sort of poker risk estimation instead of just guessing at 50% chances

Obviously, the analysis itself is not perfect, but it hints to the good choices. And as [Don Reinertsen](http://reinertsenassociates.com/) puts it, using an economical framework, the spread between people estimations goes down from [50:1](http://leanmagazine.net/lean/cost-of-delay-don-reinertsen/) to 2:1 ! This seems a good alternative to the experience and gut feeling approach which :

* can trigger heated unfounded discussions
* often means high dependence on the intuition of a single individual

As everything is quantitative though, one could imagine that with other figures, we could have got to another conclusion, such as :

* The spike is not worth doing (it costs more than it might save)
* The spike can wait a bit

[![A dilbert strip about gut feeling at work]({{site.url}}{{site.baseurl}}/imgs/2015-01-31-measure-the-business-value-of-your-spikes-and-take-high-payoff-risks-lean-software-development-part-4/dt140330.jpg)](http://dilbert.com/strip/2014-03-30)

This was part 4 of my [Lean Software Development Series](/the-flow-book-summary-lean-software-development_part_1/). Part 3 was [How to measure your speed with your business value](/how-to-measure-your-speed-with-your-business-value-lean-software-development-part-3/), continue on Part 5 : [What optimization should we work on ?](/what-optimization-should-we-work-on-lean-software-development-part-5/).
