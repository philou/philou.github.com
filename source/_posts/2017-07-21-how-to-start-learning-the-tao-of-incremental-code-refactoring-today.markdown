---
layout: post
title: "How to start learning the tao of incremental code refactoring today"
date: 2017-07-21 08:05
comments: true
categories: 
 - programming
 - refactoring
 - extreme programming
 - learning
keywords: "Refactoring, Incremental Refactoring, eXtreme Programming, TDD, Programming, Software"
description: "Things to do to become better at code refactoring"
---
In my [last post](/7-reasons-why-learning-refactoring-techniques-will-improve-your-life-as-a-software-engineer/), I explained why incremental refactoring techniques will make you both more productive and relaxed.

As anything worth its salt, the path to full mastery is long and requires dedication. The good news is that you'll start to feel the benefits long before you are a master.

## Dedicated Practice

The quickest thing that will get you up to speed is dedicated practice. Take some time to do some exercices outside of any 'production' code.

### TDD Coding Katas

The most famous practice to learn TDD also works very well to learn refactoring. That shouldn't be a surprise as incremental refactoring is an integral part of TDD.

There are many ways to do your first coding kata. You could find a coding dojo near you (ask [meetup.com](https://www.meetup.com/)). Or you could find motivated colleagues to start one at your company ... I wrote in more details about how to attend a coding dojo in [this post](/from-apprentice-to-master-how-to-learn-tdd-test-driven-development/).

[![Emily Bache's Coding Dojo book cover]({{site.url}}/imgs/2017-07-21-how-to-start-learning-the-tao-of-incremental-code-refactoring-today/coding-dojo.jpg)](https://www.amazon.com/gp/product/919811803X/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=919811803X&linkCode=as2&tag=pbourgau-20&linkId=340ea938a5e4f00178676804ac6c2278)

You can also practice katas on your own. My friend [Thomas Pierrain](https://twitter.com/tpierrain) rehearses the same katas to discover deeper insights.

### Refactoring Golf

The goal of incremental refactoring is to keep the code production ready all the time. Smaller commits is one happy consequence of that.

You can stretch your refactoring muscles by doing coding katas and keeping the code compiling all the time. You'll need to master your IDE and its automated refactoring. Most of all, it will shift your attention from the goal to the path !

I learned at [SPA conference](https://www.spaconference.org/spa2017/) that we call this 'Refactoring golf'. The name comes from Golf contests, [popular in the Perl community](http://wiki.c2.com/?PerlGolf). Their goal is to write the shortest program possible to do a specific goal. The goal of a Refactoring Golf is to go from code A to code B in the fewest transformations possible.

They are a few [refactoring golf repos on Github](https://github.com/search?utf8=%E2%9C%93&q=refactoring+golf&type=), I tried one and found it fun ! Give it a try too !

## Study some theory

Real mastery does not come by practice alone. Studying theory alongside practice yields deeper insights. Theory enables to put your practice into perspective and to find ways to improve it. It saves you from getting stuck in bad habits. It also saves you from having to rediscover everything by yourself.

### Develop your design taste

In [Taste for Makers](http://www.paulgraham.com/taste.html) Paul Graham explains why taste for is fundamental to programming. Taste is what allows you to judge if code is nice or bad in a few seconds. Taste is subjective, intuitive and fast, unlike rules which are objective but slower. Expert designers use taste to pinpoint issues and good points in code on the spot.

Within the fast TDD - Refactoring loop, taste is the tool of choice to drive the design. Guess what : we can all improve our design taste !

[Code smells](https://blog.codinghorror.com/code-smells/) are the first things to read about to improve your design taste. Once you know them well enough, it will be possible to spot things that might need refactoring as you code.

Spotting problems is nice, but finding solutions is better ! [Design Patterns](https://en.wikipedia.org/wiki/Software_design_pattern) are just that ... There has been a lot of controversy around Design Patterns. If overusing them leads to bloated code, using them to fix strong smells makes a lot of sense. There is even a book about the subject :

[![Joshua Kerievsky's Refactoring To Patterns book cover]({{site.url}}/imgs/2017-07-21-how-to-start-learning-the-tao-of-incremental-code-refactoring-today/refactoring-to-patterns.jpg)](https://www.amazon.com/gp/product/0321213351/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0321213351&linkCode=as2&tag=pbourgau-20&linkId=d79d093008fb9e77f75ea2089d6cbdae)

Finally, there's a third and most common way to improve our design taste. It's to read code ! The more code we read, the better our brain becomes at picking small clues about what nice and what is not. It's important to read clean code but also bad code. To read code in different languages. Code built on different frameworks. 

So, read code at work, read code in books, read code in open source libraries, good code, legacy code ...

### Learn your refactorings

As with most topics in programming there is a reference book about refactoring. It's Martin Fowlers's [Refactoring, improving the design of existing code](https://www.amazon.com/gp/product/0201485672/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0201485672&linkCode=as2&tag=pbourgau-20&linkId=73fc09a5a451402a7036509ae62e8c66). Everything is in there, smells, unit testing and a repository of refactoring walkthroughs.

[![Martin Fowler's refactoring book cover]({{site.url}}/imgs/2017-07-21-how-to-start-learning-the-tao-of-incremental-code-refactoring-today/refactoring.jpg)](https://www.amazon.com/gp/product/0201485672/ref=as_li_tl?ie=UTF8&camp=1789&creative=9325&creativeASIN=0201485672&linkCode=as2&tag=pbourgau-20&linkId=73fc09a5a451402a7036509ae62e8c66)

The book is said to be a difficult read, but the content is worth gold. If you have the grit, give it a try ! At the end, you should understand how your IDE does automated refactoring. You should also be able to perform all the refactorings that your IDE does not provide by hand ! This will enlarge your refactoring toolbox, and help you to drive larger refactorings from A to B.

## Develop a refactoring attitude

Practice makes perfect. Whatever our refactoring skill, there is something to learn by practicing more.

### Make it a challenge

As you are coding, whenever you find a refactoring to do to your code, make it a challenge to perform it in baby steps. Try to keep the code compiling and the tests green as much as possible.

When things go wrong, revert instead of pushing forward. Stop and think, try to find a different path.

If you are pairing, challenge your pair to find a safer track.

This might delay you a bit at first, but you'll also be able to submit many times per day. You'll see that your refactoring muscles will grow fast. You should see clear progress in only 1 or 2 weeks.

### Team up against long refactorings

If your team prioritizes a user story that will need some re-design, try to agree on a refactoring plan. The idea is to find a coarse grain path that will allow you to commit and deliver many times. This plan might also help you to share the work on the story.

Having to question and explain your assumptions will speed up your learning. 

## Legacy code

Refactoring is most useful with bad legacy code. Unfortunately, it also where it is the most difficult. Next week's blog post will be about what we can do to learn how to refactor legacy code.

That was my second post in this mini-series about refactoring. First one was [7 Reasons Why Learning Refactoring Techniques Will Improve Your Life as a Software Engineer](/7-reasons-why-learning-refactoring-techniques-will-improve-your-life-as-a-software-engineer/). The third and last is [10 things to know that will make you great at refactoring legacy code](/10-things-to-know-that-will-make-you-great-at-refactoring-legacy-code/)
