---
layout: post
title: "From Zero to Pair Programming Hero"
date: 2015-01-27 06:31
comments: true
categories:
 - agile
 - remote
 - pair programming
keywords: "Agile, Scrum, XP, Agile Software Development, Pair Programming, Remote Pair Programming, Distributed Work, Distributed Workplace, Distributed Team"
description: "The story about how our software development team went from not reviewing code to local and remote pair-programming 75% of our time"
---
In my team at [Murex](http://www.murex.com), we've been doing Pair programming 75% of our time for the past 9 months now.

[{% img center /imgs/2015-01-27-from-zero-to-pair-programming-hero/real-teamwork.resized.JPG Photo of all the team doing pair programming%}](/imgs/2015-01-27-from-zero-to-pair-programming-hero/real-teamwork.JPG)

Before I explain how we got there, let's summarize our observations :

* No immediate productivity drop
* Pair programming is really tiring
* Quality expectations throughout the team soared up
* As a result, the quality actually increased a lot
* But existing technical debt suddenly became incompatible with the team's own quality criterion. We went on to pay it back, which slowed us down for a while
* Productivity is regularly going up as the technical debt is reduced
* It helped us to define shared coding conventions
* Pair programming is not for everyone. It has likely precipitated the departure of one team member
* It certainly helped the team to [jell](http://www.hans-eric.com/2007/08/13/is-your-team-jelled/)
* Newcomers can submit code on day 1
* The skills of everyone increase a lot quicker than before
* _Bonus_ : it improves personal skills of all the team members

If you are interested in how we got there, read on, here is our story :

## Best Effort Code Reviews

At the beginning, only experienced team members were reviewing the submitted code, and making remarks for improvement over our default review system : [Code Collaborator](http://smartbear.com/product/collaborator/overview/).

This practice revealed tedious, especially with large change lists. As it was not systematic, reviewers constantly had to remind to the reviewees to act on the remarks, which hindered empowerment.

## Systematic Code Reviews

Observing this during a [retrospective](/how-we-introduced-efficient-agile-retrospectives/), we decided to do add code review to our [Definition Of Done](https://www.scrum.org/Resources/Scrum-Glossary/Definition-of-Done). Inspired by [best practices in the Open Source world](http://producingoss.com/en/setting-tone.html#code-review), we created a ruby review script that automatically creates Code Collaborator reviews based on the [Perforce](www.perforce.com) submits. Everyone was made observer of any code change, and everyone was to participate in the reviews.

At first, to make this practice stick, a few benevolent review champions had to comment all the submitted code; once the habit was taken, everyone participated in the reviews.

Code Collaborator spamming was certainly an issue, but using Code Collaborator System Tray App helped each of us to keep up to date with the remaining reviews to do.

_Bonus_ : As everyone was doing reviews, and that reviews of small changes are easier, submits became smaller.

[{% img center /imgs/2015-01-27-from-zero-to-pair-programming-hero/code-collaborator.resized.png A screenshot of our code collaborator installation%}](/imgs/2015-01-27-from-zero-to-pair-programming-hero/code-collaborator.png)

This was certainly an improvement, but it remained time consuming. We believed we could do better.

## Pair Programming

After 1 or 2 months of systematic code reviews, during a retrospective (again) nearly all the team members decided to give [pair programming](http://blogs.sourceallies.com/2011/03/pair-programming-101/) a try.

We felt the difference after the very first day : pair programming is intense, but the results are great. We never turned back.

With pair programming in place, we had to settle a pair switching frequency. We started with the full story, tried a one day rotation, and eventually settled on "MIN(1 week, the story)".

This is not set in stone and is team dependent. It may vary depending on the learning curve required to work on a story. We might bring it down later maybe.

## Remote Pair Programming

Ahmad, a Murex guy from Beirut joined the team a few months ago. We did not want to change our way of working, and decided to try remote pair programming.

### Initial Setup

At the beginning, we were using [Lync](http://products.office.com/en-us/Lync/lync-2013-video-conferencing-meeting-software) (Microsoft's chat system) with webcams, headphones and screen sharing. It works, but Lync's screen sharing does not allow seamless remote control between Paris and Beirut. Here is how we coped with this :

* Only exceptionally use Lync's "Give Control" feature : it lags too much
* Do small submits, and switch control at submits
* When you cannot submit soon, shelve the code on perforce (you would just pull your buddy's repo with git), and switch control

As a result, Ahmad became productive a lot more quickly. We are not 2 sub teams focusing on their own area of expertise, but 1 single distributed team sharing everything.

[{% img center /imgs/2015-01-27-from-zero-to-pair-programming-hero/remote-pairing-setup.resized.jpg My remote pair programming setup%}](/imgs/2015-01-27-from-zero-to-pair-programming-hero/remote-pairing-setup.jpg)

### Improved Setup

Remote pair programming as such is workable, but does not feel as easy as being collocated. Here are a few best practices we are now using to improve the experience :

* Keep your pair's video constantly visible : either on your laptop of in a corner of you main screen, but it's important to see his facial expression all the time
* In order to allow eye contact, place your cam next to the window containing the video of your pair.
* Using 2 cameras, [ManyCams](http://download.manycam.com/) and a small whiteboard allows to share drawings !

[{% img center /imgs/2015-01-27-from-zero-to-pair-programming-hero/remote-pairing-screenshot.resized.jpg A screenshot of my pair programming environment%}](/imgs/2015-01-27-from-zero-to-pair-programming-hero/remote-pairing-screenshot.jpg)

* We started using the [Pomodoro technique](http://pomodorotechnique.com/) for control switching. [MarinaraTimer](http://www.marinaratimer.com/) provides an online and shareable timer.
* We also started maintaining a todo list with an online shareable editor such as [CollabEdit](http://collabedit.com/) or [Google Docs](https://docs.google.com/).

### Future Setup

We are currently welcoming a new engineer in Beirut, and as we will be doing more remote pair programming, we'll need to make this more seamless. Control sharing and lag through Lync remain the main issues. We don't have a solution for that yet, but here are the fixes we are looking into

* [Saros](http://www.saros-project.org/) is an [Eclipse](https://eclipse.org/) plugin for remote concurrent and real time editing of files. Many people can edit the files at the same time. We are waiting for the [Intellij](https://www.jetbrains.com/idea/) version that is still under development

[{% img center /imgs/2015-01-27-from-zero-to-pair-programming-hero/saros.resized.png A screenshot from Eclipse with Saros plugin%}](http://www.saros-project.org/screenshots)

* [Floobits](https://floobits.com/) is a commercial equivalent of saros. We tried it and it seems great. It's not cheap though, especially with in-house servers.
* [Screenhero](https://screenhero.com/) is a commercial low-lag, multi cursor screen sharing tool. Unfortunately, it currently does not work behind a proxy, and so we were not able to evaluate it yet.

## Final thoughts

I believe that collocated, and remote, pair programming are becoming key skills for a modern software engineer.

I hope this will help teams envisioning pair programming. We'd love to read about your best practices as well !