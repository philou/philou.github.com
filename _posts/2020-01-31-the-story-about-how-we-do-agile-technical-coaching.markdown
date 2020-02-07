---
layout: single
title: "The story about how we do Agile Technical Coaching"
date: 2020-02-13
comments: true
categories:
 - coaching
 - coding dojo
 - mob programming
 - badass-developer
description: "You will not find an Agile Technical Coach Job Description. This job is more invented than found. Here is the story of how we came to practice it with mob programming and coding dojos at Murex. You'll preview our project of growing technical leaders with team agile technical coaching."
header:
   teaser: /imgs/2020-01-31-the-story-about-how-we-do-agile-technical-coaching/technical-agile-coaching-recipe-teaser.jpeg
   og_image: /imgs/2020-01-31-the-story-about-how-we-do-agile-technical-coaching/technical-agile-coaching-recipe-og.jpeg
publish: false
---
_You will not find an Agile Technical Coach Job Description. This job is more invented than found. Here is the story of how we came to practice it at [Murex](https://www.murex.com/)._

![Drawing of a recipe of Technical Agile Coaching: Katas + Mobs + Growing Leaders]({{site.url}}/imgs/2020-01-31-the-story-about-how-we-do-agile-technical-coaching/technical-agile-coaching-recipe.jpeg)

People often wonder what Agile Technical Coaching is about. Unfortunately, you'll have a hard time finding an Agile Technical Coach Job Description. In the days of Scrum and SAFe, this way of coaching teams has become pretty rare. Instead of a formal description, here is our story. The story of how we grew a team of Agile Technical Coaches at Murex.

## It started with Deadpool

Somewhere in 2017, Murex undertook an agile transformation. Agile coaches where helping teams to get used to this new way of working. Being the only former agile developer, I was trying to find my place among the other coaches.

![A drawing of Deadpool sitting on big letters 'Coaching'. My first mission as an Agile Technical Coaching was with a team called Deadpool]({{site.url}}/imgs/2020-01-31-the-story-about-how-we-do-agile-technical-coaching/deadpool-coaching.jpg)

One day, another agile coach asked me to help the Deadpool team. The team was going through a lot of difficulties, and stress was increasing for everyone. The team had inherited a lot of problems:

*   High turnover
*   Experts working in silos
*   A lot of poorly designed legacy code
*   Slow end-to-end tests

As if all this was not enough, the team:

*   had a lot of maintenance work to do
*   and was under a lot of pressure to deliver new features

Unsurprisingly, this mix was resulting in growing tensions among the team members.

### What could I do?

All coaching I had done before consisted of embedding full time within a team. I would:

*   spend a lot of time pairing, with everyone
*   animate weekly [coding dojos]({{site.url}}/why-you-should-start-a-team-coding-dojo-randori-right-now/) to share development practices and learnings
*   [animate retrospectives]({{site.url}}/how-we-introduced-efficient-agile-retrospectives/) and put real continuous improvement in place

I knew this worked great.

> 💡 Full time pairing within a team is slow but effective agile technical coaching

Unfortunately, it also takes a lot of time. It needs a few months to get real momentum, and a few more to see concrete outcomes. It also compounds, and once the wheel starts spinning, results pile up.

[![Cover of the book "The compound effect"]({{site.url}}/imgs/2020-01-31-the-story-about-how-we-do-agile-technical-coaching/the-compound-effect.jpg)](https://www.goodreads.com/book/show/9420697-the-compound-effect)

I was the only technical coach in the place. There are more than 60 development teams in Murex. If I was to replicate this method with only half of them, this would still take ages!

### v0.1, part-time embedding

My first try was a light version of the full-time embedding. I would

*   pair for 2 days per week
*   animate coding dojo per sprint
*   help the scrum master with the ceremonies

Ceremonies got better, and I could sometimes spot useful things during pairing sessions. Unfortunately, people did not yet see the benefits of katas, and I could only pair with 1 person at a time. As a result, the progress remained very slow, and the team's feedback was average.

I had to find another way.

### v0.2, katas and mobs

I decided to spend less time on ceremonies and to trade pairing for mobbing. We were doing 2 sessions of 2 hours of mob per week.

> 💡 Katas + Mobs is a time efficient agile technical coaching scheme

I continued to do one 2-hours kata per sprint. As the team was struggling with legacy code, we focused on [refactoring katas]({{site.url}}/a-coding-dojo-exercises-plan-towards-refactoring-legacy-code/).

![A drawing of Deadpool performing an extract-member refactoring on a legacy code character. We used Agile Technical Coaching as a way to practice refactoring techniques.]({{site.url}}/imgs/2020-01-31-the-story-about-how-we-do-agile-technical-coaching/deadpool-extract-member.jpg)

At some point, another team member left. He was the only expert on an essential area of the code. I had been highlighting the importance of reducing the WIP and increasing the bus factor. This new event convinced the team. Facing this new challenge, the team jelled. They met their management as a single unit, and [insisted on taking the time to work differently]({{site.url}}/how-to-convince-your-business-to-sponsor-a-large-scale-refactoring/):

*   documenting critical knowledge
*   refactoring code areas that were too tricky to work with

Managers had no choice but to accept. That's how Deadpool resurrected.

![A drawing of a mob of Deadpool characters protesting for refactoring.]({{site.url}}/imgs/2020-01-31-the-story-about-how-we-do-agile-technical-coaching/deadpool-mob.jpg)

### Epilogue

2 years down the road, the team's day to day life has dramatically improved:

*   A lot less stress
*   30-40% test coverage and increasing. This is a great achievement given the state of the initial legacy code.
*   The team is taking [time for refactoring and testing at every sprint]({{site.url}}/become-a-business-partner-and-stop-begging-for-refactoring/)
*   The team now follows a sustainable pace
*   There is a friendly atmosphere in the team

The situation, especially turnover, pushed the team into trying something new. The final jelling unlocked all the rest.

How much is my coaching responsible for these changes? Most of these results come from the team's work. To know better, I had a chat with the team members. Here is what they say:

*   Seemingly simplistic katas made them understand [the value of baby steps]({{site.url}}/incremental-software-development-strategies-for-large-scale-refactoring-number-2-baby-steps/). They discovered that it unlocks better design and smoother deliveries
*   Mentioning WIP reduction made them envision 'another way' when the experts left
*   **[Randoris and mobs taught them better collaboration]({{site.url}}/how-to-get-the-max-out-of-your-team-coding-dojo/)**
*   They now see [the speed-up effect of tests]({{site.url}}/a-serious-game-for-learning-built-in-quality-at-the-source/), even though they did not understand the point at the beginning

It looks like this coaching nudged the team to change how they work.

![A drawing of Deadpool making a heart with his hands. Tensions in the Deadpool team went away. How much can this success be credited to Agile Technical Coaching is a tricky question!]({{site.url}}/imgs/2020-01-31-the-story-about-how-we-do-agile-technical-coaching/deadpool-heart.jpg)

But could we repeat this?

## Scaling to other teams

A new technical agile coach joined me at that point. We were now a team of 2.

### v1.0, `stable`

We extracted the strong points into a recipe we could re-use. Here are the key elements:

*   Focus on technical agile coaching only. There were enough process/people coaches in the company. We decided to let them do this part of the work! **Anyway, once developers get TDD and pairing, they get the agile mindset.** (Note: This might make a good post, so [stay tuned!](http://eepurl.com/dxKE95))
*   We would use a [kata plan]({{site.url}}/a-coding-dojo-exercises-plan-towards-refactoring-legacy-code/)
*   We would [start with TDD kata]({{site.url}}/how-to-start-a-team-coding-dojo-randori-today/)
*   And continue with refactoring katas. (I'll write a more detailed post about the katas we are using, stay tuned!)
*   We would mob with the teams on selected stories
*   We would stick with the teams for a few months

I've since discovered that other agile technical coaches are using similar techniques. [Emily Bache](http://coding-is-like-cooking.info/) gave a talk at [NewCrafts](https://ncrafts.io/), where she described something pretty similar.

{% include video id="339930423" provider="vimeo" %}

She is now writing a book [Technical Agile Coaching](https://leanpub.com/techagilecoach) about it.

![[Technical Agile Coaching](https://leanpub.com/techagilecoach)]({{site.url}}/imgs/2020-01-31-the-story-about-how-we-do-agile-technical-coaching/technical-agile-coaching.jpg)

A tiny glitch remained: we now needed to find teams to coach!

### Marketing and sales...

There are 2 ways to coach teams.

*   Push-coaching: management sends the team to coaches
*   Pull-coaching: the team gets coaching when it asks for it

From the beginning, we decided to avoid the former at all costs, for 2 reasons

*   It does not work very well, as people resist to 'being changed'
*   In the end, it's painful for everyone, the team and the coaches

I have a friend who says that:

> 💡 Push-coaching is like inflicting help.

The problem was that we now had to persuade teams to work with us! We were now equipped with excellent feedback from Deadpool and a recipe. We started to meet teams and test our proposal. Every time we discussed it with a new team, the pitch got better. Here are the final selling points of our coaching:

*   Use refactoring and legacy as the base motivation. We highlight that they will learn [useful refactoring techniques]({{site.url}}/10-things-to-know-that-will-make-you-great-at-refactoring-legacy-code/).
*   **We don't try to sell TDD.** We tell them it remains their choice to use it or not in their daily work.
*   **We explain we'll enforce TDD during the coaching. It provides the [fast feedback loop required for deliberate practice]({{site.url}}/why-20-hours-of-code-kata-are-so-effective-for-learning-new-languages/).**
*   We illustrate the power of deliberate practice with how athletes use it.
*   We present mobbing, pairing, and remote collaboration techniques as bonus learning.
*   We adapt to the team's schedule as best as we can.

Word of mouth and this improved pitch did the trick! We soon had new teams to coach.

### Intrapreneurship

It turns out there is a third and even more important reason to stick to pull-coaching. If your product is not good enough, you won't find teams to work with... In the end, it's a guarantee to have a valuable offer.

Actually, it's like a startup!

![Photograph of a keyboard with the 'SHIFT' key replaced by a 'CREATE' key. Growing an Agile Technical Coaching offer is a creative endeavor, like an internal startup]({{site.url}}/imgs/2020-01-31-the-story-about-how-we-do-agile-technical-coaching/create-startup.jpg)

## Where do we stand now?

### Successes

We have now coached 6 teams. Their feedback has been great. Depending on their situations, they highlight different aspects of coaching:

*   Collaboration
*   Testing
*   Refactoring
*   ...

We are now 2 full time agile technical coaches. We're also onboarding [Ahmad](https://ahmadatwi.me/), and [Patrice](https://twitter.com/pdalesme), a developer from Deadpool, also joined us as a part-time coach!

We also compiled our katas into a kata repository, with coaching instructions. Some teams managed to learn refactoring techniques with them, without requiring our presence. We're hoping to take the time to open source this repo at some point.

### Our challenges

There are still a lot of things in our way, though.

#### Coaching is shameful

Many teams still see coaching as 'shameful'. **Asking for help is often seen as a weakness in our ego-driven industry...** We'll have to work on our marketing to overcome this.

#### Sustainable communities

We are struggling to build communities of practice around refactoring and Continuous Integration. Unfortunately, these communities are far from autonomous at the moment. They still require a lot of effort from our side... 

Again, we'll have to find the recipe to install communities in the company culture.

#### Finding the time for self-development

We're having a hard time to continue to learn, explore, and experiment with new techniques. This is super important for agile technical coaches, and again, we'll need to make more time for that!

#### Startup metrics

I said we're thinking of us as an internal startup. Startups use metrics to know they are on the right track. This looked especially important to us. As we started the activity by ourselves, we thought we had to 'prove' that we were productive.

We tried standard startup metrics, like metrics of the pirate, and others for a while. Unfortunately, it did not work great for us because:

*   Without any tooling or available figures, it generated some manual work overhead
*   With 500 developers in the organization, our sample size is small

We also realized that fear is not a reason to do something. We decided to stop tracking these metrics systematically. We are now experimenting 'just-in-time metrics'. Whenever we do something, we put metrics in place to make sure it's doing what we expected... If not, we review and adapt.

It's now close to a lean way of working. We are currently using the [lean story template](https://medium.com/product-punk/lean-user-story-template-d3fdafe094df).

#### Crossing the chasm?

Lately, the demand for new coaching has been slowing down. If we're growing like a startup, could it be that we are [crossing the chasm](https://www.goodreads.com/book/show/61329.Crossing_the_Chasm)? Did we only tackle the innovators and early adopters?

[![The cover of the book "Crossing the Chasm". Technical agile coaching involves some marketing!]({{site.url}}/imgs/2020-01-31-the-story-about-how-we-do-agile-technical-coaching/crossing-the-chasm.jpg)](https://www.goodreads.com/book/show/61329.Crossing_the_Chasm)

If this is the case, it means we need to put all we can in the next [early-majority](https://www.investopedia.com/terms/e/early-majority.asp) team we get the chance to work with!

## v2.0, leadership

### New topics

Up to now, we've helped teams on refactoring. Lately, a team asked for help around agile testing. We are trying to adapt our recipe to testing instead of refactoring.

The plan was to:

1.  Start with TDD katas
2.  Start mobbing on their stories
3.  Continue with new testing katas

This would work, but 

*   We would need to work hard to prepare all these new testing katas
*   These katas might even not be well adapted to the team's need!

We decided to go one step further.

### Growing leaders

We are not going to run test-related katas directly with the team! Instead, we'll first work with 1 or 2 wanna-be-experts from the team:

*   We'll share references to let them think what's best for their team
*   We'll present some kata 'base'.
*   We'll fine-tune the katas for the team
*   We'll run the kata with the whole team

The idea is to

*   build something even more practical and tuned to the team
*   but also grow subject matters experts
*   increase buy-in from the rest of the team

We also have other long term hopes about this approach:

*   Have subject matter experts that the company can rely on
*   Have these experts share what they did with other teams
*   Make these experts a bit more ['badass']({{site.url}}/why-we-need-badass-developers-to-perform-large-scale-refactorings/). This will increase the devs negotiation power with product people
*   If they feel like it, share their experience at conferences!

> 💡 Let's grow leadership among developers by involving experts in kata preparation.

## Advice to Technical Agile Coaches

### Try katas + mobs

![Drawing of a martial arts dojo built around a giant laptop! Starting a coding dojo is the first step in Agile Technical Coaching]({{site.url}}/imgs/2020-01-31-the-story-about-how-we-do-agile-technical-coaching/coding-dojo.jpg)

If you are an agile technical coach, I recommend giving this kata and mob format a try. It's the best recipe I know.

Not only does it train teams to software craftsmanship techniques. It also makes them more agile. TDD, pairing and mobbing are agile "in practice". In the end, this can have profound consequences on all their work.

[Amitai Schleier](https://twitter.com/schmonz) gave a podcast about [the synergy of mobbing and coaching](https://schmonz.com/talk/20200122-mob-mentality/).

![Drawing of a team mobbing]({{site.url}}/imgs/2020-01-31-the-story-about-how-we-do-agile-technical-coaching/mob.jpg)

### Build your own job description

Let's look back at this story. 

1.  Someone asked me for help in the first place
2.  A change in management left me to do what I wanted for a while. I took the opportunity to offer this coaching.
3.  By the time my new manager asked what I was doing, I could show results. We were working with teams and had great feedback.
4.  He saw the value of it and let me continue.

You will not find a clear agile-technical-coach job description. All organizations are different, and the role is pretty new. The best way to become one is to start and invent your own job!

## Become ~~a leader~~ badass!

{% assign figure_path="/imgs/2020-01-31-the-story-about-how-we-do-agile-technical-coaching/I_am_Badass.jpg" | absolute_url %}
    
{% assign figure_alt="A close up on a fist wearing a ring written 'I am Badass'. As a team member, starting to act as an Agile Technical Coach will grow your leadership, and make you more 'badass'" %}
    
{% capture figure_caption %}
By [Brooke Lark](https://unsplash.com/@brookelark) on [Unsplash](https://unsplash.com/photos/jtvGydbUn30)
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

These pieces of advice apply even more if you are not a coach. If you are a team member, starting to act as an agile technical coach will help you to:

*   become a leader
*   make your team great

All this is not rocket science!

1.  [Start a coding dojo]({{site.url}}/how-to-start-a-team-coding-dojo-randori-today/)
2.  Then try a few randoris in [Strong-Style Pairing](http://llewellynfalco.blogspot.com/2014/06/llewellyns-strong-style-pairing.html)
3.  You'll be ready to start mobbing for a few hours a week

Sticking to this for a few months will transform you and your team. On top of building a great team, it will grow your natural leadership.

What's the point of becoming a leader? Here are some benefits of growing your developer leadership:

*   You will make a better product thanks to more negotiation power with product people
*   All the team will enjoy less stress and smarter work, as you negotiate a more sustainable pace
*   Eventually, you'll have a better career, as you will feel safer in your professional life. Acting as a leader builds what I call "intrinsic [psychological safety](https://en.wikipedia.org/wiki/Psychological_safety)".