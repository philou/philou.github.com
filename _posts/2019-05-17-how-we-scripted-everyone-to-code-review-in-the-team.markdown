---
layout: single
title: "How we scripted everyone to code review in the team"
date: 2019-06-20
comments: true
categories:
 - code reviews
 - change management
 - continuous improvement
 - team building
 - pair programming
 - mob programming
description: "Getting all the team to code review can be a real challenge. Here is the story of how a simple random review assigning tool nudged everyone to code review. It's also a story of continuous improvement. From painful manual code reviews to shared reviews to eventually synchronous pair programming."
header:
   teaser: /imgs/2019-05-17-how-we-scripted-everyone-to-code-review-in-the-team/code-reviews-for-all-teaser.jpeg
   og_image: /imgs/2019-05-17-how-we-scripted-everyone-to-code-review-in-the-team/code-reviews-for-all-og.jpeg
redirect_from:
 - /reviews-for-everyone
 - /reviews-for-everyone/
---
_Getting all the team to code review can be a real challenge. Here is the story of how a simple random review assigning tool nudged everyone to code review._

![Drawing of 4 members of a team thinking of Code Reviews together]({{site.url}}/imgs/2019-05-17-how-we-scripted-everyone-to-code-review-in-the-team/code-reviews-for-all.jpeg)

This is an old story, I wrote about it a long time ago, but I thought it deserved an overhaul.

It happened a few years ago, as I joined a team as an experienced developer. The team was mostly junior except one developer. They were trying to write tests and to do [code reviews](https://en.wikipedia.org/wiki/Code_review). Unfortunately, juniors did not feel they had the right to review other team members code. As a result, the only senior dev was crawling under code review, and had become a kind of 'clean code enforcer'.

It was not sustainable for him. He could not review all the code, and quality of reviews was suffering. As a consequence, the expected learning was not happening through reviews.

The project was ambitious, and we needed all the team to skill up.

## Championing code reviews

I remember reading [Karl Fogel](https://www.red-bean.com/kfogel/)'s, [Producing Free Open Source Software](https://producingoss.com/) at the time. He describes [public reviews](https://producingoss.com/en/setting-tone.html#code-review) as:

*   There should be at least one review for every commit
*   Anyone can review anyone’s code

That looked like a way to encourage sharing and learning.

To walk my talk, I started to code review myself every day. I would dedicate around 1 hour to code reviews every afternoon before I left.

![Photo of 2 children celebrating in front of a computer. Being a code review champion, as well as pair-code-reviews helped the team to understand the value of code reviews]({{site.url}}/imgs/2019-05-17-how-we-scripted-everyone-to-code-review-in-the-team/children-review.jpg)

To make juniors code review code as well, I started to ask them for to pair-review my code. That made them uneasy at first, but they soon saw the value of code reviews.

This was working better, but we were spending a lot of energy in the process. Some code was also still not reviewed. We raised the point in retrospectives.

## A simple script

[![Screenshot of 'Code Collaborator' our review tool at the time. The script plugged into code collaborator and our VCS to pick an code reviewer for every commit]({{site.url}}/imgs/2019-05-17-how-we-scripted-everyone-to-code-review-in-the-team/code-collaborator-small.jpg)]({{site.url}}/imgs/2019-05-17-how-we-scripted-everyone-to-code-review-in-the-team/code-collaborator.png)

The company was using an online code review tool called [Code Collaborator](https://smartbear.com/product/collaborator/overview/). The process was ok, but still not great. One Friday afternoon, I wrote a quick script to randomly pick a reviewer for every new commit.

(As it uses outdated tools, the script itself does not have much value today. Ask me if you want it though).

I demoed the tool to the team. As we had raised the issue in retrospective and the team agreed to give it a try.

> 💡 Maybe there's a simple script you could write to smooth out the code review process to make it catch on?

## The result

The tool caught on almost immediately. All the team was reviewing code, and all the code was reviewed. As a consequence, more interaction, more learning and more continuous refactoring was happening. We were writing more quality code, we had less bugs, less rework and the pace got more sustainable!

## Second order effect

The improvement mindset is at the core of code review. Good reviews should follow the motto: "That's great, and how can we make this even better?"

The team applied this improvement mindset to code reviews themselves. That's what people said in the next retro. "Reviews are great, but they are stealing time away from programming. Could we make this even better?"

I had been suggesting [pair programming](/categories/#pair-programming) for a few retros already, and they decided to give it a try... and it sticked! (If you want to read the end of the story, it's [here](/from-zero-to-pair-programming-hero/).)

> 💡 Losing time in code reviews made the team switch to pair programming.

I couldn't have expected that a simple script would nudge the team into pair programming. But that's [how complex systems behave](/how-we-increased-productivity-by-25-with-a-fruit-basket-at-work/), don't they?

![Images of neurons. Complex systems are unpredictable, and I had no idea that adding the code review script would bring the team to pair programming]({{site.url}}/imgs/2019-05-17-how-we-scripted-everyone-to-code-review-in-the-team/nerves.jpg)

## DIY

If you are in the situation where only a few people review code, give this a try. The script only took me about 2 hours to write. Tooling is different now, so it might be even shorter today.

Why not be even bolder though and skip a few steps? Start every day with mob-code-reviews as [Carlos Matias suggests!](https://hackernoon.com/why-you-should-do-code-review-e2642cfd1667)
