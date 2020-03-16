---
layout: single-mailing-list
title: "How I'll measure the lean startup value of information in my next side project (Lean Software Development Part 8)"
date: 2015-12-07 21:19
comments: true
categories:
 - lean
 - software
 - planning
 - business value
keywords: "Lean, Lean Startup, Lean Software Development, Lean Development"
description: "Explanation of how I am going to try to prioritize between Lean Startup experiments and other activities"
---
There must be a way to know the real money value of [Lean Startup](http://theleanstartup.com/) 'knowledge'.

![A brain or some money ?]({{site.url}}{{site.baseurl}}/imgs/2015-12-07-how-ill-measure-the-lean-startup-value-of-information-in-my-next-side-project-lean-software-development-part-8/knowledge-money.jpg)

Lean Startup is about gathering 'knowledge' through experiments instead of building things. [Flow book](http://www.amazon.com/Principles-Product-Development-Flow-Generation/dp/1935401009/ref=sr_1_3?tag=pbourgau-20&amp;ie=UTF8&qid=1450068976&sr=8-3&keywords=lean+product+development) suggests that the value of an information is its expected impact on the bottom line. So by combining both, there should be a way to compute a quantitative value for the knowledge.

The overall plan would be :

1. Start with a rough business plan, but assume that all that's in it has got 1 chance out of 10 of being right
2. Design experiments to precise the likelyhood of what's in the business plan
3. Compute the value of each experiment as the difference of the expected bottom line after and before running it (This should be possible if relying on the business plan for other parameters)
4. Work on the task with the highest expected value, be it an experiment, a development, a sales task, or whatever
4. Adapt you business plan with any new information
5. Repeat
6. If it becomes obvious that the expected final earnings are too low, pivot

Flow explains that all the principles are pretty robust to bad inputs and errors. In short, the final estimations of earnings are still a lot better than without using any specific method. In the case of Lean Startup, it means that a false business plan is a good enough starting point.

## How to assess the likelyhood of a figure ?

By default let's assume the value of a feature is somewhere between 0 and your highest estimate. As we'll go through experiments we'll be able to narrow this value range and have a more accurate estimate for the real value.

To keep things simple we could assume that the probability of value is uniformaly distributed within this range. From what I read in [Waltzing With Bears](http://www.amazon.com/Waltzing-Bears-Managing-Software-Projects/dp/0932633609/ref=sr_1_1?tag=pbourgau-20&amp;ie=UTF8&qid=1449901015&sr=8-1&keywords=waltzing+with+bears), here would be a more realistic probability distribution.

![The curve of the probability of value according to DeMarco]({{site.url}}{{site.baseurl}}/imgs/2015-12-07-how-ill-measure-the-lean-startup-value-of-information-in-my-next-side-project-lean-software-development-part-8/Demarco-probability.png)

## How to estimate the value of an experiment ?

I'm not going to go into the details here, because the logic is exactly the same as with technical experiments (which [I already wrote about](/measure-the-business-value-of-your-spikes-and-take-high-payoff-risks-lean-software-development-part-4/))

Since then though, I read [Waltzing With Bears](http://www.amazon.com/Waltzing-Bears-Managing-Software-Projects/dp/0932633609/ref=sr_1_1?tag=pbourgau-20&amp;ie=UTF8&qid=1449901015&sr=8-1&keywords=waltzing+with+bears) which presents a way of doing Monte Carlo simulations in order to estimate risks on your project. I guess the same thing could be used for value, which would save us from a lot of complex math.

[![Cover of 'Waltzing With Bears']({{site.url}}{{site.baseurl}}/imgs/2015-12-07-how-ill-measure-the-lean-startup-value-of-information-in-my-next-side-project-lean-software-development-part-8/waltzing-with-bears.jpg)](http://www.amazon.com/Waltzing-Bears-Managing-Software-Projects/dp/0932633609/ref=sr_1_1?tag=pbourgau-20&amp;ie=UTF8&qid=1449901015&sr=8-1&keywords=waltzing+with+bears)

## When to stop doing experiments ?

Isn't all this overkill ? One could argue that the point of Lean Startup should be to build just enough knowledge ! In fact, this value of information concept naturaly helps to find out when running the experiment is not worth it compared to actually doing the real thing.

BTW, a tool doing all this for your automaticaly would be great, wouldn't it ?

## What I'll do for my next bootstrap side project

1. Start with a target hourly earning rate.
2. Collect a list of projects I'd be interested in.
3. Pick a project and write a business goal for it.
4. Assign likelyhoods and ranges on every figure in the business plan.
5. Design experiments to improve the figures.
6. Create tasks to actually build and sell the product.
7. Compute values for each of these tasks.
8. Work the most valueable first.
9. If the figures prove that I will not make my target wage with this project, I'll pivot, and restart from 2.
10. Otherwise, I'll repeat from 4.

This was part 8 of my [suite of article about Lean Software Development](/the-flow-book-summary-lean-software-development_part_1/), Part 7 was [A Plan for Technical Debt](/a-plan-for-technical-debt-lean-software-development-part-7/), Part 9 will be [My Dream Lean Software Development Tool](/my-dream-lean-software-development-tool-lean-software-development-part-9/).
