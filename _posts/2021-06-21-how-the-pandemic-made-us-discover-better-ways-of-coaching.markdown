---
layout: single-mailing-list
title: How the pandemic made us discover better ways of coaching
date: 2021-06-24
comments: true
categories:
- coaching
- sustainable pace
- change management
- remote
- tcr
- gamification
- blogging
description: "This pandemic year has transformed the way we work! Thanks to fast git-handover in remote mobs, reusable online workshop boards, internal blogging, TCR, and other serious games, technical agile coaching is now more asynchronous, self-service, gamified, open, and inclusive!"
header:
  teaser: "/imgs/2021-06-21-how-the-pandemic-made-us-discover-better-ways-of-coaching/better-ways-teaser.jpg"
  og_image: "/imgs/2021-06-21-how-the-pandemic-made-us-discover-better-ways-of-coaching/better-ways-og.jpg"
variations:
- Wouldn't it be great if challenges always resulted in better ways of working? #technical #agileCoaching #growthMindset #resilience
- Our coaching techniques are now more remote-friendly, asynchronous, inclusive, open, and self-service! #technical #agileCoaching #remote
- Like many, we are suffering from COVID anxiety and Zoom fatigue. Yet, some aspects of our work are now both more sustainable and effective. #technical #agileCoaching #sustainablePace #resilience
- We are experimenting a hybrid git handover + #TCR script #technical #agileCoaching #mobProgramming #pairProgramming #remote
- If you struggle with remote pairing or mobbing, give 'watch.sh' (https://philippe.bourgau.net/best-open-source-tools-for-remote-pair-programming/#open-source-alternative-2-git-pull-push-loop) or the mob tool (https://github.com/remotemobprogramming/mob) a try! #technical #agileCoaching #mobProgramming #pairProgramming #remote
- Online workshop board templates let us reuse and improve activities every time we went through it. #technical #agileCoaching #growthMindset #resilience #remote
- As we adapted to remote work, we replaced long workshops by successions of shorter and sustainable sessions. #technical #agileCoaching #growthMindset #resilience #sustainablePace #remote
- #Remote workshops become a total waste of time when they last longer than 1h30! #technical #agileCoaching #sustainablePace
- We only work with volunteer people and teams. We adapted to the remote workplace with inbound marketing. More inbound demand means more freedom! #technical #agileCoaching #changeManagement #resilience #remote
- Some teams don't want coaches to interfere but prefer to practice by themselves. That's when remote self-service and asynchronous workshops shine! #technical #agileCoaching #changeManagement #resilience #remote
- Making all communication online bridges the gap between offices. In the end, it also makes work more #inclusive. #technical #agileCoaching #remote
- Lately, we've even started to use #TCR in katas with teams, and it's been working surprisingly well! #codingDojo #technical #agileCoaching #gamification
- #CodingDojo with #TCR are fun, and have a poker-like flavor! #technical #agileCoaching #gamification
- Having a script revert our failing changes is OK. Having an annoying coach repeating to take small steps all the time is just painful. #technical #agileCoaching #gamification #TCR #changeManagement
- There are always better ways to work! #technical #agileCoaching #growthMindset #resilience
---
_This pandemic year has transformed the way we do technical agile coaching. It's now more asynchronous, self-service, gamified, open, and inclusive!_

![Drawing of a hand holding a sign 'Halt Pandemic' with 2 alternatives: better ways at the right, and old ways at the left. Crisis such as the pandemic are also an opportunity to innovate and discover better ways of working, or for us, doing technical agile coaching]({{site.url}}/imgs/2021-06-21-how-the-pandemic-made-us-discover-better-ways-of-coaching/better-ways.jpg)

> I would have each share their screen and I would watch[...], flicking between screens. It was exhausting for me but otherwise worked well [...]. ([Avi Kessner](https://www.linkedin.com/in/avikessner/?originalSubdomain=il) on [extremeprogramming@groups.io](https://groups.io/g/extremeprogramming/topic/74008160?p=,,,20,0,0,0::relevance,,remote+Pair+programming,200,2,0,74008160,ct=1&ct=1))


> I moved one physical training session into Zoomland and the result did not thrill me. We did well enough with what we had, but I definitely did not like losing the ability to wander around the room and look over people's shoulders to ask questions ([JB Rainsberger](https://www.jbrains.ca/) on [extremeprogramming@groups.io](https://groups.io/g/extremeprogramming/topic/74008160?p=,,,20,0,0,0::relevance,,remote+Pair+programming,200,2,0,74008160,ct=1&ct=1))


> Without the travel to on-site, it seems silly to try to cram things into full days. And with the friction of remote work, seems counter-productive. I think there are better models waiting to be fleshed out. ([George Dinwiddie](http://blog.gdinwiddie.com/) on [extremeprogramming@groups.io](https://groups.io/g/extremeprogramming/topic/74008160?p=,,,20,0,0,0::relevance,,remote+Pair+programming,200,2,0,74008160,ct=1&ct=1))

⭐️ **Wouldn't it be great if challenges always resulted in better ways of working?**

I would not have bet on that when the pandemic hit us in Spring 2020.

[Murex](https://www.murex.com) has offices in Beirut, Dublin, and Paris. We had already tried to nudge people into remote-friendly work before the pandemic. For example, we experimented remote-first Community of Practice event... But we received a lot of push-backs!

A coach teammate, [Ahmad](https://ahmadatwi.me/), was working from Beirut. Fortunately for us, we were already working in hybrid mode, and the transition was easy for us. When all the company started to work from home, we thought: "It's now, it's going to work this time!". We launched a Remote-Work Community of Practice, but again, the audience did not stick.

Lock-down had suddenly made coaching, relying on pairing and mobbing, a lot harder! We had no idea how we were going to manage.

Yet, you know the saying:

> [Necessity is the mother of invention](https://en.wikipedia.org/wiki/Necessity_is_the_mother_of_invention)

Like everyone, we had to adapt, and we learned a ton by doing so! We had to transform our material and pedagogy. **Our coaching techniques are now more remote-friendly, asynchronous, inclusive, open, and self-service!** **Like many, we are suffering from COVID anxiety and Zoom fatigue. Yet, some aspects of our work are now both more sustainable and effective.**

![Chalk drawing of a stick person climbing steps until he reaches a bulb symbolizing an idea. Innovation often comes from difficulties and constraints. In our case, the pandemic was a key factor that forced us into finding better ways of doing technical agile coaching]({{site.url}}/imgs/2021-06-21-how-the-pandemic-made-us-discover-better-ways-of-coaching/innovation-steps.jpg)

One thing is sure: we will never work as before, even when we get back to the office! Here are a few examples of the changes we made:

## Remote Mob Tooling

Before the pandemic, we had been using git-handover to rotate drivers in remote pairs and mobs. We relied on the `watch.sh` script to keep repos in sync. (Find out more in [Best open source tools for remote pair programming]({{site.url}}/best-open-source-tools-for-remote-pair-programming/)). When all our coachees started to use this script, we had to seriously improve it.

Here are a few unexpected outcomes that came out of this:

*   The script is now more portable and lets everyone mob from his preferred setup.
*   We now have **a git handover + TCR script**! It turned out we had been experimenting with TCR when the lockdown started. It just made sense to combine the 2 scripts together!
*   We are planning to open-source this script!

![Arrow drawing explaining the workflow behind the watch.sh script in a remote mob. Everyone continuously pulls and pushes from the main repo, but by convention, only the Driver changes code during his turn. We've made some serious improvement to this script to be able to run smooth remote mobs with our coachees.]({{site.url}}/imgs/2021-06-21-how-the-pandemic-made-us-discover-better-ways-of-coaching/git-pull-push-loop.jpeg)


💡 **If you struggle with remote pairing or mobbing, give [`watch.sh`]({{site.url}}/best-open-source-tools-for-remote-pair-programming/#open-source-alternative-2-git-pull-push-loop) or the [mob](https://github.com/remotemobprogramming/mob) tool a try!**

## Reusable Remote Workshop Templates

Before the pandemic, we used to rely on everyone being present during workshops. Like every agile coach, we were using a lot of sharpies and sticky notes. Like every agile coach, we used to redesign a new workshop every time.

Everything changed when the lockdown hit us. The company was already using [Miro](https://miro.com/); it felt natural to port our workshops there. It was awkward at first: small screen, clumsy manipulation... After a while, though, we started to notice some benefits:

*   We were able **to reuse and improve activities every time we went through a similar workshop**. For example, we have built a [Test Strategy workshop]({{site.url}}/a-complete-workshop-for-your-team-to-see-what-s-a-good-test-strategy/) board that is being reused a lot at Murex.
*   **We replaced long workshops by successions of shorter and sustainable sessions.** We discovered that **remote workshops become a total waste of time when they last longer than 1h30**. Inspired by [Training from the Back of the Room](https://www.goodreads.com/book/show/8141935-training-from-the-back-of-the-room), we now ask participants for some asynchronous homework between sessions. Many actually do them!
*   With all this experience under our belt, we ran a successful [remote code-retreat at DDD Europe](https://dddeurope.com/2021/program/2021/program/24)!

We are now refining and adding facilitation instructions to our workshop templates. We are slowly getting to self-service workshops!

[![A bird-eye view of the Test Strategy Workshop template we have built in Miro and that can be reused by different teams. The goal is to gradually improve workshops to be self-explanatory. The pandemic forced us into running more ambitious workshops remotely, forcing us to find ways to make this work!]({{site.url}}/imgs/2021-06-21-how-the-pandemic-made-us-discover-better-ways-of-coaching/Test-Strategy-Workshop-Template-small.jpg)]({{site.url}}/imgs/2021-06-21-how-the-pandemic-made-us-discover-better-ways-of-coaching/Test-Strategy-Workshop-Template.jpg)

💡 Do you want to learn more about remote facilitation? Nick Tune wrote fantastic posts about how to create great workshops using Miro:
* [Remote Workshops Using Miro: What I’ve Learned So Far](https://medium.com/nick-tune-tech-strategy-blog/remote-workshops-using-miro-what-ive-learned-so-far-849391f0412b)
* [Organising Large Miro Boards For Remote Workshops](https://medium.com/nick-tune-tech-strategy-blog/organising-large-miro-boards-for-remote-workshops-abcf01bc2d8e)

## Written communication for tech coaching

We used to stick posters on the walls to get people's attention. I tried to do the same next to my desk at home, but no one noticed 😉.

![Photo of a home desk with posters on the wall that obviously no one at the office will be able to see! If sticking posters on walls was a 'marketing' technique at the office, the pandemic and the lockdown forced us into blogging.]({{site.url}}/imgs/2021-06-21-how-the-pandemic-made-us-discover-better-ways-of-coaching/poster-at-home.jpg)

Fortunately, I have been blogging for a long time, and it was natural to start blogging at work too. Blogging is a long-term strategy, though. Plus, intranets are not yet as inbound-marketing friendly as the internet. Yet, a few months in, people are starting to ask for help after reading our posts.

Here again, the pandemic brought unexpected benefits through our internal blogging:

*   We are more visible! We are getting more inbound work. **We only work with volunteer people and teams, and more inbound work means more freedom.**
*   As we reach more people, we can hope it will bring more change to the organization. Especially since **some teams don't want coach interference but prefer to practice by themselves.**
*   As I mentioned above, many Murex teams are spread over different countries. **Making all communication online bridges the gap between offices. In the end, it also makes work more inclusive.**
*   We post self-service instructions to other activities like Miro templates or Code katas!

💡 Reading [Technical Blogging](https://pragprog.com/titles/actb2/technical-blogging-second-edition/) is an excellent way to start blogging! (NOTE: I never followed any formal course about how to start a blog, but it would have been more effective if I had! I just began to share memo notes, and I would not recommend this as a marketing strategy!)

[![Cover of the book "Technical Blogging, amplify your audience, second edition" It's always a good idea to get some help when starting blogging. As communication shifted to written with the pandemic, it opened an opportunity for to find more volunteer teams to work with us!]({{site.url}}/imgs/2021-06-21-how-the-pandemic-made-us-discover-better-ways-of-coaching/technical-blogging.jpg)](https://pragprog.com/titles/actb2/technical-blogging-second-edition/)

## Video-Gamification for tech agile coaching

We've been dabbling with [TCR](https://medium.com/@tdeniffel/tcr-test-commit-revert-a-test-alternative-to-tdd-6e6b03c22bec) (Test && Commit || Revert) among coaches for a while. We started from [Thomas' Denifel scripts](https://medium.com/@tdeniffel/tcr-variants-test-commit-revert-bf6bd84b17d3) and tweaked them.

As I wrote [above]({{site.url}}/how-the-pandemic-made-us-discover-better-ways-of-coaching/#remote-mob-tooling), the pandemic made us merge TCR and git handover scripts into one! This made it easier to use TCR.

We've been using TCR for all our coach-the-coach sessions for a few months, and we love it! **Lately, we've even started to use TCR in katas with teams, and it's been working surprisingly well!**

*   People like it!
    *   They say **it's fun, that it's got a poker-like flavor**: "I'm betting my work on its correctness!"
    *   We don't like others to point towards our mistakes. **Having a script revert our failing changes is OK. Having an annoying coach repeating to take small steps all the time is just painful.**
*   Given the TCR success, we are exploring other ways to gamify coaching:
    *   Running [Diego Lemos](https://diegolemos.net/)' [extreme-carpaccio](https://github.com/dlresende/extreme-carpaccio) workshop.
    *   Running [Michel Grootjans](https://twitter.com/michelgrootjans)' [Kanban Simulator](https://github.com/michelgrootjans/explaining-flow) with whole teams.
*   Gamified, and especially video-gamified, activities are more self-service by design!

![Photo of 2 kids pairing at a computer, and raising arms in the air in a sign of victory. Playing with TCR and git handover script made us discover the power of gamification when doing technical agile coaching. Yet one more aspect where the pandemic lead us to better ways of working]({{site.url}}/imgs/2021-06-21-how-the-pandemic-made-us-discover-better-ways-of-coaching/children-win.jpg)

💡 If you haven't already given TCR a try, I urge you to have a look at [Thomas Denifel's scripts](https://medium.com/@tdeniffel/tcr-variants-test-commit-revert-bf6bd84b17d3).

💡 _Don't hesitate to ask and subscribe if you would like me to write more about any of the topics above._

## Call to action

Step by step, we are turning some of our work into self-service material! Self-service material means that we can have 

*   More impact
*   A more sustainable pace
*   And more exciting work!

The constraints of the pandemic forced us into innovation. The key lesson here is that **there are always better ways to work**! Let's not wait for the next pandemic! Let's experiment with artificial constraints to trigger innovation!

💡 Are you struggling with the post-pandemic new way of doing technical agile coaching? Give the ideas above a try!

You are welcome to share any new way of doing technical agile coaching that the pandemic forced you into!

----

Here are a few other posts that might interest you:

*   [Best open source tools for remote pair programming]({{site.url}}/best-open-source-tools-for-remote-pair-programming/) presents our `watch.sh` git-handover script and other remote pairing open source tools. 
*   Here is [How to deliver a remote training with code-katas and randori in pairs]({{site.url}}/how-to-deliver-a-remote-training-with-code-katas-and-randori-in-pairs/). 
*   [5 Years of Blogging About Software]({{site.url}}/5-years-of-blogging-about-software/) is an old post where I explained how I started blogging. 
*   Wondering why we only work with volunteers? Check [5 technical agile coaching tips to fight exhaustion from laggards]({{site.url}}/5-technical-agile-coaching-tips-to-fight-exhaustion-from-laggards/)
*   [A complete workshop for your team to see what’s a good test strategy]({{site.url}}/a-complete-workshop-for-your-team-to-see-what-s-a-good-test-strategy/)
