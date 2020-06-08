---
layout: single-mailing-list
title: 3 compounding benefits of mob programming that make it cost-effective
date: 2020-05-28
comments: true
categories:
- mob programming
- business value
- continuous improvement
- technical debt
- team building
description: "Mob programming requires time to get used to it. With practice, though, you'll leverage on unexpected benefits like less work, better continuous improvement, and higher-level discussions. These benefits even compound, which makes mob programming very cost-effective in the long run."
header:
  teaser: "/imgs/2020-05-15-3-long-term-benefits-of-mob-programming-that-make-it-cost-effective/mob-programming-time-capsule-teaser.jpg"
  og_image: "/imgs/2020-05-15-3-long-term-benefits-of-mob-programming-that-make-it-cost-effective/mob-programming-time-capsule-og.jpg"
---
_[Mob programming](https://en.wikipedia.org/wiki/Mob_programming) requires time to get used to it. With practice, though, you'll discover unexpected and compounding long-term benefits of mob programming._

![Drawing of a time capsule titled 'Mob Programming', when it opens, it's all fairies and unicorns coming out of it. Mob Programming has some unexpected long term benefits that you will only discover if you use it long enough]({{site.url}}/imgs/2020-05-15-3-long-term-benefits-of-mob-programming-that-make-it-cost-effective/mob-programming-time-capsule.jpg)

As a technical agile coach, I practice mob programming in 2 contexts.

First, [I coach teams through mobbing]({{site.url}}/the-story-about-how-we-do-agile-technical-coaching/).

Second, I mob with the other coaches to practice and prepare katas. We are also mobbing on different topics:

*   To increase skill sharing.
*   To avoid delaying work because of our individual constraints.

Through experience, we discovered some unexpected long-term benefits of mob programming:

*   **Mob programming reduces the amount of work to do**
*   **Mob programming makes continuous improvement more effective.**
*   **Mob programming improves design discussions.**

Let's go through these in more detail.

## 1. Less work to do

I attended [his talk about #NoEstimates](https://www.youtube.com/watch?v=83Ax7SNh2kg) at [NewCrafts Paris](https://ncrafts.io/). He asked us to estimate the time it would take to resolve a small math puzzle. He then asked us to solve it and compared the time it took us with the estimate. He did a few iterations of this with variations of the puzzle.

{% include video id="83Ax7SNh2kg" provider="youtube" %}

The conclusion was that **the amount of work does not depend on how complex the task looks**, but more on:

*   our knowledge about the domain
*   our understanding of previous solutions

Any developer who has worked on legacy code knows that even simple features can take months to build. This is for two reasons:

*   We are often not familiar with a legacy system's design
*   The legacy system's design is often unnecessarily complicated

As a result, tiny changes can have significant undesired consequences. In fact, these 2 dimensions are what drives the long-term productivity of a team.

{% assign figure_path="/imgs/2020-05-15-3-long-term-benefits-of-mob-programming-that-make-it-cost-effective/decrocher-la-lune.jpg" | absolute_url %}

{% assign figure_alt="Photo from a game of 'Decrocher la lune' which means 'Reaching the moon'. The game consists of stacking small wooden ladders without making them fall." %}

{% capture figure_caption %}
I found this [game 'Decrocher la lune'](https://www.amazon.fr/Asmodee-soci%C3%A9t%C3%A9-BODEC01FRN-Jeu-dambiance/dp/B07HMGM183/) (which translates to 'Reaching the moon' in English) to be a great metaphor for working with legacy code. The goal of the game is to stack small wooden ladders as high as possible, but without making them fall. I once setup the game in the office cafeteria, with a poster explaining the legacy code metaphor.
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

Here's the thing: **Mob Programming both builds knowledge and simplifies the current system**. Let's see how...

### Mob programming makes the code base smaller.

20 years ago, Alistair Cockburn did a [study on pair programming.](https://www.researchgate.net/publication/2333697_The_Costs_and_Benefits_of_Pair_Programming) It concludes that pair programming makes the codebase at least 10% smaller. [My personal experience]({{site.url}}/categories/#pair-programming) backs up this study. I would even have estimated the gain to be more than 10%.

This results from more knowledge about existing code in a pair of brains than in a single one. **Two developers working together spot more opportunities for reuse**. In the end, these small reuses compound and make a significant impact on the codebase size.

Mobbing has an even more significant impact, as there is more knowledge in a mob than in a pair.

In the end, a smaller code base is easier to work with and makes adding new features faster.

### The mob is allergic to debt.

Another benefit of mob programming is that it makes debt evident and unbearable. Debt slows you down for stupid things. **Debt is always painful, but it becomes intolerable when the full team works together.**

[Suppose your build is slow]({{site.url}}/you-dont-have-to-ask-your-boss-for-a-fast-build-lean-software-development-part-6/). Every time you build, all the mob is going to wait, doing almost nothing. It won't take a lot of these group 'breaks' before the team decides to tackle this slow build.

As a result, the system remains simple and easy to extend.

### More knowledge sharing happens in the mob.

There's not much to explain here. Working together on the same task will share knowledge about the current system.

When a new feature request comes in, the mob will have as much knowledge as possible to build it. As a result, it will be ready sooner.

### It compounds!

Here's the most exciting thing: these benefits compound over time! In fact, they even support each other.

{% assign figure_path="/imgs/2020-05-15-3-long-term-benefits-of-mob-programming-that-make-it-cost-effective/mob-makes-code-smaller-small.jpg" | absolute_url %}

{% assign figure_alt="Infographics showing the positive self-reinforcing impact of mob programming on the saize of code. Smaller and better-designed system -> More knowledge fit in the mob brains -> Spot more opportunities for refactoring -> Smaller and better-designed system ->..." %}

{% capture figure_caption %}
By [Philippe Bourgau]({{site.url}}), under [CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/), [high resolution image]({{site.url}}/imgs/2020-05-15-3-long-term-benefits-of-mob-programming-that-make-it-cost-effective/mob-makes-code-smaller.png)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

Over time, this makes a massive difference in both 

*   the system's complexity
*   the team's knowledge about it

As a result, features that would take days to build in a traditional team only take a few hours.

## 2. Continuous Continuous-Improvement

I wrote before about [how retrospectives only take us as far as known best practices]({{site.url}}/how-we-used-the-improvement-kata-to-gain-25-percent-of-productivity-part-1/). As an alternative, [I've had great success using the improvement kata]({{site.url}}/lessons-learned-from-running-our-first-improvement-kata/).

Since then, I've also used the improvement kata on my personal tasks. It has proven even more useful. It has helped me to design a productive and sustainable pace. Currently, in these times of lock-down, it's also helping me to get a grip on the new situation.

### Finding data

**Unfortunately, gathering data can be a real challenge.** The improvement kata is a data-driven technique: no data means no improvement!

Sometimes, you will manage to extract the data out of your existing tools. In the past, we managed by [digging data out of JIRA]({{site.url}}/how-we-used-the-improvement-kata-to-gain-25-percent-of-productivity-part-1/). That's also what many data-driven tools are doing ([Code Velocity](https://codeclimate.com/velocity/understand-diagnose/), [IdeaFlow](https://www.ideaflow.io/)...). (BTW, these tools are, in fact, packaging the improvement kata around a particular problem. This might be an interesting post!)

When you have a specific problem and no data, you're kind of stuck. Collecting data should not be that difficult! Gathering data on my personal tasks is very easy. I just make sure to log what I need every day for a while. A simple spreadsheet is enough. After a few weeks, I'm able to accurately understand what is going on. I can then try and measure the impacts of experiments.

### The teamwork challenge

**In a team, daily data tracking is a lot more complicated.** I've always had a hard time getting the whole team to log data. Team members might not all agree on the importance of the problem. Some others might have something else in mind. And some might be afraid of the big-brother potential of this practice.

One solution is gamification. For example, [Joe Wright used stacks of lego bricks to represent time](https://code.joejag.com/2018/lego-workstream-visualisation.html). That's a friendly solution when it works. Unfortunately, sometimes it's not possible:

*   Lego bricks won't help you if your team is remote.
*   If you need small-grain tracking, you might never have enough bricks.

![Drawing of someone trying to stick a lego brick through a phone]({{site.url}}/imgs/2020-05-15-3-long-term-benefits-of-mob-programming-that-make-it-cost-effective/lego-phone.jpeg)

### It's a lot easier in a mob.

In a mob, this problem disappears. **A single team member caring about data tracking is enough!** The privacy concern goes away too. We are logging the mob's activity, not that of individual developers.

We might also wonder if this is not a return to old-style command and control process improvement. I've seen this in practice. It does work, but at the cost of high turnover and disengaged programmers. 

> Disengaged employees are 34% less productive [[Forbes](https://www.forbes.com/sites/karlynborysenko/2019/05/02/how-much-are-your-disengaged-employees-costing-you/)].

Mob-style continuous improvement has nothing to do with this. A mob is empowered and autonomous by design. This actually increases engagement! **Mob-style continuous improvement will just blow the old-style process improvement away.**

### It compounds!

**Even a modest 1% improvement per month will become massive in the long term.** The Coronavirus epidemic should have taught us the power of exponential growth!

{% assign figure_path="/imgs/2020-05-15-3-long-term-benefits-of-mob-programming-that-make-it-cost-effective/exponential-growth.jpg" | absolute_url %}

{% assign figure_alt="Graph showing the shape of an exponential growth compared to linear growth." %}

{% capture figure_caption %}
Exponential Growth curve, from [Wikipedia](https://en.wikipedia.org/wiki/Exponential_growth). The continuous continuous-improvement benefit that comes with mob programming yields to the productivity increase of the green curve.
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

## 3. Higher quality design discussions

### The smart keyboard

Here is the central revelation I got from [Woody Zuill](https://woodyzuill.com/)'s mob programming masterclass:

> The developer acting as the driver is a 'smart input device.'

Like a genius keyboard! He takes care of compilation issues, semicolons, formatting, and a lot of other stuff.

![Photo of a backlit mechanical keyboard. Mob programming turns the driver into a smart keyboard able to read our minds]({{site.url}}/imgs/2020-05-15-3-long-term-benefits-of-mob-programming-that-make-it-cost-effective/keyboard.jpg)

Let's go through an example. A few weeks ago, we were practicing the roman addition kata. I was driving when the mob asked me to rename the tests using some uppercase letters for roman numbers. We had names all our tests xxx_plus_yyy_is_zzz. As a smart keyboard, this renaming fell in my area of responsibility. I checked the internet to know if [Intellij could do some uppercase regexp / replace](https://www.jetbrains.com/help/idea/tutorial-finding-and-replacing-text-using-regular-expressions.html#upper_lower_case_switch). It turned out it could! I worked in parallel with the rest of the mob. My colleagues were following some higher-level discussions. I worked out my regexp and did a global file replace.

Now that I master uppercase regexp replacements in IntelliJ, I can say that I'm a smarter keyboard. Not only this, but **the whole mob knows that the driver can deal with similar queries in the future**.

### Higher-level programming

Text replacement is a straightforward example. [The same phenomenon happens around coding standards, conventions, work habits, and even language]({{site.url}}/how-to-get-the-max-out-of-your-team-coding-dojo/).

*   **The more the mob works together**
*   **The more it grows its own folklore**
*   **The more the driver understands high-level queries**
*   **The more the rest of the mob can have high-level discussions**
*   **Eventually, the more productive the mob is.**

{% assign figure_path="/imgs/2020-05-15-3-long-term-benefits-of-mob-programming-that-make-it-cost-effective/mob-raises-communication-level-small.jpg" | absolute_url %}

{% assign figure_alt="Infographics showing the positive self-reinforcing impact of mob programming on the level of abstraction of discussions. The more the mob works together -> The more it grows its own folklore -> The more the driver understands high-level queries -> The more the rest of the mob can have high-level discussions -> Eventually, the more productive the mob is -> The more the mob works together -> ..." %}

{% capture figure_caption %}
By [Philippe Bourgau]({{site.url}}), under [CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/), [high resolution image]({{site.url}}/imgs/2020-05-15-3-long-term-benefits-of-mob-programming-that-make-it-cost-effective/mob-raises-communication-level.png)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

**It's a bit like if the driver was raising the level of abstraction of the programming language**. Similarly to a higher-level language.

Here is something Fred Brooks states in [The Mythical Man-Month](https://www.goodreads.com/book/show/13629.The_Mythical_Man_Month?from_search=true&from_srp=true&qid=ssZyZTOZ85&rank=1):

> Developer productivity, in lines of code, is independent of the programming language.

[![Cover of the Mythical Man Month by Frederic P. Brooks Jr. He explains that developer productivity (in lines of code) is independent from the language, which is a clear advantage to higher level languages.]({{site.url}}/imgs/2020-05-15-3-long-term-benefits-of-mob-programming-that-make-it-cost-effective/mythical-man-month.jpg)](https://www.goodreads.com/book/show/13629.The_Mythical_Man_Month?from_search=true&from_srp=true&qid=ssZyZTOZ85&rank=1)

This means that if you can write 4 lines of assembly in 1 line of C, switching to C will make you 4 times more productive. Similarly, **if the mob driver lets you write 4 lines of code in 1 instruction, then the mob is 4 times more productive.**

Granted, [measuring productivity in lines of code is not a good idea](https://blog.ndepend.com/mythical-man-month-10-lines-per-developer-day/). Still, the logic explains why Mob Programming is not as slow as we could fear.

### It compounds!

Don't forget: the more the team mobs, the smarter the driver becomes!

## Seriously... how can mob programming be productive?

We've seen 3 unexpected benefits of Mob Programming. Still, mob programming remains very counterintuitive! **Selling mobbing to your boss or colleague will always be a hard bargain.** I'm not the first one to try to explain this, for a larger perspective, have a look at these posts:

* [Mob Programming - the Good, the Bad and the Great.](https://underthehood.meltwater.com/blog/2016/06/01/mob-programming/)
* [Here’s the science behind mob programming.](https://medium.com/comparethemarket/you-asked-me-to-prove-mob-programming-works-heres-the-proof-70eb6a1d0279)

There are so many variables in software that measuring productivity is almost impossible. What we can do, though, is to check how the unexpected benefits I mentioned earlier make a better case for mob programming.

### Long term impact

The first thing we notice with these unexpected benefits is that they compound!

![Photo of a pile of coins with a clock in the background. Like compounding in finance, the small but repeated benefits of mob programming create a huge payback in the long term]({{site.url}}/imgs/2020-05-15-3-long-term-benefits-of-mob-programming-that-make-it-cost-effective/compound-effect.jpg)

If you ever read a personal finance book, you'll know the importance of [compound interest](https://en.wikipedia.org/wiki/Compound_interest). The same goes for mob programming.

The glitch is that there is an initial cost to mob programming. A good strategy is to **start with only a few hours of mobbing every week until the team gets good at it. You can then slowly raise the ratio.** You could even [start with a coding dojo]({{site.url}}/how-to-start-a-team-coding-dojo-randori-today/) before production work mobs.

As the long-term benefits compound, the mob will become more and more productive. **More productivity means more features for the users and a sustainable pace for the team.**

Be careful, though. [Full-time mobbing might not be suitable for everyone in the team]({{site.url}}/how-to-use-mob-programming-at-the-rescue-of-pair-programming-burnout/). Some people, especially introverts, will need some solo time to recharge batteries. You can get the perfect ratio for your time trough trial and error...

But you can also have a structured conversation!

### A business case for mob programming

At Murex, we tried a business case for pair programming with a team. We went through this course, [Making the Business Case for Best Practices](https://www.pluralsight.com/courses/making-business-case-for-best-practices). We extended the pair programming case to take a 'ratio' of pairing time. This allowed us to take into account a team member who was very reluctant to pair program.

We found out that the optimal ratio of pair programming was around 20%.

![A screenshot of the graph summarizing the results of a business case about pair programming that we did with a team at Murex. It's easier to discuss the amount of pair programming you want this way than to get your voice heard during a retrospective full of pair programming enthusiasts.]({{site.url}}/imgs/2020-05-15-3-long-term-benefits-of-mob-programming-that-make-it-cost-effective/pair-programming-business-case.jpg)

Between 0% and 20%, the benefits of pairing grew. Past 20%, the moral tax would be too heavy on the team!

**A business case makes it a lot easier to discuss this kind of issue a priori. It's challenging to voice your burnout to the team when all the team in enjoying pairing.**

We can do something similar with mob programming. The Pluralsight course does not include a section on Mob Programming. With fellow technical coaches, we brainstormed the costs and benefits of mob programming. Here is what we found at the time:

#### Benefits

* Pair programming Benefits +
* Reduced time spent in daily meetings
* Reduced time spent in sprint planning/backlog grooming meetings

#### Costs

* Adapting management practices
* Whole team doing the same task
* Mobbing setup
* Morale dip

We could now also add the long term compounding speed up. Unfortunately, I don't know how to measure it. My best shot would be to brainstorm a speedup of X% per month when working as a mob. A human-friendly way to think of exponential growth is 'How many months for it to double?'.

For example:

> If a team did work 4 hours per day as a mob, I could expect its productivity to double every year. You can then use the [Rule of 70](https://en.wikipedia.org/wiki/Rule_of_72) to deduce your monthly speed up. In our example:
>
> 70/12 = 5.83%
>
> This means 5.83% more features every month.

We could then complement the business case with this figure. As [Erik Dietrich](https://daedtech.com/) explains in his course, be ready to play with this number until everyone is ok with it.

This **exercise will not only help you to sell mob programming to your boss or team-mates. It will also show you what you are trading off between solo and mob programming.** It will help every team member to take a step back from their personal gut feeling. Eventually, this will trigger more in-depth discussions. It's a bit like a Big-O analysis for best practices.

### A new way to split the work?

If the compound effect and the business case still did not convince you, let's try another story!

Here is yet another way to think of mob programming. **Mob programming makes up for work parallelization by reducing mental task switching.**

Let's go over all the different tasks we do when we program:

*   Type in some code
*   Run compilation
*   Fix compilation errors
*   Reorganize code for readability
*   Think of design (at function and at larger scales)
*   Apply automated or semi-automated refactorings
*   Think of performance (at function and at larger scales)
*   Write tests
*   Think of edge test cases
*   Keep track of where you stand on the main task
*   Run tests
*   Run the app
*   Debugging
*   Write down things that we could improve
*   ...

This sheds new light on 'focused solo programming.' We are not that focused! **We are continuously task-switching from one activity to the other.**

Let's look again at the long-term benefits of mob programming I mentioned earlier

*   in 2, Continuous Continuous-Improvement. One person focuses on continuous improvement
*   in 3, Higher quality design discussions. One person is typing, building, and doing many low-level activities. The others concentrate on design

**[Woody Zuill explains that mobbing enables the mental state of 'flow.'](https://www.youtube.com/watch?v=8Jcm3tBacZQ)** The driver is taking care of all the low-level details of writing code. The rest of the mob is left with:

*   Thinking and making decisions about design
*   Thinking of performance
*   Deciding about the next test cases
*   Keeping track of where you stand on the main task
*   Keeping track of things that we could improve

That's already an impressive reduction in Work-In-Progress! But wait, there's more! You can decide to focus on a single topic, with the assurance that others in the mob deal with the rest! For example, **you can concentrate on continuous improvement for half an hour** (cf point 2). Or you could spend some time thinking of edge cases for tests.

> In the mob, you can stay in the zone!

{% assign figure_path="/imgs/2020-05-15-3-long-term-benefits-of-mob-programming-that-make-it-cost-effective/solo-vs-mob-task-switching-small.jpg" | absolute_url %}

{% assign figure_alt="Colored boxes showing the task-switching occurring in a team working as solo developers compared to the same team working as a mob. We can see that a lot less context-switches occur during the mob" %}

{% capture figure_caption %}
By [Philippe Bourgau]({{site.url}}), under [CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/), [high resolution image]({{site.url}}/imgs/2020-05-15-3-long-term-benefits-of-mob-programming-that-make-it-cost-effective/solo-vs-mob-task-switching.png)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

The first thing we can see is that the same work is happening in both work configuration. Let's now count how many context switches the team goes through during this 20 minutes work session:

* working solo: 28
* as a mob: 10

This is 3 times less. Even if these micro context-switches only cost few seconds each, this is enough to explain how a mob can be more productive than solo developers!

### I've already seen this pattern!

To run fruitful meetings, [Sociocracy](https://www.seattleurbancohousing.com/blog/sociocratic-meeting) suggests setting up different roles for attendees (Secretary, Leader, Facilitator, Delegate...). **Maybe we should try to explicit 'roles' in the mob and see how this works?** I could think of:

*   The tester
*   The continuous improver
*   The 'performancer'
*   The maintainer
*   The tracker
*   ...

Nick Tune suggests a similar scheme for [Remote Team Flow EventStorming for Retrospectives](https://medium.com/nick-tune-tech-strategy-blog/remote-team-flow-eventstorming-for-retrospectives-a8ea33cdb277). They managed to run a remote Flow Event Storming by using a few of these roles. **To avoid overspecialization-blindness, they round-rob these roles every 10 minutes.**

I'll write about this as soon as we get the chance to try this, so stay tuned!

## What do you think?

I'd really love to read about your own experiences with mob programming.

Maybe you:

*   Noticed the same effects I have mentioned?
*   Experienced other surprising long-term impacts of mob programming?
*   Have experimental data to back up some of these effects?
*   Noticed the exact opposite of what I wrote about?
*   Or found new ways to sell mob programming to your team?

Whatever your story, I'd love to read it in a comment below.

Happy mobbing!
