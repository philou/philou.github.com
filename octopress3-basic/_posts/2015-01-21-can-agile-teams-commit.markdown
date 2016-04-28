---
layout: post
title: "Can agile teams commit?"
date: 2015-01-21 06:57
comments: true
categories:
 - agile
 - planning
 - risks
keywords: "software, agile, planning, risks, agile planning, agile estimations, risk management"
description: "How can agile teams actually commit to delivering something at a specific date ?"
---
Making commitments to deliver software is always difficult. Whatever the margin you might take, it invariably seems wrong afterward ...

Most Scrum, XP or Kanban litterature does not adress the issue, simply saying that commitment is not required, as long as you continuously deliver value (faster than your competition). That's kind of true, but sometimes you need commitments, for example if your customer is not yet ready to deploy your new software every friday worldwide ...

So how can you do it while remaining agile ?

Grossly speaking, you have 2 options :

## Do it as usual

Discuss with your experts, take some margin, do whatever voodoo you are used to. This will not be worse than it used to be. It might turn out better, thanks to your agile process, you should be able to deploy with a reduced the scope if needed.

{% img center /imgs/2015-01-21-can-agile-teams-commit/voodoo.jpg A guy entranced with voodoo %}

## Use your agile process metrics

This technique is explained in [The Art of Agile Development](http://www.amazon.com/Art-Agile-Development-James-Shore/dp/0596527675/ref=sr_1_1?s=books&ie=UTF8&qid=1411140759&sr=1-1&keywords=the+art+of+agile+development), in section "Risk Management", page 227.

[{% img center /imgs/2015-01-21-can-agile-teams-commit/art-of-agile-development.jpg The cover of The Art of Agile Development%}](http://www.amazon.com/Art-Agile-Development-James-Shore/dp/0596527675/ref=sr_1_1?s=books&ie=UTF8&qid=1411140759&sr=1-1&keywords=the+art+of+agile+development)

### Let's estimate the time you'll need before the release

* First, list all the stories you want it your release
* Then estimate them with story points.
* Now that you have the total number of story points you'll have to deliver before the release, apply a generic risk multiplier :

Chances of making it | Using XP practices | Otherwise | Description
---------------------|--------------------|-----------|----------------------------
10%	             |x1	          | x1	      | Almost impossible (ignore)
50%	             |x1.4	          | x2	      | 50-50 chance (stretch goal)
90%	             |x1.8	          | x4	      | Virtually certain (commit)
_As explained in [The Art of Agile Development](http://www.amazon.com/Art-Agile-Development-James-Shore/dp/0596527675/ref=sr_1_1?s=books&ie=UTF8&qid=1411140759&sr=1-1&keywords=the+art+of+agile+development) page 227, these numbers com from [DeMarco's Riskology](http://www.systemsguild.com/riskology/) system. Using XP practices means fixing all bugs at all iteration, sticking rigorously to DONE-DONE, and having a stable velocity over iterations._

This factor will account for unavoidable scope creep and wrong estimations.
* Use you iteration velocity to know how many sprints you'll need to finish.

#### For example :

Suppose you have 45 stories that account for a total of 152 story points, and that your velocity is 23 story points per iteration. You need to do a commitment, but hopefully, you are applying all the XP practices. So you can compute :

> Number of sprints = 152*1.8/23 = 12 sprints, (24 weeks, or about 5.5 months)

### What about unknown risks ?

Unfortunately, using just the previous, you might miss some unavoidable important tasks you'll need to do before you can release. Think about monitoring tools and stress testing, when did your product owner prioritize these ? These are risk management activities that need to be added to your backlog in the first place. Here is how to list most of them.

* Do a full team brainstorming about anything that could possibly go bad for your project
* For every item discovered, estimate
  * It's probability of occurrence (low, medium, high)
  * It's consequences (delay, cost, cancellation of the project)
* For every item, decide whether to
  * avoid it : you have to find a way to make sure this will not happen
  * contain it : you'll deal with the risk when it occurs
  * mitigate it : you have to find a way to reduce it's impact
  * ignore it : don't bother with unlikely risks of no importance
* Finally, create stories to match your risk management decisions. These might be :
  * Monitoring systems helps to contain a risk
  * Logging helps to mitigate a risk
  * An automated scaling in script for situations of high demand helps both mitigate and contain the risk
* Simply add these stories to your backlog, and repeat the previous section. You can now make your commitment

## Afterthoughts

Contrary to the widespread belief, agile practices and metrics actually helps to make commitments.

It would be better if we had project specific statistics instead of generic risk multipliers. It's a shame that task tracking tools (JIRA & friends) still don't help us with this.

We should keep in mind though, that estimating all your backlog in advance takes some time and is actually some kind of waste. If possible, just sticking to build (and sell) the thing that is the most useful now is more simple ([this guy calls it drunken stumble](http://vimeo.com/75196281)).

<iframe src="//player.vimeo.com/video/75196281" width="500" height="281" frameborder="0" webkitallowfullscreen mozallowfullscreen allowfullscreen></iframe> <p><a href="http://vimeo.com/75196281">Tech Mesh 2012 - Building an Application Platform: Lessons from CloudBees - Garrett Smith</a> from <a href="http://vimeo.com/erlang">Erlang Solutions</a> on <a href="https://vimeo.com">Vimeo</a>.</p>
