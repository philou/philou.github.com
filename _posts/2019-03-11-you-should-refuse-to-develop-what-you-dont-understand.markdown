---
layout: single-mailing-list
title: "You should refuse to develop what you don't understand"
author: Jonathan Boccara
date: 2019-04-18
comments: true
categories:
 - programming
 - BDD
 - badass-developer
description: "Understanding is key to building quality software. In this guest post, fluentcpp blogger Jonathan Boccara presents 3 levels of understanding we should go through before we start coding. #1 Why something doesn’t work. #2 Why something works. #3 Why you do this project of feature."
header:
   teaser: /imgs/2019-03-11-you-should-refuse-to-develop-what-you-dont-understand/why-why-why-teaser.jpeg
   og_image: /imgs/2019-03-11-you-should-refuse-to-develop-what-you-dont-understand/why-why-why-og.jpeg
---
_Understanding is key to building quality software. Here are 3 levels of understanding we should go through before we start coding._

![Drawing of someone wondering 'why' 3 times. Understanding the why of features is key to being an effective programmer]({{site.url}}/imgs/2019-03-11-you-should-refuse-to-develop-what-you-dont-understand/why-why-why.jpeg)

Since the beginning of the year, I've had the position of a team lead/manager/dev lead, call this what you want, but I'm essentially in charge of a module as well as the team of developers that work on it.

This position is giving me a new point of view on software development projects as I'm involved in more projects and take more part to the decision processes. Recently a new insight has clicked in my mind thanks to this, about how much **understanding** shapes the code and the application.

My point is that the quality of the code (and of the software) is closely related to how much the people that write and design it understand what they're doing.

Okay, you may think: "Duh! Of course we'd better understand the code we're writing, otherwise we might as well [hire monkeys](https://en.wikipedia.org/wiki/Infinite_monkey_theorem) to type away some random code and be done with it!".

![Photo of a monkey typing at a laptop]({{site.url}}/imgs/2019-03-11-you-should-refuse-to-develop-what-you-dont-understand/monkey.jpg)

And you'd be right. Therefore, I'll assume that you already realize that understanding what you're doing is important. This is like Understanding level #0, and we won't dig into that. What we'll get into is _what_ is necessary to understand, and how this affects the _decisions_ you take on a daily basis. Knowing this beforehand would have saved me a huge amount of time and dubious code.

Even if we won't see one line of code today, I consider what follows to have a big impact of the quality of the code and on how expressive it is.

## **Understanding level #1: Understand why something doesn't work**

This first level of understanding comes fairly early in a developer's career, sometimes even without being taught (or at least that's what I've observed around me).

Imagine you receive a bug report: a feature is broken in the application, and you need to fix it. How do you go about it?

The classical pattern is:

1) you locate the guilty code (how you do _that_ is a separate topic which I talk about in my book about legacy code),

2) you make a change in that code,

3) you check that the bug is fixed and that you didn't cause regressions in other use cases.

Let's focus on part 2): "you make a change in that code". There are two approaches to do this: the first one is to understand exactly what is going on with the current code, locate the error and correct it.  The second one is to grope around: maybe add a +1 to the stopping condition of a for loop, relaunch the use case to see if it worked, if not try something else, and so on.

The right approach is the first one. As Steve McConnell explains in its fundamental book [Code Complete](https://www.amazon.com/gp/product/0735619670/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0735619670&linkCode=as2&tag=fluentcpp-20&linkId=d5740a1b637d19f7324be8302bc12b6b) (highly recommended reading!), whenever you change the code, you must be able to predict with confidence the effect of your change on the application. If a fix doesn't affect the application the way you thought, this must be a troubling feeling for you, that almost requires you to put yourself in question (my rewording, can't put my finger on the quote in the book)_._

[![Cover of Steve McConnell's classic book Code Complete]({{site.url}}/imgs/2019-03-11-you-should-refuse-to-develop-what-you-dont-understand/code-complete.jpg)](https://www.amazon.com/gp/product/0735619670/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0735619670&linkCode=as2&tag=fluentcpp-20&linkId=d5740a1b637d19f7324be8302bc12b6b)

In short, to produce a robust fix that won't damage the quality of the code, you must be sure to have a good understanding of the code and the source of the problem.

## **Understanding level #2: Understand why something works**

The second level of understanding is less intuitive that the previous one. My manager had to teach it to me back when I started as a professional developer, and I've had to teach it to younger developers over the years.

This time, say that you receive **two** bug reports at the same time: the first one describes use case A, and the second one describes use case B. Both don't behave the way they should.

So you go on to fix the first the bug in the first use case. Using understanding level #1, you take the time to get a detailed understanding of the involved code, realize why that code makes use case A behave the way it does, and make a sane fix that corrects use case A exactly the way you predicted. All good.

Now you move on to use case B. You test to check that you reproduce use case B and, surprise, use case B now works correctly! To make sure, you revert the fix you've made for use case A, and the bug for B reappears. Your fix has corrected both issues. Lucky you!

You weren't expecting it. You designed your fix for use case A, and you're not sure why it worked for use case B too.

{% assign figure_path="/imgs/2019-03-11-you-should-refuse-to-develop-what-you-dont-understand/cargo-cult.jpg" | absolute_url %}
    
{% assign figure_alt="A photo of people sitting in front of a 'Cargo Cult' wooden plane" %}
    
{% capture figure_caption %}
[Wikipedia: A cargo cult](https://en.wikipedia.org/wiki/Cargo_cult) is a belief system among members of a relatively undeveloped society in which adherents practice superstitious rituals hoping to bring modern goods supplied by a more technologically advanced society.
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

At this moment, it is very tempting to consider the job done for both bug reports. This is the natural thing to do: after all, the point was to correct the two use cases, wasn't it?

But the work is not finished: you still need to understand why your fix corrected use case B. Why? Because it may have corrected it for a **bad reason**, and you do need to make another fix. Bad reasons include:

*   by not making the right fix for use case B, you could have broken use case C without realizing it,

*   maybe there is _another_ bug related to the feature, and your fix somehow corrects B by relying on it. Use case B looks good now, but the day that other bug gets fixed, that will break use case B again and perhaps more.

All those reasons make the code inconsistent, and this will come back to bite you later on, probably when it's not a good time. It takes some will to keep spending time understanding why everything seems to work correctly, but that understanding pays off.

## **Understanding level #3: Understanding why you make a development project**

This is the understanding level that clicked for me recently, and probably the one that could have had the more impact if I had fully realized it earlier.

To illustrate this, consider the following example: your module needs to be compatible with feature X. You don't know much about feature X, but you're told that to be compatible with feature X, you must implement the framework F. Other modules compatible with feature X also implement framework F.

Your code has lived all its life away from framework F, and implementing framework F is not an easy thing to do. It has profound implications on some of the features of your module. But you dive into the development regardless, spend weeks developing, testing, demoing, getting feedback, correcting regressions, discovering unpredicted issues, going over the initial estimates, developing some more, testing, getting feedback, correcting regressions, all this striving to implement framework F.

And at some point, you realize, or someone tells you, that maybe implementing framework F wouldn't make your module compatible with feature X after all. Maybe all that time, sweat and code weren't done the right direction.

Something like this happened to one of the projects I was responsible for. How did that happen? Because I wasn't familiar with feature X and with its link to framework F. What should I have done? Understand the exact reason to implement framework F. Ask whoever was requesting the development the exact link between the project and the desired outcome, and not do it just because other modules do, or trust someone that it would make feature X work.

The same issues can happen with user facing tasks. Sometimes we are asked to code something without being told what’s the user need behind. If we knew the user need, we might be able to come up with better alternatives. We might even find a solution that does not require to code anything!

{% assign figure_path="/imgs/2019-03-11-you-should-refuse-to-develop-what-you-dont-understand/I_am_Badass.jpg" | absolute_url %}
    
{% assign figure_alt="A close up on a fist wearing a ring written 'I am Badass'. Badass programmers know when to say 'No'" %}
    
{% capture figure_caption %}
By [Brooke Lark](https://unsplash.com/@brookelark) on [Unsplash](https://unsplash.com/photos/jtvGydbUn30)
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

What I learned in that project is this: **we should refuse to start a development if we don't have a clear understanding of why we are requested to do it**. Plainly refuse it. It is tempting to start a project as soon as possible in order not to waste time. But blocking its start until we understand its implications can save time on another order of magnitude.

Even if someone pressures you to start a development and you don't understand the detailed rationale, resist. Understand why they want you to do it first, and then decide if this is the right development to do.

I've learned it the hard way, I hope reading this can benefit you too.

## **Understanding level #4: ?**

There is a lot to learn in software engineering, and surely I'm not so far past scratching the surface on the topic of understanding.

What other levels of understanding have you come to realize along your years of experience? What decisions had a positive result on the quality of your codebase and your application? What decisions had a negative impact and were useful to learn from?

Share your experience in the comment sections below.
