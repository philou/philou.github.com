---
layout: post
title: "How I got my feet wet with machine learning with 'The First 20 Hours'"
date: 2016-12-29 21:09
comments: true
categories:
 - learning
 - software
keywords: "Learn, Learn Anything, Machine Learning, Learn Anything Fast, Performance"
description: "The story of how I learned basic machine learning skills in 20 hours after reading 'The First 20 Hours'"
---
I'm currently wrapping up an alpha of a unit testing [ruby gem](https://github.com/philou/complexity-assert) that allows to assert the complexity of a piece of code. It's the result of an experiment to learn some [Machine Learning](https://en.wikipedia.org/wiki/Machine_learning) skills in 20 hours ... not bad for a first a try at Data Science ! This is the story of this experiment.

## How it all started ?

[{% img center /imgs/2016-12-29-how-i-got-my-feet-wet-with-machine-learning-with-the-first-20-hours/book-cover.jpg The cover of the book 'The First 20 Hours' %}](https://www.amazon.com/First-20-Hours-Learn-Anything/dp/1591846943/ref=sr_1_1?ie=UTF8&qid=1483258282&sr=8-1&keywords=the+first+20+hours)

A few months ago, I read [The First 20 Hours](https://www.amazon.com/First-20-Hours-Learn-Anything/dp/1591846943/ref=sr_1_1?ie=UTF8&qid=1483258282&sr=8-1&keywords=the+first+20+hours). The book describes a technique to get up to speed and learn some practical skills on any particular subject in only 20 hours. As examples, the author details how he managed to teach himself a pretty decent level of Yoga, Ukulele, Wind Surfing, Programming, Go and touch typing.

I decided to give it a try. In order to get a boost, I found a few motivated people at work to do it with me. I started by presenting them the technique described in the book, and asked everyone what they wanted to learn. After a quick vote, we set out to learn more about Machine Learning.

## The technique

The method is meant to allow anyone to learn necessary skills to accomplish a specific task in about 20 hours. I my case, I could expect to get a basic understanding of the Machine Learning concepts, as well as some practical skills to do something involving Machine Learning. Here are the details of the technique :

1. H0 : Deep dive in the main concepts and theory of machine learning
2. H6 : Define an ambitious and practical goal or skill level to achieve by the end, and an outline of how to get there
3. H6 to H20 : Learn by doing

As you see, the technique is pretty simple !

## How did it work ?

### For the group

The plan for the group was :

* to meet weekly for 2 hours
* to share what we learned at the end of every session
* to bound by similar goals

At first, people were enthusiastic about learning something like machine learning. After a while, I started to get the following remarks :

* "I don't really see the point of doing this together rather than independently"
* "I'm feeling a bit lost by not having a concrete goal and a plan from H0"
* "I picked up a target that's too large for me"

The learning curve must have proven too steep, because as time went by, a lot of people droped out, and we ended up being only 2 !

### For me

The first phase was the toughest. As the author had warned in his book, "You'll get deep above your head in theory and concepts you don't know", "You'll feel lost". He had some reassuring words though : "The steeper the learning curve, the more you'll be learning !" I actually like this feeling of unknown things to learn, and that's why I stuck to it.

I took me 8 hours, and not 6 to get a good overall grasp of Machine Learning techniques. The theory was just too wide and interesting and I could not cut the learning after just 6 hours :-). I studied [Machine Learning for developers](https://xyclade.github.io/MachineLearning/#cross-validation) plus a few other pages for details on specific points. I took and kept notes about what I learned. I chose my subject "unit testing algorithm complexity" for the following reasons :

* I could imagine some utility
* I had been writing benchmarks at work for 3 years, and I knew the practice well enough
* It's pretty easy to generate data for this subject : just run your algorithm !
* It seems a good first step, doable with basic Machine Learning techniques like linear regression
* It seems small enough to get something working in 12 hours
* I could use ruby, which I find both fast and pleasant to program

This is the plan I set out :

1. Generate data with a linear algorithm (O(n))
2. Run linear regression on the data
3. Compute the the [RMSE](https://xyclade.github.io/MachineLearning/#root-mean-squared-error-rmse) of the model
4. Deal with Garbage Collection in order to make reduce its noise
5. Deal with interpreter warm-up for the same reason
6. Generate data for a constant (O(1)) algorithm and build a model for it
7. Find a way to identify if an algorithm is constant or linear from it's execution timings
8. Generate data for a quadratic (O(2)) algorithm and build a model for it
9. Identify if an algorithm is constant, linear or quadratic
10. Package all this in an [RSpec](http://rspec.info/) library

It started well, and I made good progress. Unfortunately, as people dropped out of the group and I got more urgent things to do at work, I had to pause my project for a while. It's only been since last week that I got some time during my holidays to finish this off. I'm currently at H18, and I've completed all steps from 1 to 9.

As I said the project is still in early alpha. They is a lot of points in which it could be improved (more complexities, faster, more reliable ...). Even though I did not tackle the more advanced machine learning techniques, I now understand the overall process of ML : explore to get an intuitive grasp of the data, try out a model, see what happens, and repeat ... I feel that learning these more advanced techniques would be easier now.

## My opinion on the method

Overall, I found the experiment really effective, it's possible to learn quite a lot by focusing on it for 20 hours. A word of warning though : you need to be really motivated and ready to stick through difficulties.

It's also been very pleasant. I've always loved to learn new things, so I might be a little biased on that aspect. I liked the first part when I felt that there was a lot to learn in a large subject I knew almost nothing about. I loved the second part too, although this might be more related to machine learning, because I felt like exploring an unknown (data set) and trying to understand it.

I've never been afraid to learn something, doing this experiment taught me I can learn anything fast ! I'll definitely re-use it again.

One last word about doing this in group. My own experiment did not work very well. Most people were not comfortable with the first 'explore' phase. I guess one could make it work better by starting 6 or 8 hours before the rest of the group, enough to grasp the basic concepts and come up with a few end goals. Having concrete targets from day 1 should help people to stick through and to collaborate. The 'guide' could also help the others through the first phase.

Stay tuned, I'll present my gem in [a following post](/verify-the-big-o-complexity-of-ruby-code-in-rspec/)
