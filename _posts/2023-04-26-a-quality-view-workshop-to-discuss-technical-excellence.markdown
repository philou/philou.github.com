---
layout: single-mailing-list
title: A Quality View Workshop to Discuss Technical Excellence
date: "2023-05-11"
comments: true
categories:
- agile
- quality
- continuous improvement
- workshop
- architecture
- coaching
- refactoring
- team building
- collaborative work
description: "Here is a step-by-step workshop to guide a team to drawing a Quality View. Use it to discuss investment in agile technical excellence with stakeholders, foster a culture of quality and collaboration, and empower your team to deliver high-quality software."
header:
  teaser: "/imgs/2023-04-26-a-quality-view-workshop-to-discuss-technical-excellence/missing-a-quality-view-teaser.jpg"
  og_image: "/imgs/2023-04-26-a-quality-view-workshop-to-discuss-technical-excellence/missing-a-quality-view-og.jpg"
variations:
- TODO
---
_Here is a step-by-step workshop to guide a team to drawing a [Quality View](https://blog.colinbreck.com/using-quality-views-to-communicate-software-quality-and-evolution/). Use it to discuss investment in agile technical excellence with stakeholders._


![Drawing of a stick character having trouble seeing through his glasses. The text "Missing a Quality View?" is also written next to him. A Quality View workshop is a wonderful occasion for the whole team to share knowledge about the technical aspects of a codebase, and to trigger discussions about prioritization of technical work.]({{site.url}}/imgs/2023-04-26-a-quality-view-workshop-to-discuss-technical-excellence/missing-a-quality-view.jpg)

> The main problem is not agreeing that technical excellence is essential for the success of the delivery. Corporate culture is 100% focused on feature factory, delivering features at the expense of technical excellence.

> Tools have taken over the meaning. I need to chant "The card is a token for an ongoing conversation" over and over.

> The devs had no say in what stories went into the sprint.

Developers are often stuck in their development roles. They are rarely involved in product management decisions. **Non-technical people are usually not aware of the importance of technical practices.**

Without the required technical work, code degrades, and maintenance increases. Eventually, work becomes less sustainable.

As coaches, we see teams and developers suffering from this situation. From experience, we understand where this is coming from. Yet, **we are often at a loss about how to make the business care about agile technical excellence!** Without enough attention, trying too hard will make us disillusioned and rebellious!

> Wouldn't it be great if you had a trick to make people collaborate? So that they found solutions to deliver features with technical excellence in engineering?

Quality Views could be this trick! Let's see:

1.  How I began to work with Quality Views
2.  A workshop guide to collaboratively build a Quality View
3.  What to do after the workshop

## Quality Views as a trigger for discussions

The company I work at, Murex, has been and is still hiring a lot. Therefore, **onboarding of new developers is a critical topic**. New joiners have a lot to learn:

*   Technical skills
*   The financial domain
*   And a few inevitable obscure pieces of code.

![A photo of 2 feet on a capret writing "Welcome on board". We started using Quality Views at Murex to speed up onboarding.]({{site.url}}/imgs/2023-04-26-a-quality-view-workshop-to-discuss-technical-excellence/welcome-on-board.jpg)

Some teams asked if my team and I could help them to onboard new team members. We had heard how [Colin Breck used Quality Views to tackle technical debt](https://www.infoq.com/presentations/quality-views-technical-debt/). **We had the idea to use Quality Views in a workshop to get the whole team to discuss how to speed up onboarding**.

> I think the most valuable aspects of employing Quality Views are in the discussions that take place in forming the quality dimensions, evaluating the various components, and prioritizing the work. (Colin Breck - [Reflections on Using Quality Views](https://blog.colinbreck.com/reflections-on-using-quality-views/))

**Our goal was to trigger onboarding discussions between developers and non-technical stakeholders.** It should lead to knowledge-sharing or onboarding-time-reduction actions being prioritized.

To learn more about Quality Views, I highly recommend you to read these two posts from Colin Breck:

*   [Using Quality Views to Communicate Software Quality and Evolution](https://blog.colinbreck.com/using-quality-views-to-communicate-software-quality-and-evolution/)
*   [Reflections on Using Quality Views](https://blog.colinbreck.com/reflections-on-using-quality-views/)

If you prefer videos, you can also check his [QCon talk](https://www.infoq.com/presentations/quality-views-technical-debt/).

We came up with a workshop involving the whole team, including Product Owner. Here is the skeleton:

1.  Developers collaboratively build a Quality View of their codebase.
2.  They annotate it with their capability to work in the different modules.
3.  Then, the view is decorated with the expected impact of upcoming features.
4.  With this complete Quality View, participants agree on the hotspots to work on.
5.  Finally, they come up with concrete actions to make onboarding easier.

{% assign figure_path="/imgs/2023-04-26-a-quality-view-workshop-to-discuss-technical-excellence/final-quality-view.jpeg" | absolute_url %}

{% assign figure_alt="Screenshot of the final Quality View, with hotspots and all visual information. Note the addition of flames on hotspots modules." %}

{% capture figure_caption %}
Here is an example of what the Quality View looked like when we ran it on the [TCR tool](https://github.com/murex/TCR) my team at Murex is building. I'll be using this as example throughout the blog post to illustrate the steps.
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

Different teams did the workshop. Here is the feedback we collected a few months later:

> The graph output helps to iterate and can be used repeatedly to inform decisions. (A Product Owner)

> What I liked the most about the workshop was the interaction between all the team members (A Tech Lead)

> Following the workshop, we did some actions regarding documentation and API simplification. (A Tech Lead)

**Building a Quality View as a team is an occasion to discuss crucial yet overlooked topics.**

Technical excellence in engineering falls in this class of topics! In our case, the starting point was onboarding, but people talked about:

*   Business risks
*   Technical debt management
*   Workload, stress, and sustainable pace.

## A whole-in workshop to create a Quality View

Tech-Leads have a pretty good knowledge of their codebase. So they could draw an accurate Quality View by themselves. Through our coach's goggles, though, this is a missed opportunity for collaboration!

> People and collaboration over processes and tools (Agile Manifesto)

That's why **it's better to build the Quality View together**. Below are detailed steps to collaboratively draw a Quality View.

I usually run workshops in a series of 90 minutes sessions:

*   It's a sustainable pace for remote.
*   And it leaves time for people to do "homework" or data gathering between sessions.

Two sessions are usually enough, but your mileage may vary.

### 1\. Define your quality characteristics

First, before the workshop, define the quality characteristics you will be using. You can select them alone as a workshop designer if they are obvious. You can also have a short brainstorming and voting session if it makes more sense.

> The categories that I developed are not prescriptive—the categories were simply the most important aspects to my team at the time. (Colin Breck - [Reflections on using Quality Views](https://blog.colinbreck.com/reflections-on-using-quality-views/))

Here are the characteristics we used for a team working within a legacy monolith:

*   Size of module
*   Code complexity
*   Testing
*   Number of bugs in the last six months
*   The capability of team members to work in a module

### 2\. Homework

**Before the workshop, ask people to collect data on the quality characteristics**.

If you have read Colin Breck's posts, you might be thinking: "Wait! That's not what Colin said!":

> Objective measures are no panacea. It is not hard to envision a component with exhaustive unit-test coverage, that is difficult to evolve and deploy, and fails to meet business requirements in terms of performance, high-availability, or security. This is why quality needs to be represented more comprehensively, often with qualitative measures. (Colin Breck - [Reflections on using Quality Views](https://blog.colinbreck.com/reflections-on-using-quality-views/))

Metrics are great conversation triggers. Ask different people to collect different metrics. This way, **data will serve as a basis for discussion but will only weigh a little**. As you'll see later, visualization will remain very qualitative.

### 3\. Prepare a formalism

**To collaboratively design a Quality View of a codebase, people need to agree on how to represent it.** Of course, you can do this alone as a workshop designer, but I encourage you to get as much feedback from the team as you do.

> This visual representation can become even richer, however, with the addition of information related to software quality and how the system is evolving. (Colin Breck - [Using Quality Views to Communicate Software Quality and Evolution](https://blog.colinbreck.com/using-quality-views-to-communicate-software-quality-and-evolution/))

Here is what we used in our example:

![Screenshot of the template we have been using to draw modules in Quality Views]({{site.url}}/imgs/2023-04-26-a-quality-view-workshop-to-discuss-technical-excellence/quality-view-module-template.jpeg)

*   **Boxes** for code modules
*   **Size of the box** for the size of the module
*   **Color of the box** for the code quality
*   **Weather icons** to represent the testing
*   **Lines between boxes** for dependencies.
*   **Bug icons** for bugs in a module
*   **Colored avatars** for the capability to work in a module
*   **Alien icons** to tag modules that are not owned by the team

The goal is not to have a formal design document. But you must have something visual that creates shared understanding and triggers conversations.

### 4\. Overall view

![Screenshot of my first tentative at drawing the Quality View for the TCR repo we are working on. I had not yet coded a lot in there, so it was very rough.]({{site.url}}/imgs/2023-04-26-a-quality-view-workshop-to-discuss-technical-excellence/quality-view-with-boxes.jpeg)

> I wanted to experiment with extending it to combine 1) our architecture diagram with 2) Tufte's dense visual presentation of information and 3) my colleague's stacked bar-graph approach, to show both the quality of the components and the evolution of our system. (Colin Breck - [Using Quality Views to Communicate Software Quality and Evolution](https://blog.colinbreck.com/using-quality-views-to-communicate-software-quality-and-evolution/))

Let's start the workshop finally! **The first step is to draft the system, using only boxes for modules and lines for dependencies.** So use plenty of stickies or an online whiteboard (Miro, Mural, Powerpoint online, or Google Slides...).

Lines don't need to be oriented. Rough dependency visualization is good enough to have a conversation.

The 1-2-4-all scheme does wonders:

*   Everyone gets 5 minutes of solo work to roughly draft the system.
*   10 minutes in pairs to merge their draft
*   20 minutes in groups of four to merge further
*   20 to 30 minutes to merge with the whole team

If the group cannot agree, either redo a round or stop the session and ask for homework to clear things out.

Note: if you are running the workshop remotely, [use 1-3-all instead of 1-2-4-all.](https://medium.com/the-liberators/my-experience-with-using-liberating-structures-online-452a756c02f0) It's much easier to manage with breakout rooms.

### 5\. Size of modules

![Screenshot of the Quality View where everyone's draft has been merged, and the module boxes have been resized according to the size of their code]({{site.url}}/imgs/2023-04-26-a-quality-view-workshop-to-discuss-technical-excellence/quality-view-with-sized-boxes.jpeg)

You now have an agreement on the high-level design. So, **do another round of 1-2-4-all to resize the boxes according to the size of the modules**. This step is faster than the previous one, so shorten the timings for the 1-2-4-all steps.

In remote, it's easy to clone the model from the previous step so that everyone can have their own.

If co-located, pick a mid-sized module and agree on it as the standard. Then ask participants to draw modules of relative sizes on paper. They don't need to replicate the dependencies.

Some participants will know the exact number of lines of code. Others will use their intuition. This will generate interesting discussions.

> It is the qualitative aspects, involving our intuition and experience, that are more valuable than any set of quantitative metrics. (Colin Breck - [Reflections on using Quality Views](https://blog.colinbreck.com/reflections-on-using-quality-views/))

Finish by updating the central model.

### 6\. Code quality

![Screenshot of a Quality View where the module boxes have been colored to match the quality of the code. We see here that some parts are starting to get messy.]({{site.url}}/imgs/2023-04-26-a-quality-view-workshop-to-discuss-technical-excellence/quality-view-with-quality-color.jpeg)

> Is the code itself in good shape? Is it well factored? Is it maintainable? Is it reasonably easy to extend the application to add new functionality? (Colin Breck - [Using Quality Views to Communicate Software Quality and Evolution](https://blog.colinbreck.com/using-quality-views-to-communicate-software-quality-and-evolution/))

Repeat the same process as above to color the modules according to the quality.

### 7\. Testing

![Quality view screenshot, now decorated with weather icons representing how well tested the modules are. We see here that almost everything is well tested: not surprisingly we have been using TDD to build the TCR tool!]({{site.url}}/imgs/2023-04-26-a-quality-view-workshop-to-discuss-technical-excellence/quality-view-with-test-weather.jpeg)

> Does the component have tests to support making changes without introducing regressions or undue risk? Are the tests repeatable and reliable, and can they be executed in a reasonable time-frame? (Colin Breck - [Using Quality Views to Communicate Software Quality and Evolution](https://blog.colinbreck.com/using-quality-views-to-communicate-software-quality-and-evolution/))

Again, do the same thing for testing. Decorate the modules of the central model with weather icons to show how they are tested.

### 8\. Capability

![Screenshot of the Quality Views decorated with capability icons. We see here that there is basically one expert and one or two newbies on the codebase.]({{site.url}}/imgs/2023-04-26-a-quality-view-workshop-to-discuss-technical-excellence/quality-view-with-capabilities.jpeg)

> Does the component carry significant business risk? This might include code that was developed by an individual that has departed the company that no one else is familiar with; code that is not in one of the primary programming languages used by the development team; (Colin Breck - [Using Quality Views to Communicate Software Quality and Evolution](https://blog.colinbreck.com/using-quality-views-to-communicate-software-quality-and-evolution/))

In our story above, **the workshop's goal was to tackle onboarding and knowledge sharing. It's associated with the "Bus Factor" risk**. Here is an example of how you can track this risk.

Everyone annotates each module with their confidence to add a feature there.

Murex has been using [Situational Leadership 2](https://www.kenblanchard.com/Solutions/SLII) for a long time, so we piggybacked on it. It provides four development levels of capability that are easy to self-assess:

*   D1: "I know nothing, but I am eager to start!"
*   D2: "I know enough to know that I'm going to suffer when I try."
*   D3: "I guess I'll manage, but I'm always a bit scared to do this..."
*   D4: "I've done this many times, don't worry, I'll handle it."

Before session homework! Everyone was to watch this short video of Situational Leadership 2.

<iframe width="560" height="315" src="https://www.youtube.com/embed/pykuvuA-QFU" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>

We then asked participants to place a small colored box with their names on the module. We used red for D1, orange for D2, yellow for D3, and green for D4. We reorganized these icons as histograms. These histograms represent the Bus Factor risk profile of every module.

This was just one example of our situation. **For each relevant business risk, take the time to prepare a specific activity.**

### 9\. Bugs

![Quality view now decorated with bug icons, showing which modules where impacted by bug fixes in the previous months.]({{site.url}}/imgs/2023-04-26-a-quality-view-workshop-to-discuss-technical-excellence/quality-view-with-bugs.jpeg)

This is when the Quality View starts to receive delivery data. At the beginning of the workshop, we gave homework to track lines of code affected by bug fixes in the past six months.

Have the people who collected the bugs info **place one 🐞 icon on a module every time it was modified in a bug fix**. In the end, you should get a good idea of which modules are sources of bugs.

This is also an excellent occasion to take a step back and discuss this view with everyone.

### 10\. Upcoming features

> Since becoming a [team lead](https://blog.colinbreck.com/on-being-a-team-lead-welcome-to-our-team/), I have been looking for ways to communicate two things regarding the software our team is responsible for. The first is the current state of the software. I want to communicate the quality of the system in terms of business risks—the reliability, scalability, and security of the system, as well as how receptive the software is to change, in order to meet future business needs. (Colin Breck - [Using Quality Views to Communicate Software Quality and Evolution](https://blog.colinbreck.com/using-quality-views-to-communicate-software-quality-and-evolution/))

**This is the moment to get product stakeholders in.** Before anything, please take a moment to present the Quality View and answer their questions. They will love it! It's often the first time they can understand what "Under the Hood" is.

Ask them to **list the upcoming features they are thinking of.** Target something like 3 to 6 months, depending on the rhythm of your business.

Also, ask them to sort these features into three value buckets:

*   High value
*   Medium value
*   Low value

![Screenshot of the slide that lists the upcoming features for the TCR tool. We estimated the value of each one with diamonds.]({{site.url}}/imgs/2023-04-26-a-quality-view-workshop-to-discuss-technical-excellence/upcoming-features.jpeg)

Wait to try to map these features to the Quality View. The team will do that just after.

### 11\. Future impacts

![Quality view now decorated with diamond icons, showing which modules we expect to impact in the upcoming months]({{site.url}}/imgs/2023-04-26-a-quality-view-workshop-to-discuss-technical-excellence/quality-view-with-diamonds.jpeg)

> I want to communicate the quality of the system in terms of business risks [...] A legacy component that lacks test coverage, or developer expertise, could be extremely difficult, risky, and costly to change, whereas a well-designed, well-factored application, with good test coverage and developers familiar with the code, might be evolved reliably and efficiently. (Colin Breck - [Using Quality Views to Communicate Software Quality and Evolution](https://blog.colinbreck.com/using-quality-views-to-communicate-software-quality-and-evolution/))

Developers will try to predict what modules will be changed soon. Ask them to **list, for each feature, the affected modules.** Use rounds of 1-2-4-all (see Steps 4 and 5) to aggregate predictions.

Finally, for each feature, add diamonds to every impacted module:

*   Each module involved in a high-value feature will get three diamonds (💎💎💎)
*   Each module involved in a medium-value feature will get two diamonds (💎💎)
*   Each module involved in a low-value feature will get one diamond (💎)

Some modules might get plenty of diamonds!

### 12\. Hotspots

![Screenshot of the final Quality View, with hotspots and all visual information. Note the addition of flames on hotspots modules.]({{site.url}}/imgs/2023-04-26-a-quality-view-workshop-to-discuss-technical-excellence/final-quality-view.jpeg)

> Quality views are not about features _versus_ quality. They arise from the understanding that in order to deliver high-quality systems, business objectives and customer requirements must be met, or exceeded. It is fine to keep focusing on features, but if customers cannot realize those features reliably, then nothing else matters. (Colin Breck - [Reflections on using Quality Views](https://blog.colinbreck.com/reflections-on-using-quality-views/))

At this point, all participants should have a 360º of the situation.

Unfortunately, you won't be able to fix everything. Yet participants have all the information they need to make wise investments.

**Give each participant 3 "dots" that they can place on the module (or dependency) they want to focus on.** For example, in our workshops, we use flame icons (🔥).

The modules with the most dots are your "Hotspots." Hotspots are areas of the code that are at risk of slowing down delivery.

### 13\. Discuss and Decide what to do

> The Quality View invites a holistic view of the system. When I presented a similar scenario at a quarterly-planning meeting, our Director of Product Development remarked: _"How come those two components are still so red!?"_. A constructive discussion followed, where we all came to the agreement that investing in these components would not be cost effective. We were comfortable accepting the short-term risks. (Colin Breck - [Using Quality Views to Communicate Software Quality and Evolution](https://blog.colinbreck.com/using-quality-views-to-communicate-software-quality-and-evolution/))

The Quality View is complete, and everyone understands it. So it's an excellent time to have the extensive all-in discussion you wanted to trigger.

Bring the prioritization topic forward. **Stakeholders will be more conscious of technical tradeoffs now. As a result, the team should be able to build a more realistic and long-term plan.** Decisions should take both features and agile technical excellence into account.

## After the workshop

### Strike the iron while it's hot!

![A photo of a blacksmith hammering hot iron on an anvil. Just after a successful workshop is the best time to continue and make big decisions fast.]({{site.url}}/imgs/2023-04-26-a-quality-view-workshop-to-discuss-technical-excellence/forge.jpg)

Feel free to run a follow-up workshop focusing on different aspects. For example:

*   [Mapping current to vision]({{site.url}}/rewrite-vs-refactor-get-insights-from-event-storming-and-ddd/) To decide if you should rewrite or refactor a component.
*   Building a [Core Domain Chart](https://www.eventstormingjournal.com/big%20picture/decide-to-build-or-buy-with-big-picture-event-storming/) To identify a refactoring strategy for a component. Example: thorough refactoring, cosmetic refactoring, or replacing in-house code with a third party...
*   You can invent any follow-up workshop for your specific challenges. For example, here is how we ran activities to speed up onboarding.

### Onboarding at Murex

Remember how this post started. We ran these workshops to speed up onboarding and increase knowledge sharing. So in our case, we ran two extra activities after the Quality View:

*   A give-and-take matrix (link) to collect everyone's needs and potential help.
*   An activity to refine help suggestions into [SMART](https://en.wikipedia.org/wiki/SMART_criteria) and collective actions.

Teams ended up with very focused and high-impact actions like:

> Next time Sally needs to debug module X, we will pair. I will show the key places to add breakpoints, and we will go through debugging together.

Participants liked that these actions were concrete and laser-focused. Compare this to the typical evasive knowledge-sharing actions: "Let's write some documentation."

### Follow-up

![A photo of a path enclosed in vegetation. As coaches we can build on this first workshop to make sure change happens.]({{site.url}}/imgs/2023-04-26-a-quality-view-workshop-to-discuss-technical-excellence/continue-tunnel.jpg)

As coaches, your main work after the workshop is to make sure these actions are prioritized and done. Insist that the team adds them to its backlog. Don't hesitate to **gently provoke team members if you see that nothing happens**.

Finally, **nudge the team to re-run the workshop regularly**. Updating a Quality View is much faster than creating it for the first time. Please don't make it too short, though: **new joiners should try to sketch a Quality View by themselves**. It's an excellent chance to discover the system one is part of.

## Here is what you can do now

**Next time you work with a team that has no time for 'back-office' technical work, give this workshop a try!** It's bound to trigger interesting discussions with all stakeholders.

On top of that, drawing a Quality View collaboratively is a great way to share knowledge within the team.

## Other posts that might interest you

- [5 Whole-Team Workshops To Increase Developers’ Role In Sprint Planning]({{site.url}}/5-whole-team-workshops-to-increase-developers-role-in-sprint-planning/)
- [How to coach developers to get a chat with their product experts]({{site.url}}/how-to-coach-developers-to-get-a-chat-with-their-product-experts/)
- [How to estimate velocity in Scrum to escape the feature factory]({{site.url}}/how-to-estimate-velocity-in-scrum-to-escape-the-feature-factory/)
- [Leverage Scrum to workaround feature-factory sprint planning]({{site.url}}/leverage-scrum-to-workaround-feature-factory-sprint-planning/)
- [A complete workshop for your team to see what’s a good test strategy]({{site.url}}/a-complete-workshop-for-your-team-to-see-what-s-a-good-test-strategy/)