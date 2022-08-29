---
layout: single-mailing-list
title: How to make TCR evolutionary design practice sessions irresistible
date: "2022-08-18"
comments: true
categories:
- coaching
- tcr
- coding dojo
- change management
description: "Getting participants in a TCR code kata exercise seems complicated! Here are tips for your TCR session. How to tease it before? How to maximize fun and learning during the session? And how to make sure participants leave it knowing how to apply what they learned?"
header:
  teaser: "/imgs/2022-08-07-how-to-make-tcr-evolutionary-design-practice-sessions-irresistible/tcr-donkey-teaser.jpg"
  og_image: "/imgs/2022-08-07-how-to-make-tcr-evolutionary-design-practice-sessions-irresistible/tcr-donkey-og.jpg"
variations:
- TDD code katas can be fun, but #TCR code kata exercises are even more fun! #tdd #codingDojo #technical #agileCoaching
- With #TCR, the best practice is to let participants take long steps! #tdd #codingDojo #technical #agileCoaching
- Getting participants in a #TCR code kata exercise seems complicated! Yet, given what TCR is, these sessions can radiate genuine fun and direct applicability! #tdd #codingDojo #technical #agileCoaching
- Have you suggested #TCR sessions to the teams you are coaching? Unfortunately, you might have discovered that "Selling" TCR is not easy. #tdd #codingDojo #technical #agileCoaching
- #TCR code kata exercises don't appeal to developers who believe in "perfect code first." #tdd #codingDojo #technical #agileCoaching
- Actually, katas with #TCR sell better than those with #TDD! #codingDojo #technical #agileCoaching
- Leverage your pedagogy-expert posture when facilitating #TCR coding dojos. #tdd #codingDojo #technical #agileCoaching
- #TCR sounds like a 'drill': they are different from real-life work, yet, drills positively impact real-life work. #tdd #codingDojo #technical #agileCoaching
- It's almost impossible for participants to envision using #TCR in their day-to-day work. As a result, they come to TCR code katas with a constructive practice mindset! #tdd #codingDojo #technical #agileCoaching
- #TCR gives its critical lesson when it reverts our code! #tdd #codingDojo #technical #agileCoaching
- Participants might want to 'cheat' during #TCR code kata! That's when you should put your "sports coach" cap on and remind them that this is the critical learning moment. #tdd #codingDojo #technical #agileCoaching
- Developers, used to picky compilers, will get far less annoyed by the #TCR reverts than by a human coach. #tdd #codingDojo #technical #agileCoaching
- #TCR is a cruel teacher: whenever we try to make a change that outgrows our abilities, TCR reverts it. #tdd #codingDojo #technical #agileCoaching
- #TCR learnings are surprisingly production-ready! #tdd #codingDojo #technical #agileCoaching
---
*Getting participants in a TCR code kata exercise seems complicated! Yet, given what TCR is, these sessions can radiate genuine fun and direct applicability!*

![Drawing of a tabletop game box titled 'TCR' and featuring donkey kicking and throwing away everything he was carrying. TCR can feel like the programmer's version of this old 'Buckaroo' game where we wanted to load the donkey as much as possible until it kicked everything around.]({{site.url}}/imgs/2022-08-07-how-to-make-tcr-evolutionary-design-practice-sessions-irresistible/tcr-donkey.jpg)

A few weeks ago, I wrote that [TCR code kata exercises are great for teaching evolutionary design]({{site.url}}/a-surprising-way-how-to-teach-evolutionary-design/).

**Have you suggested TCR sessions to the teams you are coaching? Great! Unfortunately, "Selling" TCR is not easy.** Here is what you might notice:

> The big pushback to continuous design is of course from devs who insist that they need an end-all solution now, and that it has to be completely implemented now even if the design represents a speculative need.

> The harder sell is with people who have been taught that changing the design is "rework waste."

> They used their code review process as a hazing ritual, forcing new programmers to prove they could write everything perfectly the first time.

I've also written about ["TDD does not work in real life!" complaints]({{site.url}}/how-to-handle-tdd-does-not-work-in-real-life-during-code-katas/). It becomes even worse as we push TDD to the TCR extreme! **TCR code kata exercises don't appeal to developers who believe in "perfect code first."**

> What if you had a trick to hook developers on TCR evolutionary design practice sessions?

Lately, my colleague Ahmad started to run kata sessions with a group of newcomers at Murex. One of the first sessions was to practice TDD and TCR with the Mars Rover kata. The group set out for an ambitious test and started to write a lot of code. Despite one mobster complaining about the long step, they pushed on for more than 15 minutes. Eventually, they were confident that their code was working! They saved... TCR ran... and reverted everything!

From then on, the dynamic of the group changed. It went from ego-hero to collaboration against the new TCR opponent. During the end-of-session retro, everyone saw that baby steps were safer and calmer. They also understood that TCR was a great teacher.

To our own surprise, my team and I have discovered that **katas with TCR sell better than those with TDD!**

1.  Before, [Present sessions like fun drills](#present-sessions-like-fun-drills)
2.  Make sure to [Run a genuine deliberate practice session](#run-a-genuine-deliberate-practice-session)
3.  [Finish the session with an effective retro](#finish-the-session-with-a-compelling-retrospective) to transpose practice to real work

## Present sessions like fun drills!

![Photo of a girl practicing handstand on the beach. TCR is like weights that you add to your TDD drills, but, with even more fun!]({{site.url}}/imgs/2022-08-07-how-to-make-tcr-evolutionary-design-practice-sessions-irresistible/fun-workout.jpg)

How you introduce the sessions greatly impacts the participants' engagement.

### **Leverage your pedagogy-expert posture**

**TCR sounds like a 'drill'**. The word '[drill](https://en.wikipedia.org/wiki/Agility_drill)' has an 'improvement' connotation and people understand that:

*   **Drills are different from real-life work.**
*   **Yet, drills positively impact real-life work.**

Using such vocabulary also puts you in the position of a pedagogy expert. (Side Note: I am no pedagogy expert, but as a tech coach, I know more than most developers I work with. In the country of the blind, the one-eyed man is king!) As a result, people are more likely to trust you about the learning value of our exercises.

### Highlight the fun!

One of the main observations we made about TCR katas is that they are fun! They have a poker-like twist, as we 'bet' our code on green tests. We felt this ourselves, observed it in group dynamics, and heard it through feedback.

💡 TDD code katas can be fun, but TCR code kata exercises are even more fun!

## Run a genuine deliberate practice session

### Keep them in the practice mindset.

Always repeat that this is practice. At first, participants might be unable to use TCR or TDD in their day-to-day work. Remind them that a code kata is a unique occasion to practice by the book in a safe context.

> I stopped and reminded them that they were here to learn how to build things incrementally, that they should continue to work through the exercises with that in mind ([Jeff langr](https://twitter.com/jlangr) on [extremeprogramming@groups.io](https://groups.io/g/extremeprogramming/topic/75090300?p=,,,40,0,0,0))

This should help them to stay engaged at times when they are doubting.

But TCR has yet another advantage. It's weird and very different from how most developers write code. At first, **it's almost impossible for participants to envision using it in their day-to-day work. As a result, they tend to take TCR code katas as pure exercises.** In the end, it's easier for participants to stay in a constructive practice mindset!

### Wait for reverts!

![Photo of a signboard written "Time to say goodbye". When TCR kicks in and reverts your code, the best thing to do is to let it go, and move on.]({{site.url}}/imgs/2022-08-07-how-to-make-tcr-evolutionary-design-practice-sessions-irresistible/time-to-say-goodbye.jpg)

**At the risk of sounding sadistic, TCR gives its critical lesson when it reverts our code!** If we were running a traditional TDD session, we would have to remind the participants to take small steps.

```ruby
# Traditional TDD Code Kata
while(true)
   coach.say("Remember not to write too much code before running the tests!")
   sleep(1.minute)
end
```

💡 With TCR, the best practice is to let participants take long steps!

Most of these extra-long steps end up with TCR reverting the code. **Participants might want to 'cheat'** to recover the code at this point! (For example, you can get it back with a Ctrl+Z in many IDEs). This is the moment to put on your "sports coach" cap:

> Hey! This is cheating 😉! This is the crucial moment of TCR. You just learned that this code does not quite work, and TCR is telling you that you need to go slower.

This can be a difficult lesson for some participants. Others in the group will be happy to start from a blank page again, though. Usually, everybody gets over it after a few minutes.

### Lean on TCR

As illustrated above, we don't need to talk much during a TCR code kata exercise. Instead, participants can learn by themselves through the TCR script.

**Developers, used to picky compilers, will get far less annoyed by the machine than by a human coach.** As a result, it will be easier for them to take a step back and reconsider their opinion.

Also, they will learn what is meaningful to them at this moment. It's different from us trying to guess what is worth remembering!

To summarize, TCR sessions are more intense and effective and need less coach intervention!

## Finish the session with a compelling retrospective

We always end kata sessions with a quick retrospective. It's essential to take 5 or 10 minutes for participants to discuss what they did and learned. It's also the best moment to make the decision to change how they want to work. TCR has some critical lessons to bring to these quick retrospectives.

### Stop biting more than you can chew!

![Photo of a dog chewing a stick that is too long for it. One great thing about TCR is that it teaches us what is the size of a change we can do without mistake.]({{site.url}}/imgs/2022-08-07-how-to-make-tcr-evolutionary-design-practice-sessions-irresistible/dog-chewing.jpg)

**TCR is a cruel teacher: whenever we try to make a change that outgrows our abilities, TCR reverts it.**

After a few hours, one will get a gut instinct about how much they can change in one step without making mistakes!

> The competent programmer is fully aware of the strictly limited size of his own skull; therefore he approaches the programming task in full humility, and among other things he avoids clever tricks like the plague. ([Edsger W. Dijkstra](https://www.cs.utexas.edu/~EWD/transcriptions/EWD03xx/EWD340.html))

As Dijkstra said, this is a fundamental lesson that is always applicable. We can apply this knowledge to whatever we are working on:

*   a code kata or a commercial product
*   a greenfield or a legacy codebase
*   a professional app or a Sunday pet-project

We'll have learned this for the rest of our lives! (Note: use TCR regularly to keep the lesson up to date!)

As a coach, we can use the retro to ask powerful questions about this topic:

> - What did you notice about the changes that passed?
> - What about the changes that TCR reverted?
> - How can you transpose this to your day-to-day work?

We have added a new feature in our [TCR tool](https://github.com/murex/TCR) to help participants answer these questions. It's a pure didactic feature that adds `fail` and `revert` commits. Then, through the Git log, participants can retrospect the failed changes. To try it, run the TCR tool with `tcr --commit-failures`. It does not change anything to the TCR flow, except that you'll get extra commits to retrospect.

For example, you can inspect the failing changes with `git log --oneline --full-diff -p .`

```diff
4e9bbf5 ❌ TCR - tests failing
diff --git a/java/src/main/java/com/murex/BowlingGame.java b/java/src/main/java/com/murex/BowlingGame.java
index d49fe79..df25c72 100644
--- a/java/src/main/java/com/murex/BowlingGame.java
+++ b/java/src/main/java/com/murex/BowlingGame.java
@@ -30,15 +30,20 @@ class BowlingGame {
     static int score(int... rolls) {
         int score = 0;
 
-        if (rolls[0] == TOTAL_PINS)
-            return 28;
-        if (rolls[2] == TOTAL_PINS) {
-            return 20;
-        }
+//        if (rolls[0] == TOTAL_PINS)
+//            return 28;
+//        if (rolls[2] == TOTAL_PINS) {
+//            return 20;
+//        }
 
         int iRoll = 0;
         for (int iFrame = 0; iFrame < NB_FRAMES; iFrame++) {
-            if (isASpare(rolls, iRoll)) {
+            if(rolls[iRoll] == TOTAL_PINS) {
+                score += TOTAL_PINS;
+                score += rolls[iRoll] + rolls[iRoll + 1];
+                iRoll++;
+            }
+            else if (isASpare(rolls, iRoll)) {
                 score += rolls[iRoll] + rolls[iRoll + 1];
                 score += rolls[iRoll + 2];
                 iRoll += 2;
```

You can also get a birds eye view of your commit history through your online Git interface:

[![Screenshot of the TCR log with failing commit activated. We can see different kinds of commit, with test stats in each commit message. TCR failure commits are great to learn how large a change we are able to do without mistake!]({{site.url}}/imgs/2022-08-07-how-to-make-tcr-evolutionary-design-practice-sessions-irresistible/bowling-tcr-log-small.jpg)]({{site.url}}/imgs/2022-08-07-how-to-make-tcr-evolutionary-design-practice-sessions-irresistible/bowling-tcr-log-full.jpg).

### Suggest TCR when refactoring production code

You can also use the retro to nudge participants into using TCR for their day-to-day work. With fast feedback tests, [refactoring production code with TCR](https://medium.com/@tdeniffel/brutal-refactoring-31b5cc4d4512) is pretty straightforward. For example, you can say something like:

> If you happen to be refactoring a piece of code that has fast tests, give TCR a try! It makes refactoring calm and practical.

## Let's summarize

![Photo of a small plant that is just piercing the soil, in the sun. Starting to practice TCR is like an investment that will grow and make developers' lives calmer and more effective.]({{site.url}}/imgs/2022-08-07-how-to-make-tcr-evolutionary-design-practice-sessions-irresistible/plant-sun.jpg)

Here is my advice to get people engaged in TCR practice sessions:

*   don't mention TCR
*   set a "fun and collaborative drills" atmosphere
*   let people be reverted
*   run impactful session retrospectives

As I wrote above, **TCR learnings are surprisingly production-ready!** Coachees will feel the benefits pretty fast! After that, they'll start to look forward to more practice. And as they go through sessions, participants will find TCR increasingly more attractive.

At Murex, we have been building a TCR tool for code kata exercises. You can find it at [https://github.com/murex/TCR](https://github.com/murex/TCR). You can also find a sample kata repo at [https://github.com/murex/Kata-BowlingGame](https://github.com/murex/Kata-BowlingGame).

What about you? I'd love to read your feedback about getting people engaged in TCR practice sessions! Or maybe you have been using TCR on a day-to-day basis? If you get to try these tips, I'd love to hear how it went!

---

Here are other posts that you might find interesting:

- [A surprising way to teach evolutionary design]({{site.url}}/a-surprising-way-how-to-teach-evolutionary-design/)
* [How to handle "TDD does not work in real life!" during code katas]({{site.url}}/how-to-handle-tdd-does-not-work-in-real-life-during-code-katas/)
* [How the pandemic made us discover better ways of coaching]({{site.url}}/how-the-pandemic-made-us-discover-better-ways-of-coaching/)
- [How to coach a team that has been burnt by bad TDD]({{site.url}}/how-to-coach-a-team-that-has-been-burnt-by-bad-tdd/)
- [How the Samman Method helps to sell technical coaching internally?]({{site.url}}/how-the-samman-method-helps-to-sell-technical-coaching-internally/)
- [7 tricks to influence a team resisting to change its technical habits]({{site.url}}/7-tricks-to-influence-a-team-resisting-to-change/)
