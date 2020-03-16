---
layout: single-mailing-list
title: "How to get your team to do code reviews"
date: 2017-04-19 09:18
comments: true
categories:
 - code reviews
 - best practices
 - programming
 - continuous improvement
keywords: "Code reviews, Change management, Programming, Team work, Working agreements, Continuous Improvement"
description: "A walkthrough of a few strategies that can be used right now to get your team to do regular code reviews"
---
As software developers, we very ~~always~~ often get to work in code bases that are not perfect. In this situation we have 3 choices : leave, grumble, or make some changes ! Team wide code reviews are a recognized way to increase the quality of the code.

Unfortunately, installing code reviews as part of the daily work habits of a team can be very challenging. When I joined my team 3 years ago, no one was doing any kind of code reviews. With a small push here and there, I managed to get the team to adhere to a strict 4 eyes principle (full story [here](/from-zero-to-pair-programming-hero/)).

Here are a few strategies that I have either used or seen that should get your team mates to do code reviews.

## Overall principle

Even if you are at the bottom of the org chart, you have far more influence than you would first think. My favorite way of bringing change is to demonstrate a valuable practice :

* First, you need to be trustworthy
* Then, do the practice you want to introduce
* Make sure it is seen as valuable
* Be ready to forgo the credits of the introduction of the practice
* Keep on until people start to copy what you are doing

As [someone famous](http://quoteinvestigator.com/2010/12/21/doing-good-selfless/) said
> A man may do an immense deal of good, if he does not care who gets the credit

I won't go in the details about how to be trustworthy, which could be a post of its own. Basically, putting our customers interests first, speaking the truth and avoiding to appear dogmatic can get us a long way already. [The Clean Coder](https://www.amazon.fr/dp/B0050JLC9Y/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1) is an excellent read on the subject.

[![Front cover of the Clean Coder book]({{site.url}}{{site.baseurl}}/imgs/2017-04-19-how-to-get-your-team-to-do-code-reviews/clean-coder.jpg)](https://www.amazon.fr/dp/B0050JLC9Y/ref=dp-kindle-redirect?_encoding=UTF8&btkr=1)

## Strategies

### If you have retrospectives in place

In this case, you already have a place and time dedicated to discussing changes to your working agreements. Expressing your concerns about code quality (or another problem related to code reviews) and suggesting code reviews as a way to fix that problem might get a quick team buy-in.

If you don't manage to get a definitive buy-in, try to get the team to 'beta-test' code reviews for a while. If the experiment demonstrates value, it will convert into a full fledged working agreement.

### If you practice collective code ownership

Unfortunately, if you don't have retrospectives in place, or if you did not manage to get your team to discuss code reviews in retrospectives, yo'll need to find another way to introduce them.

If you have collective code ownership, it should be ok to comment on your team mates code (if not, jump directly to the next strategy). In this setting, just start to do some code reviews for others ! Make sure your reviews are helpful and 'nice'.

You'll need to stick to doing code reviews long enough before people actually start to mimic you. Reserve some time in your daily agenda for code reviews. Your goal is to win over people, so it might be a good idea to start with a selected few at the beginning, preferably people who are more likely to jump in. If asynchronous (tool based) reviews don't get answered, be ready to fallback to face to face discussions : review on your own, then just ask the author for a few minutes so that you can discuss his change. When you feel someone is interested by your reviews, ask him to review your own code in return.

Remember to always try to get some feedback : ask people what they think of the exercise, keep note of the good points, and adapt to smooth out the rest.

{% assign figure_path="/imgs/2017-04-19-how-to-get-your-team-to-do-code-reviews/collective.jpg" | absolute_url %}

{% assign figure_alt="Illustration of a team working collectively" %}

{% capture figure_caption %}
Photo from [emotuit](https://www.emotuit.com/blog)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

Once you won over your first team mate, involve him in your grand plan to spread the practice, explaining how much you think this could make a difference. As more and more people get convinced, the practice will eventually tacitly become part of your working conventions.

Depending on your context, this might take more or less time. I said it was possible, I never said it would be easy ! Grit, patience and adaptation are key here.

### Otherwise

This is the worst starting point, basically, you have nothing yet. The strategy is very similar to the one with collective code ownership, with a different first move.

Instead of providing code reviews to your team mates, start by walking over to them to ask for a face to face code review of your own commits. Use the same tactic as stated before : stick to the same people at first. Once the practice starts to stick within this group, bring in a basic tool to ease up the process.

At some point, you should be asked to review others code, that's a good sign ! If not, try again with other people.

Continue using the same strategy as with collective code ownership and you should eventually get there !

### When it does not seem to stick

There could be many reason why the practice is not adopted. The key for you is to understand why and to adapt your strategy. The reason is often that the perceived value is not big enough, for example :

* the team is not aware of its problems that reviews would fix : try to make them more visible
* reviews are seen as too expensive or painful : try better tools or taking more on yourself
* the team has bigger problems to fix first : spend your energy on these first !
* reviews just don't work in your context (ex: your job is to write one time, throw away code) : it's up to you to stay or leave !

## Tools

There are a ton of tools and best practices to run code reviews. It's important that you know them, so that you know where you are going.

Don't expect to use the best tools from the start though. At the beginning, your goal is to win over your team mates. In this context, only 2 things matter :

* It should have almost no adoption curve, so that others start using it
* It should have almost no maintenance cost, as you don't want to spend your time doing that

That's why at the beginning, low tech tools are so great. Spending a month setting up a top notch code review system before the first review won't work. If your VCS has code reviews built-in, by all means use it ! Otherwise, diff in mails and face to face conversations are a good starting point. You'll later hook something in your VCS to automatically send mails with commit diffs ...

As people gradually get convinced of the value of code reviews, regularly meet and discuss a better setup. This is how you'll introduce state of the art tools and agree on refinements such as pre or post commit reviews.

### Best practices

As a code review champion, it's very important that you provide great reviews to your team mates. You must become the local expert on the subject ! You don't want all your efforts to be ruined because one of your reviews has been perceived as aggressive.

[![A slide from Atlassian presentation about styles of code reviews]({{site.url}}{{site.baseurl}}/imgs/2017-04-19-how-to-get-your-team-to-do-code-reviews/atlassian.jpg)](https://static.rainfocus.com/oracle/oow16/sess/1473264722807001CoS2/ppt/code-reviews-vs-pull-requests.pdf)


There is a ton of resources on the internet about how to perform good code reviews, here are a few :

* [Maria Khalusova](https://twitter.com/mariakhalusova)'s talk at Devoxx 2016 [How to stop wasting your time and start performing useful code reviews](https://www.youtube.com/watch?v=-tcy4z0hszg)
* [Tim Pettersen](https://medium.com/@kannonboy/) from [Atlassian](https://www.atlassian.com) talked about [Code Reviews vs Pull Request](https://static.rainfocus.com/oracle/oow16/sess/1473264722807001CoS2/ppt/code-reviews-vs-pull-requests.pdf) at JavaOne 2016
* [Marco Troisi](http://marcotroisi.com/) wrote an extensive blog post about [How to run code reviews in your dev team's workflow](http://marcotroisi.com/how-run-code-reviews-in-your-workflow/)
* [Joel Kemp](https://medium.com/@mrjoelkemp)'s post [Giving better code reviews](https://medium.com/@mrjoelkemp/giving-better-code-reviews-16109e0fdd36)
* Gareth Wilson's post [Effective Code Reviews – 9 Tips from a Converted Skeptic](https://blog.fogcreek.com/effective-code-reviews-9-tips-from-a-converted-skeptic/)

## What's next ?

Congratulations ! Your team will start to reap the benefits of code reviews. Keep on improving the practice !

To end the story, after a few months of code reviews, during a retrospective, my team ([at work](http://www.murex.com/)) decided to take it one step further and started to do almost full time pair programming ;-)
