---
layout: single-mailing-list
title: A Surprising Way How To Teach Evolutionary Design
date: "2022-07-07"
comments: true
categories:
- tcr
- coding dojo
- coaching
- tdd
- learning
- architecture
description: "One of the most valuable yet impenetrable XP practice is Evolutionary Design. At its root is baby-steps programming, which lets us constantly re-design and evolve our codebase through small and safe changes. Let's see how TCR training session will teach baby-steps programming!"
header:
  teaser: "/imgs/2022-07-05-a-surprising-way-how-to-teach-evolutionary-design/tcr-gardening-teaser.jpg"
  og_image: "/imgs/2022-07-05-a-surprising-way-how-to-teach-evolutionary-design/tcr-gardening-og.jpg"
variations:
- #EvolutionaryDesign makes the lives of developers better! #tcr #technical #agileCoaching
- Baby-steps programming is the fundamental skill for #EvolutionaryDesign.  #tcr #technical #agileCoaching
- In a #TCR #codingDojo, if we are too bold or ambitious (or pretentious) with a code change, the tests fail, and the change gets reverted. #technical #agileCoaching #evolutionaryDesign
- Having participants stick to baby steps during a code kata has always been an issue. #tcr #technical #agileCoaching #evolutionaryDesign #codingDojo
- #TCR is a bit like a workout machine for #TDD practice sessions. #technical #agileCoaching #evolutionaryDesign #codingDojo
- #TDD rookies tend not to run the tests often enough and spend too much time out of green-state. #tcr #technical #agileCoaching #evolutionaryDesign #codingDojo
- As tech coaches, we have to remind participants to stick to baby steps. Yet, 1) It's exhausting to be the killjoy all the time; 2) We cannot keep an eye on everyone at the same time. #tcr #technical #agileCoaching #evolutionaryDesign #codingDojo
- #TCR keeps the code in a green state. It "forces" #codingDojo participants to stick to baby steps. #technical #agileCoaching #evolutionaryDesign
- With #TCR, we can facilitate larger #codingDojo sessions than with 'stock' #TDD. #technical #agileCoaching #evolutionaryDesign
- With #TCR, participants experience going through a programming task with baby steps. #technical #agileCoaching #evolutionaryDesign #codingDojo
- With #TCR, we can even check the git-log to see the detailed steps we used. #technical #agileCoaching #evolutionaryDesign
- I have seen #TDD veterans get reverted on their first #TCR kata and learn from it. #technical #agileCoaching #evolutionaryDesign #codingDojo
- My colleagues and I have been working on a #TCR tool. You can find it at https://github.com/murex/TCR #technical #agileCoaching #evolutionaryDesign
- Give #TCR a try and share your experience! #technical #agileCoaching #evolutionaryDesign
---
_Evolutionary Design might be the most valuable yet impenetrable XP practice. Use TCR to practice baby-steps coding, the cornerstone of Evolutionary Design._

![Drawing of a hand watering some plants that are taller and taller. Letters TCR are written on the watering can. Evolutionary Design is a bit like gardening, as we try to make the plants grow the best they can. TCR code katas help us practice baby steps, that let re-orient the design as we move forward.]({{site.url}}/imgs/2022-07-05-a-surprising-way-how-to-teach-evolutionary-design/tcr-gardening.jpg)

> Evolutionary Design is my very favorite XP practice, but also the one that took me the longest to accept. It's also the hardest to teach.

> More than just software development skills, it [Note: evolutionary design] also takes humility, patience, restraint, discipline, and confidence.

> People don't learn new habits overnight. Three days barely scratches the surface, so sitting with them as they work through real stuff, and showing how things play out, is critical. It can be months before better habits stick.

**Performing Evolutionary Design makes the lives of developers better!** With it, a team can re-orient its software design according to the latest challenges. This makes progress steadier, more predictable, and the pace more sustainable!

For [Kent Beck,](https://blogs.oracle.com/javamagazine/post/interview-with-kent-beck) master programmers split large code changes into small steps. [Baby steps](https://codingdojo.org/practices/BabySteps/) are the building blocks of continuous software design evolution. **Baby-steps programming is the fundamental skill for evolutionary design.**

Unfortunately, teaching baby steps is not easy. Participants tend to stick to wide steps. Even in a TDD coaching session and even as we remind them!

> Wouldn't you love to run baby-steps training sessions and teach evolutionary design faster?

It turns out that using [TCR](https://medium.com/@kentbeck_7670/test-commit-revert-870bbd756864) (`test && commit || revert`) in practice sessions does that!

## How we started to run TCR practice sessions

[Thomas Deniffel's post about TCR Variants](https://medium.com/@tdeniffel/tcr-variants-test-commit-revert-bf6bd84b17d3) made a massive impression on me. I tried TCR with 1 or 2 katas and then suggested to my coach colleagues to experiment too. Everyone liked how it 'forced' us to stick to baby steps.

Here is what our TCR flow looks like:

*   It watches the file system for changes to the code
*   As soon as it detects some changes, it builds and runs the tests
    *   If the tests fail, it reverts
    *   If the tests pass, it commits
*   It repeats

**If we are too bold or ambitious (or pretentious) with a code change, the tests fail, and the change gets reverted.** One quickly learns that the easiest way to go through an exercise with TCR is to stick to baby steps.

![Photo of used and small children shoes. Using TCR has taught us again to code in baby steps.]({{site.url}}/imgs/2022-07-05-a-surprising-way-how-to-teach-evolutionary-design/children-shoes.jpg)

**Having participants stick to baby steps during a code kata has always been an issue.** So we agreed to experiment with TCR in a few training sessions.

This was a success! The feedback after our test sessions was excellent! As a result, TCR has become the default for every session we run.

## What do participants say?

As I said, up to now, feedback has been great. Here are some examples of what people said at the end of a session.

### It's fun!

> It's almost a 'gamified' way to go through code katas!

> There's a poker flavor of 'betting' on your change.

### It stretches coding muscles.

> It's TDD on steroids!

> I learned how to do more rigorous katas.

> I pushed baby steps to 11!


{% assign figure_path="/imgs/2022-07-05-a-surprising-way-how-to-teach-evolutionary-design/spinal-tap-up-to-eleven.jpg" | absolute_url %}

{% assign figure_alt="Screenshot from the Spinal Tap movie where we see volume knobs turned with an '11' scale. Adding TCR to code katas will make us do even more baby-steps than with TDD." %}

{% capture figure_caption %}
Screenshot from [Spinal Tap movie](https://en.wikipedia.org/wiki/This_Is_Spinal_Tap), photo from [Wikipedia](https://en.wikipedia.org/wiki/Up_to_eleven)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

> At first, I was skeptical about the Revert thing. But once I realized it's meant as a practice tool; I started to appreciate its ruthlessness 😀

### It yields more profound lessons.

> We were lost in endless refactoring, and the tool taught us a lesson: to let go!

> It's good for the focus because you must stick to what you are doing now. And it's good for the ego because it's a script, not a human, that tells you to use smaller steps!

> It creates a real feeling of progression!

> I learned to focus more on each step rather than wanting to solve the problem.

### TCR is like a workout machine!

**TCR is a bit like a workout machine for TDD practice sessions.** It makes the sessions more challenging and interesting. As a result, it's a learning accelerator.

![Photo of a woman during a workout on a machine. Adding TCR to code kata sessions is like adding weights, it makes session more intense, but also speeds up the development of baby-steps muscles.]({{site.url}}/imgs/2022-07-05-a-surprising-way-how-to-teach-evolutionary-design/workout-machine.jpg)

## What exactly changes with TCR?

### A classic TDD practice session

**TDD-rookies tend not to run the tests often enough and spend too much time out of green-state.** Here is the situation I have often observed:

1.  Participants write a test.
2.  They write way more code than needed to pass the test.
3.  They manage to pass the test with a lot of thinking.
4.  Unfortunately, they broke other tests in the process.
5.  Eventually, they take 15 minutes or more to debug everything back to green.

As coaches, we have to point out every time they start on such a difficult path, but:

*   **It's exhausting to be the killjoy all the time.**
*   **We cannot keep an eye on everyone at the same time.** As a result, many participants struggle with long steps.

### TCR as a coach bot!

Things are different in a TCR practice session:

*   Are participants making an ambitious giant step that fails? => The code is reverted.
*   Did they break other tests while passing the new one? => The code is reverted.

**TCR keeps the code in a green state. It "forces" participants to stick to baby steps.** It does that without us having to remind people all the time. It does that without us having to be there!

As a bonus, **we can have more people in a single session!**

### From TCR to evolutionary design

![Photo of a small branch sprouting from a tree. Evolutionary design is a lot like gardening or plant tending.]({{site.url}}/imgs/2022-07-05-a-surprising-way-how-to-teach-evolutionary-design/new-branch.jpg)

[J.B. Rainsberger explains](https://blog.thecodewhisperer.com/permalink/breaking-through-your-refactoring-rut) that practicing micro-steps teaches how to 'chunk' them into larger ones. **With TCR, participants experience going through a programming task with baby steps.** **They can even check the git-log to see the detailed steps they used.** This is how they learn evolutionary design.


## See for yourself!

The simplest way to give TCR a try is to run `"test" && "commit" || "revert"` instead of just `test`.

If you are using git, you can commit with `git commit -am "TCR"` and revert with `git restore .`. The test command depends on the language and toolchain you are using. Pick your favorite kata and give it a go! If you lack inspiration, go with the classic [Bowling Game](https://codingdojo.org/kata/Bowling/). **I have seen TDD veterans get reverted on this kata and learn from TCR.** There's definitely something for everyone here. I'm sure you will have fun too!

## Batteries included!

At work, **we have been working on a more advanced TCR tool. You can find it at [https://github.com/murex/TCR](https://github.com/murex/TCR).** You can also find a sample kata repo at [https://github.com/murex/Kata-BowlingGame](https://github.com/murex/Kata-BowlingGame).

Compared to terminal commands, it also:

*   watches the file system, and runs TCR as soon it spots some file changes
*   pushes and pulls through an online repo to enable remote mobbing with git-handover
*   provides a mob timer to switch the driver role during the session
*   can commit reverts for participants to retrospect on what got reverted
*   finally, it's also gentler than strict TCR because it does not revert the tests

The tool currently supports git, Java, C#, C++, and Go, but it's open to contributions!

![Photo of a battery. The TCR tool makes it very easy to get started with TCR katas.]({{site.url}}/imgs/2022-07-05-a-surprising-way-how-to-teach-evolutionary-design/battery.jpg)

**Give TCR a try and share your experience!** I'd also love to read about your tips for teaching evolutionary design.

---

Here are other posts that you might find interesting:

*   [How to deliver a remote training with code-katas and randori in pairs]({{site.url}}/how-to-deliver-a-remote-training-with-code-katas-and-randori-in-pairs/)
*   [Incremental Software Development Strategies for Large Scale Refactoring #2: Baby Steps]({{site.url}}/incremental-software-development-strategies-for-large-scale-refactoring-number-2-baby-steps/)
*   [A coding dojo exercises plan toward refactoring legacy code]({{site.url}}/a-coding-dojo-exercises-plan-towards-refactoring-legacy-code/)
*   [Why you should start a team coding dojo Randori right now]({{site.url}}/why-you-should-start-a-team-coding-dojo-randori-right-now/)
*   [How to start a team coding dojo Randori today]({{site.url}}/how-to-start-a-team-coding-dojo-randori-today/)