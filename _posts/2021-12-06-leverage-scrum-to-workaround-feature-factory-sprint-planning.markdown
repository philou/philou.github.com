---
layout: single-mailing-list
title: Leverage Scrum to workaround feature-factory sprint planning
date: 2021-12-09
comments: true
categories:
- agile
- coaching
- scrum
- continuous improvement
- technical debt
- refactoring
description: "Is 'Business Value' the only thing that matters for sprint plannings? Wouldn't it be great if the team could manage most of the technical work on its own? Definition of Done, Forecast instead of commit, and Planning Poker are Scrum practices that will buy developers some time for technical work!"
header:
  teaser: "/imgs/2021-12-06-leverage-scrum-to-workaround-feature-factory-sprint-planning/sprint-planning-teaser.jpg"
  og_image: "/imgs/2021-12-06-leverage-scrum-to-workaround-feature-factory-sprint-planning/sprint-planning-og.jpg"
variations:
- Non-developers are usually not aware of the importance of technical practices #technicalAgile #agile #scrum #agileCoaching
- Surprisingly, even teams officially using Scrum overlook technical work! #technicalAgile #agile #scrum #agileCoaching
- Discuss the Definition of Done outside the context of the current stories and urgencies in order to make time for technical work #technicalAgile #agile #scrum #agileCoaching
- Scrum changed its wording from "commitment" to "forecast." Use this to find time for technical work. #technicalAgile #agile #scrum #agileCoaching
- Stay on your guards towards the end of sprints! This is when it's all too easy for humans to default to ship-at-all-cost mode! #technicalAgile #agile #scrum #agileCoaching
- One benefit of story points is that it makes micromanaging man-days more difficult! #technicalAgile #agile #scrum #agileCoaching
- Used well, story points estimates increase the team's control over its time. #technicalAgile #agile #scrum #agileCoaching
- With story points, time for recurring unplanned work is automatically reserved #technicalAgile #agile #scrum #agileCoaching
- When the team finishes its sprint stories, it should work on improvements, not on new stories! #technicalAgile #agile #scrum #agileCoaching
- Here are Scrum-Aïkido techniques that should get us a long way into finding time for technical work. #technicalAgile #agile #scrum #agileCoaching
- Unfortunately, there will be times when we will unearth large technical tasks... #technicalAgile #agile #scrum #agileCoaching
- Regular technical work is the developers' responsibility. It should not be subject to negotiation at the sprint planning! #technicalAgile #agile #scrum #agileCoaching
- Use these 3 "Scrum-Aikido" techniques! #technicalAgile #agile #scrum #agileCoaching
- Agree on a definition of done with high quality. #technicalAgile #agile #scrum #agileCoaching
- Stress the difference between forecasts and commitments in Scrum #technicalAgile #agile #scrum #agileCoaching
- Use story points and planning poker to carve out some time for technical work #technicalAgile #agile #scrum #agileCoaching
---
_Is "Business Value" the only thing that matters for sprint plannings? Here are 3 Scrum practices that will buy developers some time for technical work!._

![Drawing of a developer and the PO sharing a cake at the sprint planning. The developer cut and reserved a large part of the cake for her, saying "This part is for us!". Technical excellence work should be the responsibility of the team, and should not be subject to negotiation during the sprint planning]({{site.url}}/imgs/2021-12-06-leverage-scrum-to-workaround-feature-factory-sprint-planning/sprint-planning.jpg)

> The main problem is not agreeing that technical excellence is essential for the success of the delivery. Corporate culture is 100% focused on feature factory, delivering features at the expense of technical excellence.

> Teams are practicing either 'run as fast as you can' SDLC, which is essentially a no-practice, or full-blown waterfall, as in 'let's-plan-a-year-out with all consequences. (Slava Imeshev on [extreme programming groups.io](https://groups.io/g/extremeprogramming/topic/what_has_changed_for_you_over/39418691?p=Created,,,200,1,0,0)

Without enough technical work, the code degrades, maintenance becomes more difficult, and the pace gets unsustainable!

**Non-developers are usually not aware of the importance of technical practices**. (cf [Nobody Ever Gets Credits for Fixing Problems that Never Happened](https://web.mit.edu/nelsonr/www/Repenning=Sterman_CMR_su01_.pdf))

It's a challenge to make business people care about technical excellence! As a result, technical agile coaches can end up disillusioned and rebellious against the status quo.

[![Cover of the book Zombie Scrum Survival Guide, which offers plenty of tips to get your scrum out of a brainless way of working]({{site.url}}/imgs/2021-12-06-leverage-scrum-to-workaround-feature-factory-sprint-planning/ZombieScrumSurvivalGuide.jpeg)](https://shop.theliberators.com/products/the-zombie-scrum-survival-guide)

**Surprisingly, even teams officially using Scrum overlook technical work!** Fortunately, in this case, we can use Scrum as an argument of authority to inject change. 

> Wouldn't it be great if the team could manage most of the technical work outside the sprint planning?

Here are five Scrum-Aïkido moves that you can do with an official Scrum team. In the long term, they should let the team reach a calmer and yet more effective pace:

1. [Agree on quality in a Definition of Done](#agree-on-quality-in-a-definition-of-done)
2. [Forecast instead of commit to user stories](#forecast-instead-of-commit-to-user-stories)
3. [Leverage Planning Poker to buy time](#leverage-planning-poker-to-buy-time)

Technical excellence takes some time, especially to get started. Nothing will change if we don't take this time. Here are 3 ways that Scrum can help us.

## Agree on quality in a Definition of Done

Updating the Definition of Done (DoD) might be the first thing to do. Here is how the Scrum Guide highlights the importance of technical excellence:

> As Scrum Teams mature, it is expected that their definitions of "Done" will expand to include more stringent criteria for higher quality. ([Scrum Guide 2017](https://scrumguides.org/docs/scrumguide/v2017/2017-Scrum-Guide-US.pdf))

> Instilling quality by adhering to a Definition of Done; Commitment: Definition of Done The Definition of Done is a formal description of the state of the Increment when it meets the quality measures required for the product. [...] The Definition of Done creates transparency by providing everyone a shared understanding of what work was completed as part of the Increment. If a Product Backlog item does not meet the Definition of Done, it cannot be released or even presented at the Sprint Review. ([Scrum Guide 2020](https://scrumguides.org/docs/scrumguide/v2020/2020-Scrum-Guide-US.pdf))

The trick is to **discuss the DoD outside the context of the current stories and urgencies**. The business stakeholders will better listen to the long-term concerns raised by developers.

There are many resources on the web about how to run a DoD workshop. For example:

*   [Definition of Done Workshop](https://waynedgrant.wordpress.com/2013/12/11/definition-of-done-workshop/) by Wayne Grant
*   [Virtual Exercise to Create or Update a Definition of Done](https://medium.com/agile-outside-the-box/virtual-exercise-to-create-or-update-a-definition-of-done-d774a9802bfc) by Philip Rogers

The DoD will evolve over time. So you'll have to regularly run update workshops to make sure the team reviews and adapts its DoD.

## Forecast instead of commit to user stories

![A photo of a home weather forecast device. Estimating the size of user stories is a lot like forecasting the weather. It's usually close to what we have experience with, but it's not a perfect science. That's why we should not commit on estimates.]({{site.url}}/imgs/2021-12-06-leverage-scrum-to-workaround-feature-factory-sprint-planning/weather-forecast.jpg)

The intended commitment in Scrum was:

> Do everything we can to deliver what we said we would without sacrificing quality.

Unfortunately, the last part was often forgotten, and it became:

> Do everything we can to deliver what we said we would ~~without sacrificing quality~~

That's why **Scrum changed its wording from "commitment" to "forecast."**

> One of the most controversial updates to the 2011 Scrum Guide has been the removal of the term "commit" in favor of "forecast" in regards to the work selected for a Sprint. ([Commitment vs. Forecast: A Subtle But Important Change to Scrum](https://www.scrum.org/resources/commitment-vs-forecast))

As coaches, we should be the background consciousness of the team. We should keep our ears open and point out when a "commitment" should be a "forecast." We should be particularly attentive **towards the end of sprints! This is when it's all too easy for humans to default to ship-at-all-cost mode!**

## Leverage Planning Poker to buy time

Planning Poker is a way to use the wisdom of the crowds to estimate the complexity of user stories. If you don't know about Planning Poker, the [Wikipedia article](https://en.wikipedia.org/wiki/Planning_poker) is a good starting point.

[![The cover of the book 'The Mythical Man Month'. Using man.days to estimate the size of stories can lead to all kinds of issues. One of them is micro-manangement.]({{site.url}}/imgs/2021-12-06-leverage-scrum-to-workaround-feature-factory-sprint-planning/mythical-man-month.jpg)](https://www.goodreads.com/book/show/13629.The_Mythical_Man_Month)

Planning poker relies on team-relative 'complexity [story points](https://www.mountaingoatsoftware.com/blog/what-are-story-points)' estimates rather than traditional man-days. **One benefit of story points is that it makes micromanaging man-days more difficult**. The alternative, forecasting in man-days opens the door for stakeholders to:

*   Challenging estimates.
*   Organizing tasks in everyone's calendar to get more stories into the sprint.

To summarize, **story points estimates increase the team's control over its time.**

Planning Poker is simple: plan as many story points as you delivered in the previous sprint. This can help the team and the stakeholders to improve forecasts in two ways:

1.  **Time for recurring unplanned work is 'automatically' reserved.** This is the magic of the auto-adjusting factor of story points and planning poker!
2.  **When the team finishes its sprint stories, it should work on improvements, not on new stories!** In the long run, it reduces the variability that comes from technical debt.

![A Story Point delivery history that highlights the variability, and the 'realistic' commitment to do in order to keep time for technical work]({{site.url}}/imgs/2021-12-06-leverage-scrum-to-workaround-feature-factory-sprint-planning/slack-line.jpg)

I remember when I explained this graph to the Deadpool team members. They were looking at me with bewildered eyes when I told them that this was all they should forecast. After a few months, though, the team was set on a continuous improvement dynamic. Today, the team is a company-wide example!

These practices have many other extra advantages. Check these resources about how to learn how to run a planning poker and more:

*   Learn how to use story points and run a planning poker ([https://www.mountaingoatsoftware.com/agile/planning-poker](https://www.mountaingoatsoftware.com/agile/planning-poker)) (I even created an [open-source remote poker app](https://philous-planning-poker.herokuapp.com/) a while ago...)
*   Learn more about slack time in (James Shore's [Art of Agile Development offers a good reference](https://www.jamesshore.com/v2/books/aoad1/slack))

## Too big to swallow?

![A giant pile of pancakes with almonds, fruits, and covered in honey. Sometimes, technical work items are just too large to swallow in small chunks...]({{site.url}}/imgs/2021-12-06-leverage-scrum-to-workaround-feature-factory-sprint-planning/too-big-to-swallow.jpg)

**This Scrum-Aïkido should get us a long way into finding time for technical work.** We can deal with most technical "house cleaning" this way. James Shore said a former team managed to internationalize an app in one day thanks to the continuous refactoring! (cf [The Art of Agile Development](https://www.jamesshore.com/v2/books/aoad2))

**Unfortunately, there will be times when we will unearth large technical tasks.** It's surprising, but this is how the complex world is! Always throwing new technologies, disruptive features, and deeper domain insights at us!

When this happens, we'll need to agree on a plan with business people. That's why it's so essential to [build trust and collaboration with them]({{site.url}}/5-whole-team-workshops-to-increase-developers-role-in-sprint-planning/).

## Try this!

Are you working with a team that is struggling to find some time for technical work? **Regular technical work is the developers' responsibility. It should not be subject to negotiation at the sprint planning!** If this team is officially using Scrum, it's time to **use these "Scrum-Aikido" techniques!**

1. Make sure all parties **agree on a definition of done with high quality**.
2. Explain the **difference between forecasts and commitments in Scrum**. Start to talk and act based on 'forecasts.'
3. **Use story points and planning poker to carve out some time** to improve the code health.

In the long run, these tricks should make the team's pace more sustainable, yet more effective too!

Do you know more about "Scrum-Aikido" to keep technical work under the developers' responsibility?

---

Here are a few other posts that you might find interesting:

*   [How to play planning poker… Badass Mode!]({{site.url}}/how-to-play-planning-poker-badass-mode/) A fun infographic showing how teams can get their way during the sprint planning.
*   [How to kill Scrum Zombies ?]({{site.url}}/how-to-kill-scrum-zombies/) A collection of tricks that could help in the case of a team brainlessly following Scrum
*   [5 Whole-Team Workshops To Increase Developers’ Role In Sprint Planning]({{site.url}}/5-whole-team-workshops-to-increase-developers-role-in-sprint-planning/).