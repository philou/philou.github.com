---
layout: post
title: "Programming as an exponential problem"
date: 2014-02-21 06:30
comments: true
categories:
 - programming
 - reflexion
 - complexity
keywords: "programming, exponential, problem, hypothesis, consequences"
description: "Exploration of the idea that the complexity of a software solution to is an exponential function of the complexity of the problem"
---
As said Tom Cargill

> The first 90% of the code accounts for the first 90% of the development time. The remaining 10% of the code accounts for the other 90% of the development time.

By extrapolation, this would mean that every time we increase the requirements by 10%, we need to double the total development time ! That would mean that solution complexity is an exponential function of the complexity of the problem.

That could explain why techniques that work well for small problems don't work well at all for large problems, and vice et versa. For example

 In the small (think one page script) | In the large (think multi millions lines system)
:------------------------------------:|:------------------------------------------------:
 Dynamic typing                       | Static typing
 Mutable globals                      | Immutability
 Imperative style                     | Declarative style
 Manual memory management             | Garbage collection
 Shared memory                        | Message passing
<br/>


Just for fun, let's suppose that we could deduce a unique constant C for every language such that

![Secret formula linking problem and solution complexities]({{site.url}}/imgs/2014-02-21-programming-as-an-exponential-problem/formula.png)

Here is a plot of this formula with different values of C (0.5, 1 and 2)

![Plot of the formula for different C constant values]({{site.url}}/imgs/2014-02-21-programming-as-an-exponential-problem/close-plot.png)

We can see that small values of C are best for small problems, whereas greater values are evolve better with larger problems. For a given problem, there is quite a difference in the solution complexity, if the formula was true, and that we knew in which zone of complexity our problem will always be, we could choose the appropriate technology ! Experienced engineers already have the gut knowledge about how to chose the right tool for the job !

That's not all, let's have a bird's eye view of the same formulas

![Same plot at a larger scale]({{site.url}}/imgs/2014-02-21-programming-as-an-exponential-problem/wide-plot.png)

I increased the maximum problem complexity by a factor of 3, I had to multiply the solution complexity by 100 ! In the end, these exponential curves all seem frighteningly vertical. This could explain why the divide and conquer approach works so well in software : 2e^x < e^(2x). Abstract and powerful APIs might be our best weapon against complexity.

People behaviour does not match this exponential hypothesis though :

* At work, I've seen quite a few projects started from scratch, and everybody expecting it to maintain it's initial speed during its whole lifetime
* Some recent hiring or investing trend seem to rely on hackathons, startup week ends, or coding games, all 'in the small' exercises
* I've observed in quick and dirty overtime work to meet a deadline ... If productivity is proportional to the solution complexity, that crunch mode would be completely unproductive

This leads to more interesting questions :

* Is my exponential model complete garbage ?
* Or are humans particularly bad at forecasting an exponential behaviour ?
* If so, what practices could we adopt to stop relying on this misleading gut feeling ?
