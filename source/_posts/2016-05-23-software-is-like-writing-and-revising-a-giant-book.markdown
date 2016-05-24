---
layout: post
title: "Software is like writing and revising a giant book"
date: 2016-05-23 03:52
comments: true
categories:
 - software
 - complexity
keywords: "Software, Writing Software, Writing"
description: "A comparison of developing software and writing a book"
---
With time, I discovered a way of explaining the subtleties of my developer job to my uninformed relatives and friends.

Sharing what your developer job is about with others can be very frustrating. Some people think you are "Just playing around with computers" as if it was not serious work. Others think that it is an extremely Cartesian and solitary activity with no place for communication or creativity. Trying to explain the diversity and richness of a developer's work is often a disappointing experience.

## The book metaphor

{% img center /imgs/2016-05-23-software-is-like-writing-and-revising-a-giant-book/book.jpg An old book %}

I explain to people that writing software is not unlike writing a huge book. A book long many millions of lines. I explain that the challenge is to maintain the whole story of the book coherent. I stress how difficult this is given that no one can take the time to read the full book, that the authors come and go, and that the book is under constant heavy revision.

## Details of our work

The metaphor is quite valid and even holds about more subtle aspects of our work. Here is a summary of the last discussion I had about the book metaphor :

> - (Him) Do you have some 'gatekeepers' for different sections of the story to make sure that these parts remain coherent ?
> - (Me) That's what we would call strong code ownership, this was the norm 20 years ago, but that the industry is moving to more collective code ownership, in order to decrease the bus factor.
> - (Him) What is the bus factor ?
> - (Me) The number of person who need to be hit by a bus to block your development progress
> - (Him) I see, that's kind of funny. But then, does that mean that any developer can change any part of the code ? Isn't that dangerous ?
> - (Me) Sure that would be difficult, that's not really how we do it. We make a lot of efforts to split the big story in many smaller independent ones as much as possible. This way, teams specialize on different 'chapters' and work collectively within it.
> - (Him) I see
> - (Me) And if you need to change something in another 'chapter' you should ask the guys who know it better to help you.
> - (Him) That makes sense. And what happens if two developers want to modify the same part of the story at the same time
> - (Me) That can happen. People might even want to modify the story in conflicting ways ! We've got tools, processes and best practices to minimize this. If nothing is done, we'll get what we call a 'merge conflict'.
> - (Him) Ho ... I wouldn't have guessed, but it seems collaboration is really important in your work, isn't it ?
> - (Me) Sure it is !

## We are software writers

All this reminds me of DHH's talk about writing software :

<iframe class="center" width="560" height="315" src="https://www.youtube.com/embed/9LfmrkyP81M" frameborder="0" allowfullscreen></iframe>
