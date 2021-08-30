---
layout: single-mailing-list
title: "How to measure (and report 😢) your tech agile coaching effectiveness?"
date: 2021-09-02
comments: true
categories:
- coaching
- personal-productivity
- customer relationship
- goal setting
description: "How can we measure the effectiveness of technical agile coaching? Result-driven measures oriented towards speed and productivity are counter-productive. Let's leverage hypothesis-driven development and our circle of control, to write safe, sustainable, and measurable goals."
header:
  teaser: "/imgs/2021-08-09-how-to-measure-and-report-your-tech-agile-coaching-effectiveness/sisyphus-teaser.jpg"
  og_image: "/imgs/2021-08-09-how-to-measure-and-report-your-tech-agile-coaching-effectiveness/sisyphus-og.jpg"
variations:
- TODO
---
_Technical agile coaching is complex. Many organizations would track our work with inadequate measures. Here is how hypothesis-driven goals can keep us safe._

## Coaching is challenging to measure, and it can be demotivating.

![Drawing of Sisyphus pushing a giant watermelon up a steep slope written 'Bad Measure'. Like watermelons, bad measures look green on the outside, but red when you look inside! Badly measuring our technical agile coaching work can be demotivating.]({{site.url}}/imgs/2021-08-09-how-to-measure-and-report-your-tech-agile-coaching-effectiveness/sisyphus.jpg)

> Measuring performance in software is very tricky […] the coach position is uneasy, maybe even dangerous and counterproductive! And depends a lot on the surrounding culture ([Okiwi](https://okiwi.org/) Slack)

> I have a hard time making efforts on something that I know is useless... Coaching is not useless, but it's so slow! And full of disappointments ([Okiwi](https://okiwi.org/) Slack)

> The first disillusion is when you realize that whatever you do, you will change almost nothing! ([Okiwi](https://okiwi.org/) Slack)

Organizations are complex systems, and teams exist in these systems. Complex systems always react to change in unexpected ways. In fact, the behavior of complex systems only makes sense as a-posteriori. (TODO link) **This means that change management will be challenging to measure.**

{% include video id="c1W6U2duXdI" provider="youtube" %}

[Henrik Kniberg](https://twitter.com/henrikkniberg) explains how he does it in his talk [Confessions of a change agent](https://youtu.be/c1W6U2duXdI?t=1570). Eventually, he accepted that we cannot measure the effectiveness of an agile coach. So here is what he does instead:

> Are people happy to see me around?

**Yet, coaching without knowing if you are effective can become depressing.** Unfortunately, things get even worse in command and control organizations!

## The extra challenges with Command and Control organizations

> Being a coach, mandated from above and who's job is to tell you the right way to work" ([Okiwi](https://okiwi.org/) Slack)

> Coaches and devs don't share the same position, goals, interlocutors, etc. Indeed, this creates an unbalanced situation between coaches and devs" ([Okiwi](https://okiwi.org/) Slack)

In these organizations, coaches are often mandated to 'transform' teams. The underlying goal is to improve productivity. This means that at the question:

> **How to measure a tech agile coach's effectiveness?**

These organizations will ask:

*   How fast teams are being transformed?
*   How much more features can the team deliver after it has been ~~coached~~ transformed?

This mission is problematic in 2 ways:

*   **First, we don't know how long it will take to coach a team into empowerment. Yet our customers evaluate us on the speed to 'transform' teams!**
*   **Second, higher productivity is only one possible outcome of team empowerment. Still, our customers are evaluating us only on productivity improvement!**

{% assign figure_path="/imgs/2021-08-09-how-to-measure-and-report-your-tech-agile-coaching-effectiveness/watermelon-accident.jpg" | absolute_url %}

{% assign figure_alt="Photo of a watermelon, shattered after it fell on the floor" %}

{% capture figure_caption %}
Watermelon metrics are green from the outside, but red in the inside! It's all too easy to game measures when they are linked to inadequate objectives.
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

As a consequence, here is what often happens when coaching becomes difficult:

*   A. The coach games the measures. Ex: Spend the least time possible with each team. Then find an accommodating measure for productivity, whatever the actual outcome.
*   B. The coach gets screwed because things did not work according to the plan. Ex: The team decides that it will take some time to pay back some of its technical debt. As a result, productivity decreases in the short term.

This can make you doubt your whole coach career!

## Actionnable, short-term goals

Here is a template I use whenever I have to provide measurable goals.

> **We believe that** \<Intention\>
>
> **Will result in** \<Outcome hypothesis\>
>
> **We will know we have succeeded when** \<Outcome signal measure\>
>
> **To run this experiment, I will** \<Measurable actions or habits I can commit to\>

Let's see where this comes from:

### **Hypothesis-driven Development**

Fortunately, we are not alone. Product managers need complex compliant measurable goals too! The Lean Management community came up with the [Hypothesis-Driven Development Story Template](https://www.thoughtworks.com/insights/articles/how-implement-hypothesis-driven-development).

{% assign figure_path="/imgs/2021-08-09-how-to-measure-and-report-your-tech-agile-coaching-effectiveness/implement-hypothesis-driven-development.jpeg" | absolute_url %}

{% assign figure_alt="Template card titled Hypothesis Driven Development, with the text: We believe that <this capability> Will result in <this outcome> We will know we have succeeded when <we see a measurable signal>" %}

{% capture figure_caption %}
By [ThoughtWorks](https://www.thoughtworks.com/), original in [How to Implement Hypothesis-Driven Development](https://www.thoughtworks.com/insights/articles/how-implement-hypothesis-driven-development)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

### **Your Circle of Control**

The idea behind the template is to frame each team coaching as an experiment. To measure one's contribution to this experiment, I added the last line to the template:

> **To run this experiment, I will** \<Measurable actions or habits I can commit to\>

{% assign figure_path="/imgs/2021-08-09-how-to-measure-and-report-your-tech-agile-coaching-effectiveness/circle-of-control.jpg" | absolute_url %}

{% assign figure_alt="Sketchnote drawing illustrating the different circles: control inside influence, inside concern." %}

{% capture figure_caption %}
By [discoveryinaction.com.au](https://discoveryinaction.com.au), originally published in [Circle of Concern vs Circle of Control](https://discoveryinaction.com.au/circle-of-concern-v-circle-of-control/)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

In the [7 Habits of Highly Effective People](https://www.goodreads.com/book/show/36072.The_7_Habits_of_Highly_Effective_People), Stephen Covey presents the Circle of Influence. The Circle of Control is an extension to this model. If you want to learn more about the Circle of Control, check Cam's post [How To Stop Worrying – The Circle of Control](http://customizinglife.com/stop-worrying/)

### **An example**

Here is an example we could write when coaching a team that is struggling with legacy code:

> _**We believe that** coaching team X to refactoring techniques._
> 
> _**Will result in** a reduction of their technical debt._
> 
> _**We will know we have succeeded when:**_
> 
> *   _They spend less time bug fixing on library X_
> *   _They manage to reduce cycle time on refactoring tasks on library X_
> 
> _**To run this experiment, I will:**_
> 
> *   _Spend 2 hours per week going through refactoring katas with the team_
> *   _Mob with them for 2 hours on refactoring their production code, twice a week_
> *   _Collect their feedback after every session and use it to improve the next session_

### Outcomes

I've observed 3 consequences of using this template:

1.  **You will be safer!** As long as you are stick to your actions, you are achieving your goal. You have a lot less risk of being blamed for something that is outside of your control. This makes work a lot more sustainable and transparent for everyone.
2.  **You will make your experimental learning explicit!** These objectives are no longer useless bureaucratic things. You can actually use them to iterate and improve the following experiment.
3.  **You will spread the practice!** Chances are that others are struggling with their objectives too. As you share it with them, you might make them aware of the uncertain nature of their environment. Who knows, maybe they'll start to use this template as well!

![A long chain of lab experimental equipment that ends with a brain. Using hypothesis driven development when defining our goals lets us experiment and learn consciously]({{site.url}}/imgs/2021-08-09-how-to-measure-and-report-your-tech-agile-coaching-effectiveness/experiment.jpg)

## Give it a try!

If you currently need to track and report your progress, here is what you can do now:

1.  Write objectives for your current work as you usually do.
2.  Repeat asking yourself the two following questions:
    1.  How can I easily measure this experiment?
    2.  Is this entirely under my control?
3.  Use the answers to guide you as you try to fill the template:

> **We believe that** \<Intention\>
>
> **Will result in** \<Outcome hypothesis\>
>
> **We will know we have succeeded when** \<Outcome signal measure\>
>
> **To run this experiment, I will** \<Measurable actions or habits I can commit to\>

In the next post, I'll present the tips I use to dump measures completely and go #NoGoal whenever I can! [Stay tuned]({{site.url}}/feed.xml)

In the meantime, I'd love to read about your own objective-writing tips. The comment section is yours!

----
Tech coaching can be exhausting at times. Here are other interesting posts that might interest you:

*   [5 technical agile coaching tips to fight exhaustion from laggards]({{site.url}}/5-technical-agile-coaching-tips-to-fight-exhaustion-from-laggards/)
*   [7 tricks to influence a team resisting to change its technical habits]({{site.url}}/7-tricks-to-influence-a-team-resisting-to-change/)
*   [How to coach a team that has been burnt by bad TDD]({{site.url}}/how-to-coach-a-team-that-has-been-burnt-by-bad-tdd/)
*   [How to kill Scrum Zombies?]({{site.url}}/how-to-kill-scrum-zombies/)