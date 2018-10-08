---
layout: single
title: "A Plan For Technical Debt (Lean Software Development Part 7)"
date: 2015-08-20 17:11
comments: true
categories:
 - agile
 - lean
 - software
 - technical debt
 - planning
 - mikado-method
keywords: "Lean, Software, Software Development, Agile, Technical Debt, Planning, Estimation"
description: "I explain ideas I have to better manage technical debt"
---
The sad truth :

> The [technical debt](http://en.wikipedia.org/wiki/Technical_debt) metaphor does not help me to fix it.

![A desperate man counting his debts]({{site.url}}{{site.baseurl}}/imgs/2015-08-20-a-plan-for-technical-debt-lean-software-development-part-7/debt.jpg)

Here is my modest 2€ plan about how to try to get out of this.

## Why does the metaphor fall short ?

The debt comparison effectively helps non programming people to understand that bad code costs money. Unfortunately, it does not tell you how much. As a consequence, deciding whether it's best to fix the technical debt or to live with it remains a gut feeling decision ~~(aka programmers want to stop the world and fix all of it while the product owner wants to live with it)~~.

They are very good reason why we cannot measure how much the technical debt costs :

* It is purely subjective : bad code for someone might be good code for another. Even worse, as you become a better programmer, yesterday's master piece might become today's crap. More often, as a team gains insight on the domain, old code might suddenly appear completely wrong ...
* Tools such as Sonar only spot the a small part of the debt. The larger part (design, architecture and domain) remains invisible
* Finally, non-remediation cost (the time wasted working on the bad code) is often overlooked and very difficult to measure : it depends on what you are going to work in the future !

No surprise it's difficult to convince anyone else why fixing your debt is a good investment.

[![A dilbert cartoon about a programmer killed by technical debt]({{site.url}}{{site.baseurl}}/imgs/2015-08-20-a-plan-for-technical-debt-lean-software-development-part-7/dilbert.jpg)](http://www.dilbert.com)

## The Plan

In the team, we usually try not to create debt in the first place. We have strong code conventions and working agreements. We are doing a lot of refactoring in order to keep our code base clean. But even with all this, debt creeps in :

* a pair worked on something and did not know that there is another part of the system that does roughly the same thing
* we understand something new about the domain and some previously fine code becomes debt !
* like all programmers, we are constantly in a hurry, and sometimes, we just let debt through
* ...

If the required refactoring is small enough, we just slip it inside a user story and do it on the fly. The real problem comes larger refactorings.

The strategy to deal with those is to get estimations of both the remediation and non-remediation costs. This way, the technical debt becomes an investment ! Invest X$ now and receive Y$ every month up to the end of the life of product. Provided you have the Cost Of Delay of the product, you can estimate the cost of delay of this individual technical debt fix. For example :

* Let's define the product horizon as its expected remaining life span at any moment
* Suppose the product has a 5 years (60 months) horizon
* Suppose the Cost Of Delay of the full product is 150K€/month
* Suppose that the technical debt costs 10 days (0.5 month) to fix
* Suppose that that once fixed, you'll save 2 days (0.1 month) of work per month
* By doing the fix now, at the end of the 5 years, you would have saved : _(60 - 0.5) * 0.1 - 0.5 = 5.45 months_
* Using CoD, this ammounts to : _5.45 * 159K = 817.5K €_
* Dividing by the number of months, we finaly get the CoD for this technical debt fix : _817.5K / 60 = 13 625 €/month_

This can be compared to the CoD of other backlog items, allowing us to prioritize large refactorings as we would of any feature or story.

One nice thing about this is that it not only helps to know if a refactoring is cost effective, but also when is the best moment to do it. As the CoD of the refactoring is proportional to inverse of the product horizon, a premature refactoring for a startup product might become a real bargain after the product has settled as a market leader. Here are examples of possible product horizons :

Context | Horizon
--------|--------
Startup | 6 months
3 years old company | 3 years
Market leading product | 10 years
Aging System | 5 years
Legacy System | 2 years

<br/>

Oh, and just one more thing ... prioritizing technical debt fixes in your backlog will create some real time to focus on and only on refactoring, reducing task switching and saving even more time.

All this sounds great ! There's just one last little thing : how do we get estimations of both costs of the technical debt ?

## Idea 1 : Collective Estimations

When I attended Donald Reinertsen's training, I asked him the question and he answered :

> I'd gather the top programmers in a room and I'd make them do an estimation of both costs.

So I asked my team if they wanted to do the following :

1. whenever you spot a large piece of debt, create a JIRA issue for it
2. at the end of your next sprint planning session, go through all your technical debt issues, and for each
    1. estimate the remediation cost in story points
    2. estimate the non-remediation cost on the coming sprint, taking the prioritized stories into account
3. using the ROI horizon for every issues, collectively decide which one to tackle and add them to the sprint backlog

To keep the story short, it did not stick. I bet it was just too boring.

## Idea 2 : Technical Debt Code Annotations

During a retrospective, we discussed marking technical debt directly in the code to decide when to fix it. I created 2 code annotations so that this can be done. Here is an example of some identified technical debt :

```java
public final class Transformers {

   private Transformers() {
   }

   @TechnicalDebt(storyPoints = 8, description =
     "We need to find a way to do all the ast rewriting before staring the analysis", wastes = {
     @Waste(date = "2015/05/14", hours = 16, summary =
       "For union, we lost quite some time identifying which transformers were not copying the full tree")})
   public static AstNode analyzeAst(AstNode ast) {
     ...
```

The @TechnicalDebt annotation identifies areas of the code that could be improved.
The @Waste annotation is a way to log time wasted because of this bad code.

By comparing the time to fix the technical debt and the flow of extra work it incurs, we should be able to more easily justify and prioritize these in our backlog.

We are thinking of writing a sonar plugin to keep track of this technical debt right in our [Sonar dashboard](http://www.sonarqube.org/). It would :

* create a technical debt item in sonar for every @TechnicalDebt annotation found in the code
* link it with a mirror technical debt issue in JIRA
* use the story points we entered in the annotation as remediation cost
* extrapolate the non remediation cost by the sum of wasted hours registered during the last month

We just started using those, and I cannot give enough feedback for the moment. I bet not enough @Waste items will be entered though ... again, it might just be too boring

[![A screenshot of Sonar Qube Sqale technical debt plugin]({{site.url}}{{site.baseurl}}/imgs/2015-08-20-a-plan-for-technical-debt-lean-software-development-part-7/sonar-sqale.jpg)](http://www.sonarqube.org/)

## Idea 3 : Sonar and IDE Plugins

If it's too boring to add @Waste annotations in the code, it might be easier to have an IDE plugin with 1 big button to register some time wasted on the local @TechnicalDebt zone.

Pushing things a bit further, it might even be possible to estimate non remediation cost by having a look at what files are read the more, what files are triggering the more test failures when changed, etc.

Unfortunately, that's a long shot, we're definitely not there yet !

## Possible Improvements

### The Mikado Method

Whether you've got these estimations or not, it's always a good practice to learn how to  use the [mikado method](https://mikadomethod.wordpress.com/2010/02/02/the-mikado-method-in-under-a-minute/). It's great to split a refactoring into smaller part and spread them over many sprints.

The pill is easier to swallow for everyone, and it keeps the code releasable at any given time.

### Decision Rule

Provided you have :

* Product CoD
* Top Features CoD
* Product horizon

You could easily come up with a [decision rule](/you-dont-have-to-ask-your-boss-for-a-fast-build-lean-software-development-part-6/) to help us prioritizing technical debt more quickly, without the need for a formal planning.

## References

* [Identifying and Managing Technical Debt](http://fr.slideshare.net/zazworka/identifying-and-managing-technical-debt)
* [Managing Technical Debt](http://www.amazon.com/Managing-Software-Debt-Inevitable-Development/dp/0321948610/ref=sr_1_2?tag=pbourgau-20&amp;ie=UTF8&qid=1433246385&sr=8-2&keywords=managing+technical+debt)

This was part 7 of my [suite of article about Lean Software Development](/the-flow-book-summary-lean-software-development_part_1/), Part 6 was [You don't have to ask your boss for a fast build](/you-dont-have-to-ask-your-boss-for-a-fast-build-lean-software-development-part-6/), Part 8 will be [How I'll Measure the Lean Startup Value of Information in My Next Side Project](/how-ill-measure-the-lean-startup-value-of-information-in-my-next-side-project-lean-software-development-part-8/)
