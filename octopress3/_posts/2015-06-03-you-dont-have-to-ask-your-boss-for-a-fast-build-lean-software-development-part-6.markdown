---
layout: post
title: "You don't have to ask your boss for a fast build (Lean Software Development part 6)"
date: 2015-06-03 04:43
comments: true
categories:
 - agile
 - lean
keywords: "agile, lean, software, lean software, xcost of delay, build time, feedback loop, decision rules"
description: "By doing really basic maths, a software team can create decision rules to decide how much work to do to speed up their build"
---
A slow build costs money. I mean it costs *a whole lot of money all the time !*

Spending some time to speed up the build is like an investment, you'll pay some money now, but then it's only a matter of time until you get a return on investment. Here is the trick, if you manage to get it quickly, no one will even notice that you spent some time making the build faster !

With a bit of maths, you can even get what [Reinertsen](http://www.amazon.com/Principles-Product-Development-Flow-Generation/dp/1935401009/ref=sr_1_1?ie=UTF8&qid=1432909293&sr=8-1&keywords=reinertsen+flow) calls a "Decentralized Decision Rule", making it possible for anyone in the organization to figure out if he should spend some time on the build or not; without the need to ask the permission to anyone.

[{% img center /imgs/2015-06-03-you-dont-have-to-ask-your-boss-for-a-fast-build-lean-software-development-part-6/Balance_ordinaire.jpg A 2-pan balance (From Wikipedia) %}](http://fr.wikipedia.org/wiki/Balance_%28instrument%29)

## Our example

Our team is constituted of 5 pairs, each running the build at least 10 times per day. Let's figure out the value of 1 minute build time speed-up

* The whole team would save : 1m x 5 pairs x 10 builds = 50 minutes per day
* In a 2 weeks sprint, this would amount to around 1 day of work

This means that if a pair spends half a day to get a 1 minute build speed-up, it would not change the output of the sprint, and it would in fact increase the throughput of the team for further sprints.

Anyone in our team that spots a potential 1 minute build time speed-up that would take less that 1 man.day to implement should do it right away, without asking the permission to anyone

## Other Benefits

A direct benefit is that the issue will not have to be re-discussed every time someone spots a build time improvement. This will save some management time, and more build speed-up actions will eventually be undertaken.

The astute lean reader will have noticed that I completely ignored the second effect of fast feedback :

* if the build is faster
* we will run it more often
* we'll spot errors earlier
* less errors will be submitted
* the overall throughput will be increased even more

Another hidden benefit concerns the [Cost of Delay](http://en.wikipedia.org/wiki/Cost_of_delay) (the cost of not selling the product NOW). As Cost of Delay typically trumps the work costs, this means that any improvement to the build time will bring even greater ROI in the long term.

## Variations

[{% img center /imgs/2015-06-03-you-dont-have-to-ask-your-boss-for-a-fast-build-lean-software-development-part-6/Boeing_777.jpg A Boeing 777 in flight over the mountains (From Wikipedia) %}](http://en.wikipedia.org/wiki/Boeing_777)

If your sponsor agrees, you can negotiate a longer return on investment period for your decision rule. For example, if he agreed to increase the horizon to 2 sprints, we could undertake more build time speed-up tasks. You might also prefer only to discuss really long ROI investments with him.

While designing the 777 Boeing used a similar decision rule to meet the required weight of the plan : any engineer could increase the production cost of 300$ provided it saved a pound of weight on the plane. This fixed issues they previously had with department weight budgets and escalation.

Finally, it would be great if we had the same rule for technical debt ! Imagine that you knew both the costs of fixing and not fixing your technical debt, you could then decided whether it makes sense to work on the debt right now or not. But that's for a later experiment.

This was part 6 of my [Lean Software Development Series](/the-flow-book-summary-lean-software-development_part_1/). Part 5 was [What optimization should we work on ?](/what-optimization-should-we-work-on-lean-software-development-part-5/), Part 7 will be [A Plan for Technical Debt](/a-plan-for-technical-debt-lean-software-development-part-7/).