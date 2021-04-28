---
layout: single-mailing-list
title: How to coach a team that has been burnt by bad TDD
date: 2021-04-29
comments: true
categories:
- coaching
- tdd
- learning
- change management
- coding dojo
- mob programming
description: "Once exposed to bad TDD, teams are a challenge for any technical agile coach. Instead of trying to sell them TDD, XP, or whatever, fix their pains! Prepare a custom coaching plan and use TDD as a learning tool. Bonus in this post: a sample coaching plan around legacy code refactoring techniques."
header:
  teaser: "/imgs/2021-04-28-how-to-coach-a-team-that-has-been-burnt-by-bad-tdd/forget-tdd-fix-pains-teaser.jpg"
  og_image: "/imgs/2021-04-28-how-to-coach-a-team-that-has-been-burnt-by-bad-tdd/forget-tdd-fix-pains-og.jpg"
variations:
- Once exposed to bad #TDD, teams are a challenge for any #agile #technicalCoach
- Don't sell #TDD, #XP, or whatever, fix pains! #agile #technicalCoach
- Give this #codeKata coaching plan a try next time your team is struggling with #LegacyCode (https://philippe.bourgau.net/imgs/2021-04-28-how-to-coach-a-team-that-has-been-burnt-by-bad-tdd/sample-legacy-code-coaching-plan.pdf) #agile #technicalCoach
- Once a team has been exposed to bad #TDD, it won't try it again! #agile #technicalCoach
- Don't talk about #TDD! Instead, use TDD to fix the team's pains! #agile #technicalCoach
- Many developers had concluded that TDD was expensive and useless, read what you can do as an #agile #technicalCoach
- I started a weekly #TDD #CodingDojo to find new teams to work with. Very few people came 😞. TDD is no longer the 'killer feature' that sells #agile #technicalCoaching to teams. (+ image coding dojo)
- Bad #TDD is dogmatic, overpromises, and under-delivers. Here is what you can do instead #agile #technicalCoach
- The first thing to do is to understand the team members' pains #agile #technicalCoach
- Once you understand team members's day-to-day pains, it's time to come up with a fix! #agile #technicalCoach
- Sometimes you will be able to fix the team's pains without programming #agile #technicalCoach
- Sometimes, fixing the team's pain will involve installing new programming habits #agile #technicalCoach
- Mix katas and mob sessions around pain-fixing techniques to get over a team's misunderstanding about #TDD #agile #technicalCoach
- As coaches, we know #TDD is essential. The key is to avoid selling it directly #agile #technicalCoach
- Use #TDD as a workout exercise #agile #technicalCoach
- Use #CodeKatas to train a team to new team collaboration practices #agile #technicalCoach #pairProgramming #mobProgramming
- #TDD speeds up learning by creating the #deliberatePractice fast feedback loop #agile #technicalCoach
- #deliberatePractice is the technique used by athletes to achieve world-class performance. We can use it for #agile #technicalCoaching
- No one learns to swim in the deep end of the pool. Don't try to learn #TDD on your production #LegacyCode!#agile #technicalCoach
- After practicing enough #CodeKata, the team will be able to apply the techniques to their production code #agile #technicalCoach
- Developers are tired of being asked to be more productive. #TDD is a way to avoid being woken up by bugs in the middle of the night. #agile #technicalCoach
- How to coach team that misunderstood #TDD: Understand their pains, Fixes their most important pains, Use TDD as a learning tool. #agile #technicalCoach
---
_Once exposed to bad [TDD](https://en.wikipedia.org/wiki/Test-driven_development), teams are a challenge for any technical agile coach. Instead of trying to sell them TDD, XP, or whatever, fix their pains!_

![Drawing of the text 'Forget TDD, Fix Pains!' with a bulldozer pushing TDD away and a first-aid-kit to fix pains. Focusing on pains is a good way to coach a team that has been exposed to bad TDD in the past.]({{site.url}}/imgs/2021-04-28-how-to-coach-a-team-that-has-been-burnt-by-bad-tdd/forget-tdd-fix-pains.jpg)

TDD is a cornerstone of what we coach. Unfortunately, there is a lot of misunderstanding about TDD. [Search the web for 'bad TDD'](https://www.google.com/search?q=bad+tdd&safe=active) to get an idea. Unfortunately, **after a team has been exposed to bad TDD, it won't try it again!** How can we get around this extra hurdle and do constructive technical agile coaching?

> I've wasted way too much time learning from those who took it upon themselves to teach something they barely understand themselves. [[John Welty](https://www.linkedin.com/in/john-welty-9355b522/) on [extremeprogramming@groups.io](https://groups.io/g/extremeprogramming/topic/what_has_changed_for_you_over/39418691?p=Created,,,200,1,0,0)]


> I am least successful when people, for whatever reason, are unable to hear my ideas. It may be that they were mandated to attend a training or receive coaching, or it may be that they feel none of the changes I am bringing are in their best interests. [[Robin Dymond](https://twitter.com/robindymond) on [extremeprogramming@groups.io](https://groups.io/g/extremeprogramming/topic/what_has_changed_for_you_over/39418691?p=Created,,,200,1,0,0)]


> We've already gone through a TDD training before. We found it very dogmatic and difficult to apply. We prefer to sticking to what we are used to rather than to spending more time on TDD. [A developer who attended a previous TDD coaching]

My suggestion is pretty simple:

**Don't talk about TDD! Instead, use TDD to fix their pains!**

## The infamous TDD training

[Murex](https://www.murex.com), the company I work for, used to have TDD training in its catalog. Murex is pretty generous with training, and it's pretty straightforward to attend one. As a result, many developers had learned TDD this way. Unfortunately, the training was not good.

![Photo of a hand with 2 small pieces of paper written "Bad" and "Good". TDD can be done good or bad. As technical agile coaches, we must learn how to coach teams that have been exposed to bad TDD.]({{site.url}}/imgs/2021-04-28-how-to-coach-a-team-that-has-been-burnt-by-bad-tdd/good-bad.jpg)

**Many developers had concluded that TDD was expensive and useless**. Some even took bad habits after attending it. For example:

*   Writing all the tests before writing all the code.
*   Testing every function independently. This leads to heavy mocking and makes the code harder to refactor.

After my first success with the [Deadpool team]({{site.url}}/the-story-about-how-we-do-agile-technical-coaching/), **I started a weekly TDD [Coding Dojo]({{site.url}}/categories/#coding-dojo) to find new teams to work with. Very few people came 😞.** I had to find another way.

![Drawing of a martial art dojo with the floor being a keyboard and the back wall being the screen of a laptop where we can read TDD Coding Dojo. This is the poster I setup to get people to attend a coding dojo where they could learn TDD.]({{site.url}}/imgs/2021-04-28-how-to-coach-a-team-that-has-been-burnt-by-bad-tdd/coding-dojo.jpg)

## Forget TDD as a goal

**TDD is no longer the 'killer feature' that sells agile technical coaching to teams.**

In my case, the manager of the Deadpool team found another team for me! He suggested that I check if there was an opportunity with the Kirby team.

As you might already know, if you are a regular reader, I only work with volunteer teams. If I wanted to work with Kirby developers, I needed to find a way to make them want!

**Bad TDD is dogmatic, overpromises, and under-delivers.** Unfortunately, some Kirby team members had attended the infamous TDD training. I knew that **mentioning TDD would play against me**.

## Understand their pains

**The first thing to do is to understand the team members' pains**. There are many ways to identify these pains:

*   You can meet with all the team to have a group chat or to run a pain gathering workshop
*   You can also have one-to-one interviews with team members. This is useful if you suspect that not everyone will speak up in front of the group
*   Otherwise, you can Gemba-pair: spend a few hours to pair with everyone in the team

![Photo of a burnt out man with hands over his head. Understanding the pains of a team is the first step to coach without selling TDD as a goal by itself.]({{site.url}}/imgs/2021-04-28-how-to-coach-a-team-that-has-been-burnt-by-bad-tdd/understand-pains.jpg)

What is essential at this step is to avoid selling them anything. Just observe, be helpful when you can, but really, observe.

In our case, the Kirby team members were having a hard time maintaining legacy code. Here are examples of pains we have seen in other teams:

> * We have good test coverage and a lot of tests, but everything turns red when we make the smallest change!
> * We don't know what kind of tests to use to test the different parts of our system!
> * The business is pushing is so hard that we are taking technical debt all the time. How do we find the time to refactor!
> * The team just faced important turnover. How can we rebuild the team dynamics without losing 1 year?
> * ...

## Design a custom coaching plan

**Once you understand their day-to-day issues, it's time to come up with a fix!**

[Maintaining legacy code is a widespread pain for software teams]({{site.url}}/categories/#refactoring). I could leverage what I had done with Deadpool to propose something to the Kirby team.

In other cases, **you might be able to fix their pains without programming**. If you can, then do it! You will save everybody's time, and the team will be more likely to come back for more.

For example, we have designed a test strategy workshop. It helps team members to agree on how to test the different aspects of their system.

Other times, though, **fixing the pain will involve installing new programming habits.**

[![A Hulk-inspired drawing of a plan of kata exercises to grow your skills around refactoring legacy code. When wondering how to coach a team, proposing a coaching plan that fixes the team's real pains is a great way to get started on constructive ground.]({{site.url}}/imgs/2021-04-28-how-to-coach-a-team-that-has-been-burnt-by-bad-tdd/Coding-Dojo-Hulk-small.jpg)]({{site.url}}/imgs/2021-04-28-how-to-coach-a-team-that-has-been-burnt-by-bad-tdd/Coding-Dojo-Hulk.jpg)

In this case, avoid general agile development practices coaching. Instead, come up with [a coaching plan that is fixing their specific pains]({{site.url}}/a-coding-dojo-exercises-plan-towards-refactoring-legacy-code/). For example, we used the following coaching plan to help the Kirby team deal with their legacy code.

| Exercise | How | Learn about... |
|------|-----|---------------|
| [Bowling Game kata](https://codingdojo.org/kata/Bowling/) | [Prepared kata](https://codingdojo.org/PreparedKata/) Demo | Good TDD |
| [Roman Numerals kata](https://codingdojo.org/kata/RomanNumerals/) | Randori in Pairs | Emergent solution |
| [Mars Rover kata](https://kata-log.rocks/mars-rover-kata) | Randori in Pairs | Emergent design |
| [Game of Life kata](https://codingdojo.org/kata/GameOfLife/) | Randori in Pairs | Bottom-Up (= inside-out) TDD |
| [LCD kata](https://codingdojo.org/kata/NumberToLCD/) | Randori in Pairs | Top-Down (= outside-in) TDD |
| [Game of Life kata](https://codingdojo.org/kata/GameOfLife/) | Randori in Pairs | Mix Bottom-Up and Top-Down |
| Median of list of lists kata | [Randori](https://codingdojo.org/RandoriKata/) | TDD on algorithms |
| [Roman additions kata](https://codingdojo.org/kata/RomanCalculator/) | Mob | Mobbing |
| [Gilded Rose kata](https://github.com/emilybache/GildedRose-Refactoring-Kata) then production code | Mob | Approval Testing and refactoring |
| Gilded Rose kata then production code | Mob | Strangler application |
| [Trivia kata](https://github.com/jbrains/trivia) then production code | Mob | Mikado Method |
| Trivia kata then production code | Mob | ACL and Bubble Context |

*[Printable version]({{site.url}}/imgs/2021-04-28-how-to-coach-a-team-that-has-been-burnt-by-bad-tdd/sample-legacy-code-coaching-plan.pdf)*

It relies on a mix of code-katas and mob sessions. This is one way of doing it. The [Samman Technical Coaching](https://www.sammancoaching.org/) method uses a blend of learning hours and mob sessions. On our side, we have settled on the following recipe for most of our coaching plans:

1.  **Start with a series of katas around TDD**.
2.  Continue by mixing
    *   **katas targetting pain-fixing techniques**
    *   **mob-sessions to apply these techniques on their production code**

I hear you:

> But you just said to forget TDD and to focus on the pain! And now you start with katas on TDD!

As a matter of fact, we have noticed that part 2 does not work unless the team has gone through part 1! **As coaches, we know TDD is essential. The key is to avoid selling it directly**.

## **TDD as a workout exercise**

With a clear pain and a coaching proposal, it's time to pitch it to the team. Here is how to present part 1.

![Black and White photo from behind of someone who's holding a weight bar on his shoulders. Instead of wondering 'How to coach a team to TDD, simply using TDD as a workout exercise helps everyone to get over any prior misunderstanding about TDD.]({{site.url}}/imgs/2021-04-28-how-to-coach-a-team-that-has-been-burnt-by-bad-tdd/crossfit.jpg)

We have different arguments to sell the TDD part to the teams:

1.  From experience, **the coaching does not work well if we skip part 1**
2.  **Part 1 will train you to new team collaboration practices** like [pair and mob programming]({{site.url}}/why-you-should-start-a-team-coding-dojo-randori-right-now/)
3.  **TDD speeds up learning by creating the [deliberate practice](https://medium.com/the-crossover-cast/get-better-at-anything-6-steps-of-deliberate-practice-19830bfc9460) fast feedback loop**

Here is the script I use to explain what deliberate practice is and why it matters:

> **Deliberate practice is the technique used by athletes to achieve world-class performance**. Suppose you are a swimmer and you are not very good at turning at the end of the lane. What will have the most impact on your performance? Swimming 2000 meters? Or focusing 30 minutes on turning only?

> It's the same for us. By setting up a fast feedback loop, TDD lets us learn faster through deliberate practice.

> **Also, no one learns to swim in the deep end of the pool.** We all started at the shallow end. That's why we will begin with simple exercises. We will increase the difficulty as we go. **At some point, you will be able to apply the techniques to your production code**.

(Side Note: lately, we have been experimenting with [TCR](https://medium.com/@kentbeck_7670/test-commit-revert-870bbd756864) as a new way to do deliberate practice. It looks promising. Tell me if you would like to read more about it!)

With these 3 arguments under your belt, you should be ready to pitch your proposal to the entire team. A good pitch starts with their pain, presents a fix, and continues with extra benefits.

Sometimes the pitch gets them all on board. Sometimes, though, the team needs a bit more time to decide. In this case, I suggest a first test session to help the decision.

## Deliver a well-prepared kata demo

We start the TDD part of our coaching sessions with a prepared kata demo. We usually go with the [bowling game score kata](https://codingdojo.org/kata/Bowling/). It's a great occasion to show what TDD looks like when it's well done.

{% include video id="OPGTPQ4kURU" provider="youtube" %}

We must, in fact, remain very careful! Most **developers are tired of being asked to be more productive**. That's why I don't mention TDD as a way to be more *whatever*. Instead, I present it as **a way to avoid being woken up by bugs in the middle of the night**.

Attendees are usually enthusiastic about the demo. Here are examples of feedback I received:

> I'm surprised about how nice and simple the resulting code is!

> I already learned more in 2 hours than in the full TDD training I attended!

We've never had a team stop after the demo!

## Don't sell... Fix pains!

It ends as it started:

> Don't sell TDD, XP, or whatever... Fix real pains!

Next time you start coaching a team

1.  Take the time to **understand their pains**
2.  Present them a custom coaching plan that **fixes their most important pains**
3.  Present **TDD as a learning tool** rather than a goal by itself

This should get you past any prior misunderstanding about TDD.

----

If you liked this post, you might also learn more about how to get over bad TDD exposition in these articles:

*   Wondering what a custom coaching plan might look like? Read: [A coding dojo exercises plan towards refactoring legacy code]({{site.url}}/a-coding-dojo-exercises-plan-towards-refactoring-legacy-code/)
*   Want to learn more other problems you might face when starting coaching a team? Check [7 tricks to influence a team resisting to change its technical habits]({{site.url}}/7-tricks-to-influence-a-team-resisting-to-change/)
*   Interested about how a series of code katas can also help people learn a new language? Read: [How to learn a programming language in just 20 hours]({{site.url}}/how-to-learn-a-programming-language-in-just-20-hours/)
*   Want to get the full story of how we approached teams at Murex? Read [The story about how we do Agile Technical Coaching]({{site.url}}/the-story-about-how-we-do-agile-technical-coaching/)
*   Interested in live katas I gave? Watch [Live Legacy Code Refactoring with the Golden Master](https://youtu.be/9HmVrfkzm9I) at [Legacy of Socrates](https://www.youtube.com/channel/UC0M37QolwmwobAY4Bt8Tszg)