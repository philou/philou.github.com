---
layout: single-mailing-list
title: Best open source tools for remote pair programming
date: 2020-03-31
comments: true
categories:
- remote
- pair programming
- mob programming
- extreme programming
description: "COVID-19 has thrown us into remote work. Here are 3 world-class open-source tools for remote pair programming. If you can spare an IDE: use TMux. If you don't want to change your habits: setup a git pull-push loop in 5 minutes. Don't forget to try Saros: a collaborative real-time editor IDE plugin."
header:
  teaser: "/imgs/2020-03-28-best-open-source-tools-for-remote-pair-programming/covid19-thrown-in-pool-of-remote-work-teaser.jpeg"
  og_image: "/imgs/2020-03-28-best-open-source-tools-for-remote-pair-programming/covid19-thrown-in-pool-of-remote-work-og.jpeg"
---
_COVID-19 has thrown us into remote work. Here are 3 world-class open-source tools for remote pair programming that you can set up today._

![Drawing of a swimming pool with a buoy paneled "Remote Work" Some people are trying to swim, while a virus is pushing more people in the pool. COVID-19 has thrown us into remote work. Here are 3 world-class open-source tools for remote pair programming that you can set up today.]({{site.url}}/imgs/2020-03-28-best-open-source-tools-for-remote-pair-programming/covid19-thrown-in-pool-of-remote-work.jpeg)


As I write this today, the COVID-19 pandemic is violently attacking us. More than 2 billions people are confined at home! It's the first time in mankind history that so many people are working from home.

In the last decades, more and more people have started to remote-work. I've been doing more and more [remote work]({{site.url}}/categories/#remote). In the past few months, I've enjoyed 60% of my time working from home. Unfortunately, choosing remote work and being suddenly forced into it is entirely different.

Did you know that remote [pair](https://en.wikipedia.org/wiki/Pair_programming) or [mob programming](https://en.wikipedia.org/wiki/Mob_programming) can make your [remote team more effective](https://ahmadatwi.me/2019/07/03/5-xp-practices-that-will-make-your-remote-team-more-effective/)? Even if you have been doing local pairing or mobbing, adjusting to remote work might be a challenge, though. Tools exist, but most of them are proprietary. In today's situation, going through a company's full purchase process is too long. Your company's IP policy might also prohibit you from using these tools!

Fortunately, they are some open source alternatives! They are different, yet as effective, if not more, as proprietary solutions! You keep the data, you don't need to ask permission, and you can set them up right now. With them, you will be able to get a world-class remote pairing experience before the end of the day!

Before I go over the solutions, let's first talk about screen-sharing...

## Why giving control over screen sharing sucks

![Screenshot of my first remote pair programming setup. I have been doing remote pair programming for more than 6 years now, and the tools were very basic at the time.]({{site.url}}/imgs/2020-03-28-best-open-source-tools-for-remote-pair-programming/remote-pairing-screenshot.resized.jpg)

I first [started to remote pair program at Murex in 2014]({{site.url}}/from-zero-to-pair-programming-hero/). The team had been doing local pair programming for a few months when [Ahmad](https://ahmadatwi.me/) joined us from Beirut. We did not want to abandon pair programming. We resorted to screen sharing with Skype for Business ([Lync](https://fr.wikipedia.org/wiki/Microsoft_Teams#Histoire) at the time). Even after we tweaked it as much as we could, it remained a painful experience. To make the case clear, here are the pros and cons of screen-sharing and remote-control:

| The pros | The Cons |
|----------|----------|
| Most of the time, you will already have the tools | You'll suffer a substantial lag when typing on the remote machine |
| It does the job | It's painful to adapt to different keyboard layouts when typing remotely |
|  | It's not easy to point to a line of code. We often resorted to giving the line number or full control over the screen. |
|  | Finally, it does not work if you have a bad connection. The full-screen video goes over the wires which makes it pretty heavy on bandwidth |

The main tweak we did to make it less painful was to adopt the [Pomodoro technique](https://en.wikipedia.org/wiki/Pomodoro_Technique) to:

*   take regular breaks
*   use the break to send the code over to your buddy
*   switch driver

My conclusion is that we should avoid default screen-sharing for pairing. There are open-source alternatives that are very easy to setup. You have no reason not to use them!

## Open-source alternatives are few but world-class!

By combining open source bricks, you can set up an effective remote pair programming tool. Today, I know of 3 such combinations:

*   TMux + terminal + editor
*   Git pull-push loop script + screen sharing
*   Saros + screen sharing

Let's go through them in more details

### TMux + Terminal + Editor

[TMux](https://en.wikipedia.org/wiki/Tmux) is a command-line terminal-multiplexer. It lets you set up a terminal session on a server and have 'client terminals' share and interact with it. You can even split the terminal in panes, and see simultaneously:

*   a terminal
*   a command-line editor like Vim or Emacs
*   a test runner
*   a log, from your server for example

Here is what it looks like:

{% assign figure_path="/imgs/2020-03-28-best-open-source-tools-for-remote-pair-programming/tmux-video.jpg" | absolute_url %}
    
{% assign figure_alt="A video screenshot by Ham Vocke demonstrating how to use TMux to make participants in remote pair programming client sessions synchronized." %}
    
{% capture figure_caption %}
Screenshot from a [video](https://www.hamvocke.com/assets/video/ssh_tmux_simple.webm) by Ham Vocke. You can find the full video [on his blog](https://www.hamvocke.com/blog/remote-pair-programming-with-tmux/).
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

Everyone sees the same terminal. Anyone can type in at any moment!

| The pros | The Cons |
|----------|----------|
| Collaborative, real-time edition | No IDE |
| It's easy to point at a line | All the team needs to use the same editor |
| No lag thanks to extra light network usage | Anything that happens out of the terminal is not visible. This can be an issue for manual tests, for example. |
| Everyone can see everything that happens on the shared terminal |  |
| It works from any platform, thanks to the use of core tools |  |
| Any bare server can host the TMux session |  |

Most of the time, you'll be able to work around the cons with [TDD and automated testing](https://ahmadatwi.me/2019/07/03/5-xp-practices-that-will-make-your-remote-team-more-effective/). With a good test harness, running the full app, or starting the debugger becomes very rare. To see what's happening on someone's screen, you'll have to resort to a short session of screen sharing.

Here is what my friend [Arnaud Bailly](https://twitter.com/dr_c0d3), who's been remote pairing for 10 years says:

> It's for me the best solution. It's the fastest interaction, both with the machine and with the people. It's easy to switch between [driver and navigator roles](https://gist.github.com/jordanpoulton/607a8854673d9f22c696). The keystroke quality is optimal (there is no lag or visual artifacts). The whole team shares a single environment (enforces [XP coding standards]({{site.url}}/3-good-and-bad-ways-to-write-team-coding-standards-and-conventions/) by design). It's also easy to automate the VM setup, which makes it very smooth to create new 'Rooms' when needed and ensures that the dev environment is always up to date with the code...

> The only glitch is that you need to get used to working with one editor in text mode. At Symbiont, we were using Spacemacs (emacs + vim), and everyone was ok with it. I'm more of an Emacs person, but it was still working ok.

If you want to learn more about how to set TMux up for remote pair or mob programming, here are a few useful links:

*   [Remote Pair Programming Made Easy with SSH and TMux](https://www.hamvocke.com/blog/remote-pair-programming-with-tmux/) by [Ham Vocke](https://twitter.com/hamvocke)
*   [Remote Pairing: Collaborative Tools for Distributed Development](https://pragprog.com/book/jkrp/remote-pairing) by [Joe Kutner](https://twitter.com/codefinger) has a chapter on TMux

Here's an extra tip we owe to [Emmanuel Gaillot](https://ut7.fr/):

> Add transparency to your terminal to see the other mobsters behind it!

{% assign figure_path="/imgs/2020-03-28-best-open-source-tools-for-remote-pair-programming/tmux-transparent-small.jpg" | absolute_url %}
    
{% assign figure_alt="Superposition of a TMux client terminal over a video conference gallery view. This TMux setup allows us to see the code and people at the same time." %}
    
{% capture figure_caption %}
I built this illustration by superposing a screenshot from [Swapnil Singh's dotfiles repo](https://github.com/swapkats/dotfiles/blob/master/README.md) on top of a zoom gallery view from the official [Zoom documentation](https://support.zoom.us/hc/en-us/articles/360000005883-Displaying-participants-in-gallery-view). Here is a [higher res picture]({{site.url}}/imgs/2020-03-28-best-open-source-tools-for-remote-pair-programming/tmux-transparent.jpg).
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

### Open-source alternative 2: git pull-push loop

As you might know, if you are a regular reader, I am currently an [Agile Technical Coach at Murex]({{site.url}}/the-story-about-how-we-do-agile-technical-coaching/). I spend a lot of my time mob programming with teams on katas or their daily tasks. Most teams at [Murex](https://www.murex.com) are somewhat distributed. As a result, we've been experimenting with remote mobbing a lot.

A few months ago, Ahmad and I decided to give [TCR](https://medium.com/@kentbeck_7670/test-commit-revert-870bbd756864) (Test && Commit \|\| Revert) a try. As Ahmad lives in Beirut, we needed a remote setup from the beginning. I found Thomas Deniffel's posts, and we started from his [TCR Variants](https://medium.com/@tdeniffel/tcr-variants-test-commit-revert-bf6bd84b17d3) scripts.

These sessions proved very interesting. Trying TCR was great, but the scripts themselves are too! They watch the file system for changes to automatically test, commit, revert, pull, and/or push.

We started to play with a 'gentler' version of these scripts that

*   did not run the tests
*   did not revert
*   but continuously pulled and pushed to the current branch

When all mobsters run this script on the same branch, all their local repos are synced in almost real-time.

#### The flow

![Schema of the flow of work between driver and navigators when doing remote pair programming or mob programming with the git-pull-push-loop setup.]({{site.url}}/imgs/2020-03-28-best-open-source-tools-for-remote-pair-programming/git-pull-push-loop.jpeg)

Here is how to use this setup when remote pair or mob programming:

#### When you start on a new task

1.  The first driver shares his screen
2.  He pulls a new (short-lived) work branch from 'master' if you are doing [trunk-based development](https://trunkbaseddevelopment.com/)
3.  He starts the [watch.sh]({{site.url}}/best-open-source-tools-for-remote-pair-programming/#watchsh) script
4.  Other mobsters pull the new branch and check it out
5.  They start the [watch.sh]({{site.url}}/best-open-source-tools-for-remote-pair-programming/#watchsh) script themselves
6.  As in a local mob, they don't touch the code when they are not driving

#### When you switch driver

1.  The previous driver stops typing and sharing his screen
2.  In the background, the [watch.sh]({{site.url}}/best-open-source-tools-for-remote-pair-programming/#watchsh) scripts sync the latest code changes to the new driver's repo
3.  The new driver starts sharing his screen
4.  He compiles and runs the tests to make sure everything works as it used to work on the previous driver's env

#### When you want to commit

1.  The driver stops the [watch.sh]({{site.url}}/best-open-source-tools-for-remote-pair-programming/#watchsh) script
2.  He rebases and squashes all the changes on master with a clear commit message
3.  Once he's pushed on the master branch, he goes back to his work branch and starts the [watch.sh]({{site.url}}/best-open-source-tools-for-remote-pair-programming/#watchsh) script again

#### The pros and cons

Here are the pros and cons of this technique:

| The pros | The Cons |
|----------|----------|
| Everyone is working in his own IDE and preferred personal environment | There is no collaborative code edition |
| There is no lag as you'll be typing on your own machine | You cannot quickly point to a line of code |
| You don't need an extra server outside your current git team repo | You will need a bit of discipline to make sure not to change code while you are not the driver |
| It works from any platform as it only relies on git and the shell |  |

A screen-sharing tool is mandatory to see what happens on the driver's machine. Proper screen-sharing tools will also workaround some of the cons:

*   They will let you have multiple cursors
*   You can use them for extra short 'take control' sessions

Some screen sharing tools even allow you to collaboratively sketch design diagrams on a virtual canvas!

#### The scripts

Here are the scripts we currently use:

##### watch.sh

```sh
#!/bin/sh

# Loops on git pull-push in a remote mob

while true do   ./pull-push.sh done
```

##### pull-push.sh

```sh
#!/bin/sh 

# Pulls and pushes the current git branch.
# Use it to quickly switch driver in a remote mob or randori

export CURRENT_BRANCH=$(git symbolic-ref --short -q HEAD) 

git pull origin "$CURRENT_BRANCH" git add . git commit -m 'Working...' git push origin "$CURRENT_BRANCH"

```

We've tested this setup with a few teams now, and the feedback is unanimous: people love it!

### Open source alternative#3: Saros

The last open-source alternative I know of is [Saros](https://www.saros-project.org/). Saros is an IDE plugin that lets you do distributed pair or mob programming. It gives you multiple edition cursors in the IDE editor.

| The pros | The Cons |
|----------|----------|
| Real-time collaborative code edition | It only syncs the code editor.This means that you cannot see the rest of the IDE and the screen. In particular, it does not display execution of automated or manual tests |
| It's easy to point to a piece of code | It currently only supports IntelliJ and Eclipse |
| It has light network usage compared to a screen sharing system | You'll need to install an [XMPP chat server](https://xmpp.org/software/servers.html) to make it work |

In the end, you're most likely to also need a screen-sharing tool to get your Saros solution to work!

{% assign figure_path="/imgs/2020-03-28-best-open-source-tools-for-remote-pair-programming/this_is_saros.gif" | absolute_url %}
    
{% assign figure_alt="An animation of how 2 IDE sessions running saros are synced together. If you have the right IDE, Saros can be very useful for remote pair programming" %}
    
{% capture figure_caption %}
Animation by the [Saros](https://www.saros-project.org/) team for the [Eclipse marketplace plugin](https://marketplace.eclipse.org/content/saros-distributed-collaborative-editing-and-pair-programming-0#group-screenshots).
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

### Open source alternative#4: conferencing software.

You will always need an excellent conferencing and screen-sharing system. If you don't have one already, here is [a list of open-source alternatives to skype](https://opensource.com/alternatives/skype).

## Proprietary tools

They are now proper proprietary tools for remote pair programming and mobbing. This is not the main topic of this post, but I felt it would not be complete without them. The ones I know of fall into 2 families:

*   Real-time collaborative code edition tools (like Saros)
*   Improved screen-sharing software, optimized with pair programming specific features

These commercial tools cost money but offer professional support and easy setup. Let's see the pros and cons in a bit more detail.

### Real-Time Collaborative Code Editors

For example: [VS Live Share](https://visualstudio.microsoft.com/fr/services/live-share/), [Floobits](https://floobits.com/), [Code Together](https://www.codetogether.com/)

| The pros | The Cons |
|----------|----------|
| Real-time collaborative code edition | It only syncs the code editor. Which means that you cannot see the rest of the IDE or the screen. In particular, you don't see test execution or a manual test |
| It's easy to point to a piece of code | These tools are often platform-specific |
| It has light network usage compared to a screen sharing system | The code is sent through the network |

### Improved Screen-Sharing

For Example: [Tuple](https://tuple.app/), [Use Together](https://www.use-together.com/)

| The pros | The Cons |
|----------|----------|
| You can have multiple cursors on the same screen | You might still suffer from typing lag if you have a low bandwidth |
| It's easy to point to a piece of code | These tools are often platform-specific |
| These tools have extra pair-programming-specific features like drawing on the screen |  |
| Compared to traditional screen sharing, network usage is optimized for pair programming |  |

I had particularly good feedback about Tuple from different people (NB: this post is not sponsored):

<blockquote class="twitter-tweet"><p lang="en" dir="ltr">our team is experiencing with two tools for a true remote pairing session: <a href="https://twitter.com/PairWithTuple?ref_src=twsrc%5Etfw">@PairWithTuple</a> (pro: very low latency, still the best tool on OSX, cons: only for OSX) and <a href="https://twitter.com/USE_Together?ref_src=twsrc%5Etfw">@USE_Together</a> (pro: available for OSX, Windows and Linux (alpha), with a steady roadmap of upcoming improvements)</p>&mdash; Pietro Di Bello (@pierodibello) <a href="https://twitter.com/pierodibello/status/1241654908295819265?ref_src=twsrc%5Etfw">March 22, 2020</a></blockquote> <script async src="https://platform.twitter.com/widgets.js" charset="utf-8"></script>

Or from a former colleague:

> It just works!

## What should you do?

COVID-19 suddenly threw you in remote work?

![Photo of a laptop and a TV remote control on a sofa. In the current situation, we all have work from home. Pair programming or mob programming makes remote teams more effective]({{site.url}}/imgs/2020-03-28-best-open-source-tools-for-remote-pair-programming/home-office.jpg)

Don't wait for a corporate decision about the best remote pair programming tool to use. The situation we are in is [chaotic](https://en.wikipedia.org/wiki/Cynefin_framework#Chaotic), and we must act now! It's the perfect occasion to refactor your organization and inject new practices. 

Keep in mind that there is no one-size-fits-all tool for remote pair or mob programming. That said, here are my own recommendations. You should be able to set up a best-of-breed remote pairing and mobbing solution before the end of the day:

1.  Use [TMux]({{site.url}}/best-open-source-tools-for-remote-pair-programming/#tmux--terminal--editor) if you can. If your team is not using an IDE, or if you can be as effective without one, then TMux is a no-brainer.
2.  If you need an IDE, set up a [git pull-push loop]({{site.url}}/best-open-source-tools-for-remote-pair-programming/#open-source-alternative-2-git-pull-push-loop) in 5 minutes. You'll get something that works well, that will not change your habits, and with no extra tooling. This the solution we are currently using at work.
3.  You might also try [Saros]({{site.url}}/best-open-source-tools-for-remote-pair-programming/#open-source-alternative3-saros) if it supports your IDE. Test it and see if it works for you.
4.  Finally, there might also be a [proprietary solution]({{site.url}}/best-open-source-tools-for-remote-pair-programming/#proprietary-tools) that will work for you! If you have the bandwidth, the money, a quick process to buy a tool, and need an IDE, here is the way to go:
    1.  Short-list them based on your platform and preferred features,
    2.  Try them
    3.  Buy what works best for you!

I hope this little guide can help those of you who suddenly have to pair or mob program remotely. Remote pairing or mobbing can be a pretty enjoyable and sustainable experience. If you want you can learn more, here are [7 Remote pair programming best practices Q&A]({{site.url}}/7-remote-pair-programming-best-practices-q-and-a-part-1/).

Keep hope, persevere, and you'll soon be as effective as you used to be!
