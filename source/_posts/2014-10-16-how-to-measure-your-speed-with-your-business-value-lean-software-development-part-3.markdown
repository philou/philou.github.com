---
layout: post
title: "How to measure your speed with your business value ? (Lean Software Development Part 3)"
date: 2014-10-16 07:07
comments: true
categories:
 - agile
 - lean
 - business-value
keywords: "Measuring Business Value, Business Value, Software Development Speed, Lean Software Development, Agile Software Development"
description: "This article presents a way of measuring an agile team's speed against business value instead of story points"
---
There is a french idiom that basicaly is

> No use to run, all that is needed is to start on time ...

an agile engineer would add

> ... and to go in the good direction

Indeed, velocity or mean cycle time as speed measures have their shortcomings :

* Can be falsified by story point inflation !
* Does not tell the team or its product owner whether they are working on the right thing.

Wouldn't it be great if we could track the business value we are creating instead ? Wouldn't it be more motivating for developpers to know how they are contributing to the bottom line ? Wouldn't it help various people to align inside the organization ?

## How to track and prioritize based on your business value

From [Reinertsen's Flow book](http://www.amazon.com/The-Principles-Product-Development-Flow/dp/1935401009/ref=sr_1_1?ie=UTF8&qid=1413953773&sr=8-1&keywords=product+development+flow), we learned that the cost of delay is the main driver of the value creation : the faster you deliver a feature, less you spend the cost of delay of that feature, the more value you are creating for your company. [This article](http://scaledagileframework.com/wsjf/) suggests that the cost of delay can be computed with the following formula :

> cost of delay = f(user business value) + g(time criticality) + h(risk reduction opportunity)

[This other article](http://fr.slideshare.net/jchyip/estimating-cost-of-delay/27) suggests that they are different types of tasks that corresponds to the different terms of the formula above.

{% img center /imgs/2014-10-16-how-to-measure-your-speed-with-your-business-value-lean-software-development-part-3/task-types.jpeg "Different kind of tasks" %}

Here is how we could link the 2 articles :

* Stories with deadlines : either through legal or market constraints, not doing this will put you out of business ('time criticality' in the formula)
* Stories that influence the bottom line : by increasing the sales figures when delivered, or decreasing them when not delivered, which is kind of the same ('user business value' in the formula)
* Risk reduction tasks : by mitigating risk or streamlining the process, these tasks actually improve the bottom line of other stories ('risk reduction opportunity' in the formula)

The later type of task will be detailed in other articles. Let's focus on the two others.

## The case of the deadlined feature ?

First, I'd say its business value is 0, until it's too late. You should not be working on it too soon, but you should not be working on it too late neither !

In his book [The Art of Agile Development](http://www.amazon.com/Art-Agile-Development-James-Shore/dp/0596527675/ref=sr_1_1?s=books&ie=UTF8&qid=1413954965&sr=1-1&keywords=the+art+of+agile+development) James Shore details in great details how an agile team can commit to deliverables (I really recommend this part, I might even write a post about it). He explains that in order to commit, teams should multiply their estimates by 4, or by 1.8 if they are very rigourous in their application of all the XP practices.

So a rule to handle such a task could be to

* estimate it
* multiply that estimate by 4
* substract this time from the deadline
* prioritize it so that it can be started at that date, but not earlier
* don't expect to be creating any value by completing these stories

## What's the business value of other typical user stories

[This article](http://scaledagileframework.com/wsjf/) suggests that in this case the cost of delay is equal to the business value of the feature for the user. But how can we have an idea of its actual user business value ?

Before actually selling and getting the money, it's just an estimation. With the good information, some people will make better estimates than others, never the less, it's still an estimate. Let's try a "Business Value Poker" ! Here are a few ideas about how to conduct this:

* Estimate business value at the same time as you estimate the complexity of a story
* Create some business value $ poker estimate cards, write an app for this, or bring in some Poker Chips to estimate the value
* Invite some business people (sales, marketting ...) to the meeting to get real knowledge (being organized as a feature team will help)

[{% img center /imgs/2014-10-16-how-to-measure-your-speed-with-your-business-value-lean-software-development-part-3/all-in.jpg "Hands pushing poker chips for an all-in" %}](https://gigaom.com/2012/05/16/social-gaming-to-gambling-states-inch-forward/poker-chips-by-sanzar-murzin/)

At the end, when you have the estimated cost of delay and duration of every task, you can directly prioritize using the WSJF (Weighted Shortest Job First) :

> WSJF = Cost of Delay / Duration

Just do the tasks by decreasing order of WSJF.

At the end of the sprint, just as we track the story points we completed with the velocity, we could track the business value we created, that would be our business value speed. If you have access to real sales numbers, it might be interesting to see if it's possible to correlate the figures.

## Afterthoughts

The more I learn about Lean principles, the more I find our current Issues Tracking Systems (I'm used to Jira) limited. They seem to be databases with a nice UI, whereas what we need are tools to help us to make better decisions out of the multitude of items ... How come they do not provide something as simple as the WSJF ?

## Edit 12/09/2014

I got some pretty positive feedback from practicing these business value pokers. Inviting the product owner forced him to explain in details why he believed some features were more valuable than others. On the opposite, it allowed the developpers to hightlight how some seemingly unimportant stories were critical to a long term goal. In the end, everyone, including the product owner, is asking for more. It's a good practice that helps introducing the business value / cost of delay concept.

This was part 3 of my suite of article about Lean Software Development, Part 2 was [Why eXtreme Programming works ?](/why-extreme-programming-works-lean-software-development-part-2/), Part 4 will be "Take informed high payoff risks".
