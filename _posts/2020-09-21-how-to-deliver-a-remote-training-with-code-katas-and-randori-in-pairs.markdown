---
layout: single-mailing-list
title: How to deliver a remote training with code-katas and randori in pairs
date: 2020-09-24
comments: true
categories:
- remote
- coaching
- learning
- coding dojo
description: "Randori-in-pairs code-katas maximize learning thanks to hands-on coding and close interaction. How to deliver remote training using randori-in-pairs? 1st: use the git-handover technique to share code. 2nd: create breakout rooms in your screen-sharing app for close interaction and to let you jump in!"
header:
  teaser: "/imgs/2020-09-21-how-to-deliver-a-remote-training-with-code-katas-and-randori-in-pairs/randori-in-pairs-bunch-teaser.jpg"
  og_image: "/imgs/2020-09-21-how-to-deliver-a-remote-training-with-code-katas-and-randori-in-pairs/randori-in-pairs-bunch-og.jpg"
---
_[Randori-in-pairs](https://leanpub.com/codingdojohandbook) [code-katas](https://en.wikipedia.org/wiki/Kata_(programming)) maximize learning thanks to code and interaction. With [git-handover](https://www.remotemobprogramming.org/#git-handover) and breakout rooms, it becomes a practical remote training._

![Tiles of people connected 2 by 2 with lightnings. Randori-in-pairs is an effective technique to deliver remote training that involves code.]({{site.url}}/imgs/2020-09-21-how-to-deliver-a-remote-training-with-code-katas-and-randori-in-pairs/randori-in-pairs-bunch.jpg)

COVID and lock-down have made the training world jump 10 years forward. Remote training is becoming the norm. Unfortunately for us, switching to remote training is not straightforward! Here are a few comments I found on the online [extremeprogramming@#groups.io](https://groups.io/g/extremeprogramming).

> I moved one physical training session (2 days) into Zoomland and the result did not thrill me.
>
> I definitely did not like losing the ability to wander around the room and look over people's shoulders to ask questions.
>
> I've adapted one in-person training class to the virtual environment [...], but the results to date have been very poor.

Very senior and famous trainers from the [TDD]({{site.url}}/categories/#tdd) / [XP]({{site.url}}/categories/#extreme-programming) community wrote these comments! If these people are struggling to adapt to remote training, no wonder we all are!

[The company I'm working for](https://twitter.com/Work_at_Murex) is currently operating in a remote-first mode. Not by choice, it's a matter of fact: most people now work from home.

This raised a severe challenge for my teammates and me. **We needed to find** a way to continue to work with the teams. In some way, this meant finding **a way to deliver remote training.**

Fortunately for us, the company has developers in our 3 main offices: Beirut, Dublin, and Paris. We had already experimented a lot with remote work, so we were not wholly taken off-guard. Here is how we are now delivering our technical agile coaching.

## Our coaching sessions

We stopped all-day training sessions long ago. Instead, **we have regular sessions with the teams over a few months**. Attendees go to all-day classroom training to learn new techniques. Shorter regular sessions become routine that changes how a team operates.

Our current model of technical coaching relies on two kinds of sessions:

*   Different flavors of Code-Kata practice sessions: presentation kata, all in randori, and randori-in-pairs. We use these formats to introduce new techniques related to TDD and refactoring. If you want more details, check my [previous post about the bubble context and the Gilded Rose kata]({{site.url}}/initiate-your-team-to-tdd-for-legacy-code-with-the-gilded-rose-kata/).
*   We also run [Mob sessions]({{site.url}}/categories/#mob-programming) in which we work with the full team on their own codebase. During these sessions, we apply, for real, what we have practiced in kata sessions.

These formats are not all as easy to adapt to remote work.

*   During mobs and all-in-randoris, everyone works on the same codebase. These formats work very well with the git-handover mechanism. (More about the git-handover in [Best open source tools for remote pair programming)]({{site.url}}/best-open-source-tools-for-remote-pair-programming/)
*   On the other side of the spectrum, the presentation kata is like live-coding. Any screen-sharing tool will let the driver present what he's doing.
*   **The real challenge is in running a successful Randori-in-pairs remote session**. Unfortunately, it's also one of the most learning-effective training formats. Let's see how this works.

## Randori in pairs

> As far as training: mobbing has limits, and I've done TDD training with 8 folks in a mob... but more than that would likely start losing folks. [[Jeff Langr](http://langrsoft.com/)] on [[extremprogramming@groups.io](https://groups.io/g/extremeprogramming/message/160729)]

Here's a quick reminder of the different Randori formats.

During a randori code-kata, all participants work together on the same problem. Problems usually come from well known [online code-kata libraries](https://codingdojo.org/KataCatalogue/). When sitting in the same room, participants share the same laptop. A different person becomes the driver and receives the keyboard every 5 minutes. (Check this post if you want to learn [How to start a team coding dojo randori today!]({{site.url}}/how-to-start-a-team-coding-dojo-randori-today/))

A randori-in-pairs is like a Randori, except that participants don't work all together. Instead, they work in pairs on their dedicated version of the code.

Randoris improve team dynamics and can introduce new practices and techniques to everyone.

**Randoris-in-pairs are better for practice. By working in pairs, participants will have more time at the keyboard.**

[![Cover of the book Training from the back of the room. By letting pairs work through the exercices by themselves, Randori-in-pairs let you, the trainer, adopt a back seat position.]({{site.url}}/imgs/2020-09-21-how-to-deliver-a-remote-training-with-code-katas-and-randori-in-pairs/training-from-the-back-of-the-room-cover.jpg)](https://www.goodreads.com/book/show/8141935-training-from-the-back-of-the-room)

The randori-in pairs format has a [Training from the back of the room](https://www.goodreads.com/book/show/8141935-training-from-the-back-of-the-room) flavor. Through discussion and feedback, participants learn many lessons without your intervention! It's both a way to scale the training and to get your message through. Learning by oneself or from a teammate feels more natural than listening to an expert!

## A recipe for remote randori-in-pairs

### Regular short sessions

> Without the travel to on-site, it seems silly to try to cram things into full days. [[George Dinwiddie](http://blog.gdinwiddie.com/)] on [extremeprogramming@groups.io](https://groups.io/g/extremeprogramming/message/160731)

**If you usually provide full-day training, it's time to split it into 2 hours sessions over many days, or even weeks.**

Spending the whole day with a headset on is exhausting. The old 8 hours a day style of training is not sustainable when remote. 

As I wrote above, we have been running regular short sessions for a long time now. Experience showed that it's more effective than full-day classroom training. It leaves time for participants to experiment with their new knowledge. When they arrive at the next session, they have gone through successes and failures. They can share best practices with their teammates or ask more insightful questions.

That's good news for us. **Remote work is forcing us to spread training sessions over many days, but this will be more effective!**

### Breakout rooms

The pairing setup is easy to reproduce with breakout rooms. Good video conferencing tools provide a way to send participants in private rooms.

I've heard a lot of praise about [Zoom's breakout rooms](https://www.businessinsider.fr/us/how-to-do-breakout-rooms-in-zoom). Due to corporate policy, we had to use Microsoft Teams, though. It turned out to be pretty easy to [reproduce a similar feature within Teams](https://techcommunity.microsoft.com/t5/microsoft-teams-community-blog/how-to-do-breakout-rooms-in-microsoft-teams-a-real-life-example/ba-p/1506862). We just had to prepare extra channels for every pair and ask participants to join them.

> When I did training, I would have each share their screen and I would watch on "[Brady bunch](https://en.wikipedia.org/wiki/The_Brady_Bunch)" mode in google meets, flicking between screens. It was exhausting for me but otherwise worked well, especially since everyone was able to learn from each other's mistakes easier. [[Avi Kessner](https://www.linkedin.com/in/avikessner/?originalSubdomain=il)] on [extremeprogramming@groups.io](https://groups.io/g/extremeprogramming/message/160741)

[![Video screenshot of the title screen of The Brady Bunch TV sitcom. As a trainer, during a remote randori in pairs, you can overlook all pairs working and jump in at any time.]({{site.url}}/imgs/2020-09-21-how-to-deliver-a-remote-training-with-code-katas-and-randori-in-pairs/the-brady-bunch.jpg)](https://en.wikipedia.org/wiki/The_Brady_Bunch)

As a trainer, this setup lets you jump from one pair to the other. I've found that it was possible to deal with up to 4 pairs this way. Depending on how autonomous your attendees already are, your mileage may vary...

### Git Handover

**One key issue for an effective remote randori-in-pairs is how to share code within a pair. The most straightforward way to do that is to use the git-handover technique.** It relies on simple tools, and developers used to Git will understand how it works in less than a minute.

A pair should create a dedicated branch and collaborate by pulling and pushing code. From then on, the driver can share his screen and work as he prefers. It's also a good practice to configure a reminder to switch the driver every 5 minutes.

Learn more about the git-handover technique in my post [Best open source tools for remote pair programming]({{site.url}}/best-open-source-tools-for-remote-pair-programming/).

![Illustration of the git-handover pull-push loop that can be use for mob, but also pair programming. This technique is the most straightforward to have pairs collaborate in remote randori-in-pairs training.]({{site.url}}/imgs/2020-09-21-how-to-deliver-a-remote-training-with-code-katas-and-randori-in-pairs/git-pull-push-loop.jpeg)

## What to do in practice?

### Before the session

1.  Prepare a git repo with the code kata to work on. Make sure that it is accessible to all participants.
2.  Setup breakout rooms or sub-channels within your video conferencing system
3.  Prepare git branches for each pair to work on

### During the session

1.  Gather everyone in the main room, and introduce the subject
2.  The first time, you might have to explain the logistics of the remote randori-in-pairs
3.  Send everyone to their pair room and start coding.
4.  Jump from room to room. Troubleshoot and re-explain how it's working until people get used to the setup. It should not take long, though.
5.  When time is over, gather everyone in the main room again for a quick retrospective.

### Tooling

Here are a few useful tools:

*   [mob](https://github.com/remotemobprogramming/mob) is a tool written in Go that deals with the timer and pulls and pushes to a git WIP branch.
*   We've had success with a [simple watch script]({{site.url}}/best-open-source-tools-for-remote-pair-programming/#the-scripts)  that keeps pulling and pushing on the WIP branch. Once started, Participants only have to deal with screen sharing.
*   There are many online timers to remind you to switch the driver when mob or pair programming. We use [https://agility.jahed.dev/](https://agility.jahed.dev/), but many others will do.

[![Screenshot of Agility Timer. Using a timer to switch driver is very useful to share keyboard time evenly during a randori-in-pairs session]({{site.url}}/imgs/2020-09-21-how-to-deliver-a-remote-training-with-code-katas-and-randori-in-pairs/agility-timer.jpg)](https://agility.jahed.dev/)

## Why does it work?

Let's pause a second to understand why this setup works so well.

**1st: it keeps all the benefits of randoris-in-pairs:**

*   It maximizes practice time
*   It maximizes interaction in every pair
*   Pairs discover a lot of lessons by themselves

**2nd: as a trainer or coach, you can jump in and observe what a pair is doing from the back seat.** When you do so, you can see both the code and the attendees. You're in a perfect situation to ask the right question, just at the right time.

**3rd: thanks to git-handover, people can use their own IDE and environment.** This frees up more brain-CPU for the learning.

**4th: as everyone participates from home, it's easier to spread the training over many days.** It's more sustainable for attendees. As a consequence, they are in a better mindset for learning.

**5th: spreading training over shorter sessions is also better for building knowledge!**

**Bonus: this randori-in-pairs format benefits from all the extra remote advantages:**

*   Saving on commutes
*   Staying close to our families
*   Working at our own desks
*   It's better for the environment!

## Try it yourself!

The current situation has put some of us into serious difficulties! **Achieving the level of interaction we rely on during a remote training is difficult!** The remote randori-in-pairs gets pretty close. **Give this format a thorough look before you deliver your next remote training!**

Now is the time to experiment and discover solutions that we did not envision 1 year ago! The nice thing is that remote randori-in-pairs is easy to test:

*   Find 2 volunteers
*   Try a mini session to get the feel of it
*   Fine-tune and repeat until you feel ready

At this point, invite your first participants and deliver excellent remote training. At this point, you'll be in a perfect situation to improve even further!

If I'd love to read how it turned out for you!
