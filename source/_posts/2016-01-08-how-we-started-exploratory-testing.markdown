---
layout: post
title: "How We Started Exploratory Testing"
date: 2016-01-08 18:18
comments: true
categories:
 - workplace
 - testing
 - agile
keywords: "manual testing, exploratory testing, automated testing, agile, sprint"
description: "Explanation of how we started to do exploratory testing and how we are now doing it systematically"
---
Manual testing is important. Here is how we got to love exploratory testing.

{% img center /imgs/2016-01-08-how-we-started-exploratory-testing/explore.jpg A map and a telescope for exploration %}

## Initial situation

[At work](http://www.murex.com) we are building a risk computation engine for the financial markets. It uses a DSL to describe the exact computations to estimate the risk on the data it knows. This in itself is already complex enough to justify the heavy investment in automated testing we did.

With 90% of automated test coverage, Cucumber scenarios to verify quality, everything should just work ... shouldn't it ?

## First try at exploratory testing

[{% img center /imgs/2016-01-08-how-we-started-exploratory-testing/art-of-agile-development.jpg The cover of the Art Of Agile Development %}](http://www.amazon.com/Art-Agile-Development-James-Shore/dp/0596527675/ref=sr_1_1?ie=UTF8&qid=1452279644&sr=8-1&keywords=the+art+of+agile+development)

In [The art of agile development](http://www.amazon.com/Art-Agile-Development-James-Shore/dp/0596527675/ref=sr_1_1?ie=UTF8&qid=1452279644&sr=8-1&keywords=the+art+of+agile+development), James Shore details the practice of exploratory testing as a great way of both :

* improving the quality of the product by finding bugs
* improving the process

That's why we gave it a try. Here is the recipe for an exploratory session :

1. Book 1 hour for the full team to do exploratory testing
2. Prepare a downloadable zip with all the material required to run and test your software
3. Ask everyone to pick a particular aspect of the system to test during this session
4. Record bugs when you find one
5. Spend 30 minutes just after the session to filter duplicate bugs and make sure they are well described

Obviously, we also added our special sauce

1. We were to do exploratory testing in pairs, as we do programming, to find more bugs
2. We gamified it by granting a price to the pair that finds the most bugs. Do you remember how I brought [fruits for sale in the office](/how-to-setup-a-weekly-fruit-basket-in-no-time/) ? It turns out we are slowly earning money with the fruits ... enough for the price to be 5 fruits each for the wining pair !

This transformed developers into ferocious testers ! I guarantee that with such incentives you'll find bugs ... as we did.

[{% img center /imgs/2016-01-08-how-we-started-exploratory-testing/fruits-basket.jpg Our weekly fruit basket at work %}](/how-to-setup-a-weekly-fruit-basket-in-no-time/)

## Doing it systematically

We took some time to fix all these bugs during a few sprints. And did another exploratory testing session a few months after ...

As we were still finding bugs in the second session, we decided to make them part of the every sprint. As we got better at testing, a lot of bugs started to get uncovered ! So much that we had to change something.

## Improving our process

We meet in retrospective and here is what we decided :

1. Fix all bugs before working on any other story (obviously, automated tests are added in the process)
2. Classify what exactly is a bug. For example, for us, a bug is something that used to work or silently returns bad results or corrupts the data
3. Add exploratory testing by another pair to our definition of done

The number of bugs we find during exploratory testing sessions is starting to decrease. We hope that we'll soon be able to do exploratory testing on the fly, as part of our daily work and to completely remove the specific sessions.

## Benefits

Exploratory testing brought us a lot.

* Obviously, the product is a lot more solid
* We are surely saving time that would have been lost if the bugs had been uncovered by the users
* Fixing the bugs forced us to fix some technical debt : bugs often came from areas of the code that we were not so proud or confident of

Exploratory testing is a nobrainer. All teams should do it.

So, in the end, as in the old days, we are back to regular manual testing ... but only for exploration.