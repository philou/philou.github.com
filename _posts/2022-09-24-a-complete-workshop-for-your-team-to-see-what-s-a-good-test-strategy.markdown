---
layout: single-mailing-list
title: A complete workshop for your team to see what's a good test strategy
date: "2022-09-29"
comments: true
categories:
- testing
- coaching
- team building
- collaborative work
- improvement kata
description: "Software teams often disagree about what is a good test strategy! So here is a whole-team workshop to agree on names for the different kinds of software tests and capture current practices. After filling a test strategy canvas, the workshop ends by defining and planning testing improvements."
header:
  teaser: "/imgs/2022-09-24-a-complete-workshop-for-your-team-to-see-what-s-a-good-test-strategy/different-test-vocabulary-teaser.jpg"
  og_image: "/imgs/2022-09-24-a-complete-workshop-for-your-team-to-see-what-s-a-good-test-strategy/different-test-vocabulary-og.jpg"
variations:
- A lack of testing strategy leads to many problems like holes in the test harness, which lead to bugs and rework #technical #agileCoaching #teamwork #softwareTesting
- A lack of testing strategy leads to many problems like a slow testing feedback loop #technical #agileCoaching #teamwork #softwareTesting
- A lack of testing strategy leads to many problems like an increased test maintenance burden #technical #agileCoaching #teamwork #softwareTesting
- Wouldn't it be great if engineers regularly aligned on testing terms? #technical #agileCoaching #teamwork #softwareTesting
- During a test strategy workshop, team members learn the industry's testing best practices and compare their own practices #technical #agileCoaching #teamwork #softwareTesting
- During a test strategy workshop, team members agree and capture testing terms #technical #agileCoaching #teamwork #softwareTesting
- During a test strategy workshop, team members agree about who, how, and when they should test the different aspects of their system #technical #agileCoaching #teamwork #softwareTesting
- During a test strategy workshop, team members, as a whole team, define and plan an improvement to their testing strategy #technical #agileCoaching #teamwork #softwareTesting
- Teams often disagree about what is a good test strategy! #technical #agileCoaching #teamwork #softwareTesting
- The team had to overcome a new threshold to further improve their testing. That's why we tried the test strategy workshop. #technical #agileCoaching #teamwork #softwareTesting
- DIY vocabulary for the different kinds of software tests is an hint to run a test strategy workshop #technical #agileCoaching #teamwork #softwareTesting
- Blurry testing terms are a common symptom of not thinking about "What is a good test strategy for our team?" #technical #agileCoaching #teamwork #softwareTesting
- 🎁 With better testing comes more sustainable and calmer work! #technical #agileCoaching #teamwork #softwareTesting
- During the test strategy workshop, we asked each team member to present a kind of test. #technical #agileCoaching #teamwork #softwareTesting
- After digging through their test metrics, the team could draw its own test pyramid. #technical #agileCoaching #teamwork #softwareTesting
- The Test Strategy canvas is a one-page template that summarizes how a team tests its software. #technical #agileCoaching #teamwork #softwareTesting
- One of the goals of the test strategy workshop is to agree on names for the different kinds of software tests. #technical #agileCoaching #teamwork #softwareTesting
- Re-running the test strategy workshop is also a good onboarding activity for new joiners. #technical #agileCoaching #teamwork #softwareTesting
- Finishing the test strategy workshop with a solution-focus activituy constrains the size of improvements to something small and manageable. #technical #agileCoaching #teamwork #softwareTesting
- A key benefit of coming up with this improvements with the whole team is that they are already prioritized! #technical #agileCoaching #teamwork #softwareTesting
- A nice side effect is that putting tests in place often involves paying back technical debt! #technical #agileCoaching #teamwork #softwareTesting
- The test strategy workshop uses the way of communication, collaboration, and collective decision-making. #technical #agileCoaching #teamwork #softwareTesting
- Do team members disagree about testing terms, how to test, or how to improve testing? Try the test strategy workshop!  #technical #agileCoaching #teamwork #softwareTesting
- Do the different profiles in the team disagree about the priority to give to testing? Try the test strategy workshop! #technical #agileCoaching #teamwork #softwareTesting
---
_**Teams often disagree about what is a good test strategy!** So here is an all-in workshop to capture practices, define testing terms and agree on improvements._

![Drawing of 2 characters trying to talk together. One is talking about a plane, while the other is imagining a bike with a windshield and wings. Agreeing on the names of the different kinds of software tests is the first step for better team test strategy.]({{site.url}}/imgs/2022-09-24-a-complete-workshop-for-your-team-to-see-what-s-a-good-test-strategy/different-test-vocabulary.jpg)

One of the first teams I worked with as a full-time coach struggled with testing. Let's call this team Phoenix. It was relying almost only on slow end-to-end tests. The team had just welcomed a few members to make it cross-disciplinary. In addition, the team aimed to speed up the testing feedback loop. So, developers were xUnit-testing while quality engineers were speeding up systems tests.

Around 2 years later, the situation had improved a lot. Developers were getting more confidence in their tests, and end-to-end tests were faster. Yet, the team was still relying on those slow tests. There was yet no coordinated effort towards an improved test strategy. As a result, **the team had to overcome a new threshold to further improve their testing**.

**I also noticed that the team used its own DIY vocabulary for the different kinds of software tests:**
*   "TPKs" for end-to-end tests
*   "offline tests" for any type of developers tests

> One thing I'm still unclear on is what you mean by "Integration Testing: and whether it's similar enough in meaning to what the rest of the folks mean by "integration testing"

> I've learned to define testing terms before having testing conversations. At one large-sized company, engineers had different definitions for each testing term. E.g., one Pearson's "integration" test was another person's "integrated" test.

> I agree that "integration Test" has a lot of meanings.

**Blurry testing terms are a common symptom of not thinking about "What is a good test strategy for our team?"** A lack of testing strategy leads to many problems, like:
*   Holes in the test harness, which lead to bugs and rework
*   A slow testing feedback loop, relying on old habits, like end-to-end integrated tests
*   Increased test maintenance burden because different kinds of test overlap coverage.

With time, these "testing problems" increase the risk of abandoning testing altogether!

> Wouldn't it be great if engineers regularly aligned on testing terms?

## Let's teach a dedicated workshop to the teams!

Phoenix tackled testing issues with an all-in workshop to discuss the testing strategy. During the workshop, all team members were able to:

*   Learn industry's testing best practices and compare their own practices
*   Agree and capture testing terms
*   Agree about who, how, and when they should test the different aspects of their system
*   As a whole team, define and plan an improvement to their testing strategy

Here is what they said about the workshop:

> This workshop made me think about many things, thanks to the different questions.

> Thanks to this workshop, I enriched my testing vocabulary with new words, such as subcutaneous tests.

> It's like a game; we had fun but also came up with new solutions.

> I liked the fact that the whole team participated in the workshop.

More specifically, QA engineers and developers saw that some parts of the code were tested twice. It was clear that to reduce the testing feedback loop, they had to collaborate more. They had to start replacing end-to-end tests with developer tests. At the end of the workshop, they decided to write a first decoupled acceptance test.

A few months after the workshop, the team was now regularly removing end-to-end tests. As a result, developers could enjoy a faster testing feedback loop.

**🎁 With better testing comes more sustainable and calmer work!**

## The Workshop Agenda

You might be wondering what was inside this workshop? Here is a summary of the steps that the Phoenix team went through. The workshop is a succession of 7 steps. All in all, it takes between 5 to 7 hours. Therefore, running this workshop as a series of 1-hour sessions is best.

### Step 1: Learn what industry agile trailblazers do

Before the session, we sent homework to the team members. We shared links like:

*   [DevLin2017 - Aslak Hellesøy - Testable Architectures - YouTube](https://www.youtube.com/watch?v=uwH83PjR98g)
*   [7 Reasons to Choose Consumer-Driven Contract Tests Over End-to-End Tests (reflectoring.io)](https://reflectoring.io/7-reasons-for-consumer-driven-contracts/#:~:text=Consumer-Driven%20Contract%20tests%20%28CDC%20tests%29%20are%20a%20specialization,we%20will%20come%20to%20later%20in%20this%20article.)

The homework was to search the web and these references for different kinds of software tests.

**During the workshop, we asked each team member to present a kind of test.** To illustrate this, they had to:

*   Present a definition to the rest of the team
*   And place it on this duration X maintenance X coverage quadrant.

![Screenshot of the team's understanding of the different kinds of tests we can hear from the industry]({{site.url}}/imgs/2022-09-24-a-complete-workshop-for-your-team-to-see-what-s-a-good-test-strategy/test-quadrant.png)

The idea is to learn how the different kinds of tests compare.

### Step 2: Draw the ideal pyramid

With this new knowledge, team members could build an 'ideal' test pyramid.

![Screenshot of an ideal test pyramid according to industry references.]({{site.url}}/imgs/2022-09-24-a-complete-workshop-for-your-team-to-see-what-s-a-good-test-strategy/ideal-test-pyramid.png)

It's funny that this ideal pyramid does not look too pyramidal. Martin Fowler said we should [not bother so much about the shape](https://martinfowler.com/articles/2021-test-shapes.html) anyway! There is no good-or-bad result. This step is yet another way for the team to apprehend different kinds of software tests.

### Step 3: Draw your pyramid

**After digging through their test metrics, the team could draw its own test pyramid.** We sent the team more homework for this activity. We asked team members to come up with metrics:

*   What are your different kinds of tests?
*   What is the total execution time of each of these kinds of tests?
*   How many assertions does each of these kinds of tests check?

![Screenshot of how the team saw its own test pyramid.]({{site.url}}/imgs/2022-09-24-a-complete-workshop-for-your-team-to-see-what-s-a-good-test-strategy/real-test-pyramid.png)

This big rectangle in the middle represents end-to-end tests. It was clear to all the team members that they relied heavily on those!

### Step 4: Compare and discuss

Participants had 2 pyramids and a better understanding of the test vocabulary. To continue, they could now map their tests to the industry's standards.

![Screenshot of how the team mapped its own test pyramid to their ideal.]({{site.url}}/imgs/2022-09-24-a-complete-workshop-for-your-team-to-see-what-s-a-good-test-strategy/test-pyramids-mapping.png)

As you can see, they had to get creative! There is no one-to-one mapping between their tests and the kinds of tests we can find in the industry. This mapping showed how end-to-end tests verified too many aspects of the system.

The team members could now imagine what a good test strategy would be for them. Here are examples of what I heard during the workshop:

> We are missing decoupled acceptance tests!

> We won't be able to remove end-to-end tests until we ensure coverage differently!

### Step 5: Fill a test Strategy Canvas

**The Test Strategy canvas is a one-page template that summarizes how a team tests its software.**

**One of the goals of this workshop is to agree on names for the different kinds of software tests.** That's done in this step. The Phoenix team members also agreed to a unique test strategy thanks to this activity. This canvas clarifies precisely:

*   The purpose of testing in the team
*   What is inside or outside the team's responsibility
*   The different kinds of tests: name, constraints, technologies, who runs and maintains them...

Having a whole team converge to a single canvas can look daunting! However, mixing the [1-2-4-all](https://www.liberatingstructures.com/1-1-2-4-all/) and asynchronous sessions is an effective way to do it.

Here is what the Phoenix canvas looked like:

![Screenshot of the test strategy canvas that the team filled to represent their current way of testing]({{site.url}}/imgs/2022-09-24-a-complete-workshop-for-your-team-to-see-what-s-a-good-test-strategy/test-strategy-canvas.jpg)

The grid you see in the middle of the canvas describes every different kind of test. As an example, here is the line for Unit Tests:

![Zoom on the 'unit tests' kind of tests from the team's test startegy canvas]({{site.url}}/imgs/2022-09-24-a-complete-workshop-for-your-team-to-see-what-s-a-good-test-strategy/unit-test-in-canvas.png)

This canvas can also serve as a living convention. Fortunately, updating the workshop board should not be too long. **Re-running the workshop is also a good onboarding activity for new joiners.**

### Step 6: Solution focus to get 1 step closer

At this point, all participants agreed on the current situation. They also knew the industry's best practices. The next step was to go through a [Solution-Focus activity](http://bilal.eltayara.net/blog/2016/06/18/a-simple-way-to-run-a-solution-focused-retrospective/) to draft an improvement.

![Screenshot of the solution focus activity, that helped the team to see where it stands regarding state of the art testing and to envision going just-1-step-closer]({{site.url}}/imgs/2022-09-24-a-complete-workshop-for-your-team-to-see-what-s-a-good-test-strategy/solution-focus.png)

**This activity constrains the size of improvements to something small and manageable.** This lets the PO and the rest of the team find a compromise that:

*   Delivers value early.
*   Without blocking feature delivery.
*   While still going in the right direction.

### Step 7: Draft an improvement as a team!

The solution focus activity ends with participants brainstorming the "10% improvement". Here is Phoenix's improvement draft:

![Screenshot of an improvement that the team agreed at the end of the workshop]({{site.url}}/imgs/2022-09-24-a-complete-workshop-for-your-team-to-see-what-s-a-good-test-strategy/improvement-idea.png)
*Final testing improvement the team agreed on.*

**A key benefit of coming up with this improvement with the whole team is that it is already prioritized!** During the workshop, the PO had all the time to build empathy with everyone. He understood how this improvement would make the team more efficient.

_**💡 A nice side effect is that putting tests in place often involves paying back technical debt!**_

This workshop was also a way to break silos and give non-developers a look inside the system.

To summarize, such technical whole-team workshops can show a different way:

_**💡 The way of communication, collaboration, and collective decision-making**_

## Is your test strategy clear?

![2 panels going in opposite directions written "One Way" and "Another Way". Miscomprehension about names of the different kinds of software tests is the main symptom of a need for clarity about the testing strategy.]({{site.url}}/imgs/2022-09-24-a-complete-workshop-for-your-team-to-see-what-s-a-good-test-strategy/one-way-street.jpg)

Did you notice any miscommunication around testing between team members?

*   **Do they disagree about testing terms, how to test, or how to improve testing?**
*   **Do the different profiles in the team disagree about the priority to give to testing?**

If any of these is true, run this Test Strategy Workshop! Find someone interested in facilitating the workshop and help them the first time. They should be able to re-run it later for an update. Running this workshop now and again will result in continuous improvement in testing.

What about you? I'd love to read about other coaching techniques to handle testing disagreements! Finally, if you try this workshop, please comment on how it went or what could improve it.

---
If you liked this post, you might also be interested in:
- [How to make a team facilitate agile architecture workshops]({{site.url}}/how-to-make-a-team-facilitate-agile-architecture-workshops/)
- [How to help a team to find their preferred mob programming rules?]({{site.url}}/how-to-help-a-team-to-find-their-preferred-mob-programming-rules/)
- [5 Whole-Team Workshops To Increase Developers’ Role In Sprint Planning]({{site.url}}/5-whole-team-workshops-to-increase-developers-role-in-sprint-planning/)
- [3 Good and Bad Ways to Write Team Coding Standards and Conventions]({{site.url}}/3-good-and-bad-ways-to-write-team-coding-standards-and-conventions/)
- [How We Started Exploratory Testing]({{site.url}}/how-we-started-exploratory-testing/)