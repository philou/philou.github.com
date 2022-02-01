---
layout: single-mailing-list
title: "5 Whole-Team Workshops To Increase Developers' Role In Sprint Planning"
date: 2021-11-04
comments: true
categories:
- bdd
- ddd
- coaching
- refactorging
- example mapping
- event storming
- technical debt
- gamification
description: "Unfortunately, developers are often lacking influence over product and planning decisions 😞. Here are five activities to run with the whole team to increase not only the developers' role in sprint plannings, but also collaboration, engagement, and value creation!"
header:
  teaser: "/imgs/2021-10-30-5-whole-team-workshops-to-increase-developers-role-in-sprint-planning/5-activities-for-developer-voice-teaser.jpg"
  og_image: "/imgs/2021-10-30-5-whole-team-workshops-to-increase-developers-role-in-sprint-planning/5-activities-for-developer-voice-og.jpg"
variations:
- Here are 5 whole-team activities to increase not only the developers' role in #sprintPlannings, but also collaboration, engagement, and value creation! #technical #agileCoaching #bdd #productManagement
- Wouldn't it be great if we knew ways to make all stakeholders -- product experts, developers, and quality people -- collaborate to plan what goes into the sprint? #technical #agileCoaching #bdd #productManagement #sprintPlanning
- Each of these activities should increase the developers' role in #sprintPlanning. #technical #agileCoaching #bdd #productManagement
- Did you try to run a #codeKata to learn #exampleMapping? Any kata with enough 'domain' will do. For example, the Mars Rover Kata (https://kata-log.rocks/mars-rover-kata) is a great fit. #technical #agileCoaching #bdd #productManagement
- Mapping all domain events on the #EventStorming board will make negotiating the scope of the next milestone straightforward. A great occasion for developers to influence planning! #technical #agileCoaching #bdd #productManagement #sprintPlanning
- The Built-In Quality Game (https://philou.github.io/built-in-quality-game/) lets everyone experience how investing in engineering practices speeds up feature delivery. #technical #agileCoaching #bdd #productManagement #gamification
- Discover a few serious, whole-team games that should make business people care more about sound engineering. #technical #agileCoaching #bdd #productManagement #gamification
- Without enough collaboration, product, development, and quality experts can only optimize locally. Here are a few tricks to make them coordinate to tackle the problem as a whole. #technical #agileCoaching #bdd #productManagement #continuousImprovement
- If product and quality people take part in defining the next improvement action, they are more likely to sponsor it during sprint plannings! #technical #agileCoaching #bdd #productManagement #continuousImprovement
- The Test-Strategy workshop is an instance of Toyota's #improvementKata in disguise: it's a long-term quest! #technical #agileCoaching #bdd #productManagement #continuousImprovement
- A #solutionFocused activity is a nice way for the full team to agree on a small #refactoring increment. #technical #agileCoaching #bdd #productManagement #continuousImprovement
- As you run more of these activities, the developers' role in the #sprintPlanning should grow. #technical #agileCoaching #bdd #productManagement
- What are your tricks to increase the developers' role at the #sprintPlanning? #technical #agileCoaching #bdd #productManagement
---
_Run these activities with the whole team to increase not only the developers' role in sprint plannings, but also collaboration, engagement, and value creation!_

![Drawing of a hand representing 5 activities, and a developer with a growing voice under the caption @ Sprint Planning. Here are 5 activities to increase developers' role in sprint plannings.]({{site.url}}/imgs/2021-10-30-5-whole-team-workshops-to-increase-developers-role-in-sprint-planning/5-activities-for-developer-voice.jpg)

> Tools have taken over the meaning. I need to chant "The card is a token for an ongoing conversation" over and over. (George Paci [extremeprogramming@groups.io](https://groups.io/g/extremeprogramming/topic/what_has_changed_for_you_over/39418691?p=Created,,,200,1,0,0))

> The devs had no say in what stories went into the sprint (David Kramer [extremeprogramming@groups.io](https://groups.io/g/extremeprogramming/topic/what_has_changed_for_you_over/39418691?p=Created,,,200,1,0,0))

> [ndlr: In Parallel to] The rise of the 'Product Manager' job, which is a strange combo of a member of the sales organization and a surrogate user. Engineers no longer can talk to users. (Slava Imeshev [extremeprogramming@groups.io](https://groups.io/g/extremeprogramming/topic/what_has_changed_for_you_over/39418691?p=Created,,,200,1,0,0))

Nowadays, it looks like developers are often stuck in their development roles. They are rarely involved in product management decisions. In this context, they receive user stories like "tasks to do."

From a rational point of view, we can explain this situation with two typical human biases:

*   We tend to underestimate the importance of soft topics. Here, we overlook the impacts of collaboration, trust, understanding, and implication.
*   We tend to keep things for ourselves because we want to stay in control.

Yet, as coaches, we see teams and developers suffering from this situation. Sure, we understand where this is coming from... We are humans, not 100% rational robots, though! As a result, it's easy to fall into disillusion or rebellion!

> Wouldn't it be great if you knew ways to make all stakeholders -- product experts, developers, and quality people -- collaborate to plan what goes into the sprint?

Here are 5 whole-team workshops to build team spirit and trust between stakeholders. Eventually, they should make everyone collaborate towards the same direction:

1.  [Practice an Example Mapping kata]({{site.url}}/5-whole-team-workshops-to-increase-developers-role-in-sprint-planning/#1-practice-an-example-mapping-kata)
2.  [Agree on a scope with a Big-Picture Event Storming]({{site.url}}/5-whole-team-workshops-to-increase-developers-role-in-sprint-planning/#2-agree-on-a-scope-with-big-picture-event-storming)
3.  [Play the built-in quality game]({{site.url}}/5-whole-team-workshops-to-increase-developers-role-in-sprint-planning/#3-play-the-built-in-quality-game)
4.  [Agree and improve a whole-team test strategy]({{site.url}}/5-whole-team-workshops-to-increase-developers-role-in-sprint-planning/#4-agree-and-improve-a-whole-team-test-strategy)
5.  [Address technical debt from a business perspective]({{site.url}}/5-whole-team-workshops-to-increase-developers-role-in-sprint-planning/#5-address-technical-debt-from-a-business-perspective)

**Each of these activities should increase the developers' role in sprint planning.** And guess what, greater collaboration on planning is not only good for developers! As a second-order effect, it will:

*   Improve product management decisions
*   Increase developer motivation
*   Reduce developer stress
*   And finally, increase the value creation.

It's a clear win-win for everyone!

## 1. Practice an Example Mapping kata

{% assign figure_path="/imgs/2021-10-30-5-whole-team-workshops-to-increase-developers-role-in-sprint-planning/example-mapping-cards.jpg" | absolute_url %}

{% assign figure_alt="Illustrative Example-Mapping cards in their typical layout. Example-Mapping is a format for quick and cheap, domain-heavy conversation. It's a lightweight and informal way to bootstrap more collaboration with product experts, and eventually increase the developers' role in sprint planning." %}

{% capture figure_caption %}
Sample Example-Mapping cards on the introductory [post about Example-Mapping](https://cucumber.io/blog/2015/12/08/example-mapping-introduction), by [Matt Wynne](https://twitter.com/mattwynne?lang=fr)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

I already wrote about [how to inject Example-Mapping]({{site.url}}/how-to-coach-developers-to-get-a-chat-with-their-product-experts/) into your process. **It is also possible to run a kata to learn Example-Mapping. Any kata with enough 'domain' will do. For example, the [Mars Rover Kata](https://kata-log.rocks/mars-rover-kata) is a great fit.** Here is how to do:

*   Invite the product and quality experts.
*   Hand the kata specs to the product person, but don't say a word to others.
*   Make them run the example mapping to discover the specs.

_If you don't know the Example Mapping workshop yet, you can learn more about it in [these posts]({{site.url}}/categories/#example-mapping)._

## 2. Agree on a Scope with Big-Picture Event Storming

![Drawing of an Event Storming workshop where we can see the participants discussing in front of the 'infinite design board'. Big Picture Event Storming is a great workshop to kickstart intense collaboration between all participants right from the start of a new project. As a result, it also increases the developer's role in sprint plannings.]({{site.url}}/imgs/2021-10-30-5-whole-team-workshops-to-increase-developers-role-in-sprint-planning/event-storming.jpeg)

A new target is a perfect occasion to run a [Big-Picture Event Storming]({{site.url}}/how-to-prepare-a-ddd-big-picture-event-storming-workshop/). Propose one next time the team starts a new product, a new important feature, or some rearchitecting. There are at least three collaboration benefits:

1.  Participants will collaborate closely during the workshop. As a consequence, all stakeholders will know and trust each other more. Trust is the foundation for more collaboration on planning.
2.  Often, developers accumulate a huge domain-knowledge debt. Big-Picture Event Storming is an accelerated way to pay it back. With more domain knowledge, developers' role in the sprint planning will increase.
3.  **Participants will map out all domain events on the design board. This makes negotiating the scope of the next milestone straightforward. It's a perfect occasion for developers to have a massive influence on planning.** Here is a post explaining how to use Big Picture Event Storming to agree on a target scope in more detail.

_I've [written a lot about Event Storming]({{site.url}}/categories/#event-storming) in the past. [Misadventures with Big Design Up-Front]({{site.url}}/misadventures-with-big-design-up-front/) is a good starting point. (Note: My colleague [Matthieu Tournemire](https://www.linkedin.com/in/matthieu-tournemire) and I have created the [Event Storming Journal](https://murex.github.io/EventStormingJournal), a blog dedicated to demystifying Event Storming)_

## 3. Play the built-in quality game

{% assign figure_path="/imgs/2021-10-30-5-whole-team-workshops-to-increase-developers-role-in-sprint-planning/1-team-small.jpeg" | absolute_url %}
    
{% assign figure_alt="A close-up photo of a team playing the Built-In Quality Game. By getting the whole-team, and especially product experts, to experience the benefits of sound engineering practices, the developers's role in sprint plannings should increase" %}
    
{% capture figure_caption %}
From [the Built-in Quality Game](https://philou.github.io/built-in-quality-game/) under [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/)
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

Often, developers are absent from planning by sheer ignorance. Many business stakeholders ignore the impact of omitting some technical practices.

[Nobody Ever Gets Credit For Fixing Problems That Never Happened](https://web.mit.edu/nelsonr/www/Repenning=Sterman_CMR_su01_.pdf) explains this situation. It concludes that serious games are a way to get everyone more aligned. The [Built-In Quality Game]({{site.url}}/a-serious-game-for-learning-built-in-quality-at-the-source/) could be such a game. We invented it as a fun alternative to formal training. **It lets everyone experience how investing in engineering practices speeds up feature delivery.**

Here are two other games to raise awareness about technical debt:

*   [Dice of Debt Game](https://www.agilealliance.org/dice-of-debt-game/)
*   [Catch the moon](https://studiobombyx.com/en/jeu/catch-the-moon/)

[![A poster I created to explain people how to play "Catch the Moon" and experience what it's like to add new features in legacy code. Playing this kind of games with the whole team can increase the developers' role in sprint plannings.]({{site.url}}/imgs/2021-10-30-5-whole-team-workshops-to-increase-developers-role-in-sprint-planning/catch-the-moon-instructions-small.jpg)]({{site.url}}/imgs/2021-10-30-5-whole-team-workshops-to-increase-developers-role-in-sprint-planning/catch-the-moon-instructions.jpg)

Hopefully, **these games should make business people care more about sound engineering**. As a result, they should pay more attention to developers during sprint plannings.

_The [Built-In Quality Game](https://philou.github.io/built-in-quality-game/) is open source, and you can download all the material to run it from [GitHub](https://github.com/philou/built-in-quality-game)._

## 4. Agree and improve a whole-team test strategy

At work, many teams have the long-term goal of 'inverting the [test pyramid](https://martinfowler.com/bliki/TestPyramid.html).' Although a worthy goal, teams don't necessarily know how to get there by themselves. **Without enough collaboration, product, development, and quality experts were only optimizing locally. They need more coordination to tackle the problem as a whole.**

[![The template Miro board for the Test Strategy Workshop we use at work. The workshop ends we drafting test-improvement initiatives to be prioritized in the sprint planning]({{site.url}}/imgs/2021-10-30-5-whole-team-workshops-to-increase-developers-role-in-sprint-planning/test-strategy-workshop-template-small.jpg)]({{site.url}}/imgs/2021-10-30-5-whole-team-workshops-to-increase-developers-role-in-sprint-planning/test-strategy-workshop-template.jpg)

We created and have now run the 'Test Strategy Workshop' with a few teams. The goal is for them to embark on a test improvement journey together. It's a multi-stage workshop that spans many short sessions. Here is how the workshop goes:

1.  Introduction to the topic.
2.  Homework and presentation of the different kinds of tests in the industry.
3.  Drawing of the industry's ideal test pyramid.
4.  Drawing of the team's current test pyramid.
5.  Collaborative "Test Strategy Canvas" to agree on how the team is currently testing.
6.  [Solution Focused activity](http://bilal.eltayara.net/blog/2016/06/18/a-simple-way-to-run-a-solution-focused-retrospective/) to define the next improvement to "invert their pyramid."

**Product and quality people take part in defining the next improvement. As a result, they are more likely to sponsor test improvement during sprint plannings.**

> It was also an occasion to learn more about our own tests. It was as if we climbed up a tree and saw the whole testing forest unfold before our eyes. (Mirna)

> Even if some team members were already aware of testing techniques, testing best practices, this workshop gives the possibility to share a common vision between all the team members. (Patrice)

**This workshop is [Toyota's Improvement Kata](https://en.wikipedia.org/wiki/Toyota_Kata#The_Improvement_Kata) in disguise: it's a long-term quest!** Once a team delivers an improvement, they should re-run the workshop to agree on the next step! Every run will strengthen the collaboration among the stakeholders.

_Tell me if you would like me to write about this workshop in more detail._

## 5. Address technical debt from a business perspective

{% include video id="YolrizOG_ao" provider="youtube" %}

In this talk, [Jürgen De Smet](https://www.linkedin.com/in/jurgendesmet/) presents a workshop to make everyone agree about how to deal with bugs. It uses bugs as the visible part of the technical debt iceberg. Its structure is close to that of the test strategy workshop I wrote about above:

1.  The whole team gathers to agree on how to classify and deal with bugs. Some categories of bugs will be fixed, while others will be parked.
2.  After a while, they meet again to analyze parked bugs. The goal is to identify a sub-system where refactoring would fix a lot of these bugs. 
3.  **They then run a Solution Focused activity to agree on a small refactoring increment.**
4.  They regularly go through the workshop to keep the momentum.

I have not yet tried this workshop with teams. Yet, Jürgen obviously did, and it looks promising enough that I mention it.

## Call to action

![Photograph of a rock climber nearing the horizon. Increasing developers' role in sprint plannings is a long-term endeavor. Each of these workshops should get you closer, one step at a time.]({{site.url}}/imgs/2021-10-30-5-whole-team-workshops-to-increase-developers-role-in-sprint-planning/climber.jpg)

Are you coaching a team in which developers are the mere executors of the business people's plans? In this case, give these workshops a try!

The first one might not create a revolution, but it will start to move the needle. **As you run more of these activities, the developers' role in the sprint planning should grow.**

What about you? Please share your tricks to increase the developers' role at Sprint Plannings?

## Other articles that might interest you

Here are other related articles that you read to dig further:

*   [How to convince your business of sponsoring a large scale refactoring]({{site.url}}/how-to-convince-your-business-to-sponsor-a-large-scale-refactoring/)
*   If you want to learn other ways to inject DDD in your organization, check [Organization refactoring: Event Storming and DDD injection]({{site.url}}/organization-refactoring-event-storming-and-ddd-injection-part-1/)
*   If you want to read how we invented the Built-in Quality Game at work, read [A serious game for learning ‘built-in quality at the source’]({{site.url}}/a-serious-game-for-learning-built-in-quality-at-the-source/)
*   My complete guide about how to run your first Big Picture Event Storming starts with [Misadventures with Big Design Up Front]({{site.url}}/misadventures-with-big-design-up-front/)
*   [How to run your first improvement kata]({{site.url}}/how-to-run-your-first-improvement-kata/)