---
layout: single
title: "A serious game for learning 'built-in quality at the source'"
date: 2019-04-11
comments: true
categories:
 - lean
 - gamification
 - agile
 - team building
 - open source
description: "Skip studying queuing theory! Play this 1h15 serious game for learning why building-in quality at the source leads to a productive and sustainable pace. Here is the full story of this game. You'll learn how we created it, how to get started as well as why built-in quality at the source matters."
header:
   teaser: /imgs/2019-03-08-a-serious-game-for-learning-built-in-quality-at-the-source/built-in-quality-game-box-teaser.jpeg
   og_image: /imgs/2019-03-08-a-serious-game-for-learning-built-in-quality-at-the-source/built-in-quality-game-box-og.jpeg
published: false
---
_Skip studying [queuing theory](https://en.wikipedia.org/wiki/Queueing_theory)! Play this 1h15 serious game for learning why building-in [quality at the source](http://www.informit.com/articles/article.aspx?p=1336791&seqNum=6) leads to a productive and [sustainable pace](https://www.agilealliance.org/glossary/sustainable/)._

![Drawing of the box of the built-in quality game, a serious game for learning built-in quality at the source. The self-reinforcing positive loop of built-in quality is drawn on the box: ... -> built-in quality -> few late discoveries -> sustainable pace -> time for best practices -> built-in quality -> ...]({{site.url}}/imgs/2019-03-08-a-serious-game-for-learning-built-in-quality-at-the-source/built-in-quality-game-box.jpeg)

The company I work for, [Murex](https://murex.com/), is currently going through a large transformation. This transformation involves training teams to new skills and practices. One such training is the lean concept of "Built-in quality at the source".

Built-in quality at the source is first of all a set of practices ([Software Crafting](http://manifesto.softwarecraftsmanship.org/), [Test Driven Development](/categories/#tdd), [Behavior Driven Development](https://en.wikipedia.org/wiki/Behavior-driven_development), [Continuous Integration](https://en.wikipedia.org/wiki/Continuous_integration)...). Unfortunately, the training was too theoretical. Attendees reported that it was painful and, in the end, useless.

> 💡 Stop of boring people out with theory of queues. Play the built-in quality serious game for learning why software best practices matter!

I had played the [Dice of Debt game](https://www.agilealliance.org/dice-of-debt-game/) with some other Murex agile coaches. They asked me if I knew of a serious game for learning Built-in quality at the source. I did not, and that's why we decided we could build our own!

Before finishing this story, let's first see why this subject is so important.

## Why built-in quality at the source matters

When we postpone quality, we discover problems late and they come back messing up the value flow. It can create so much perturbation that nothing gets done without tremendous efforts. 

Imagine you are working on user story X when a bug appears. This creates at least 3 problems:

1.  You'll receive useless stress
2.  You'll lose some time switching from one task to another
3.  People who might be waiting for story X will have to find something else to do...

Things get even worse at a larger scale. Suppose your team has been building a new feature for 6 months before it goes live and ... users don't like it! You might need to throw away everything and start with a new feature... Leaving a code architecture that is not adapted to what you now need.

This is not a sustainable pace.

![A schema of the vicious circle triggered by the lack of built-in quality at the source. ... -> No Built-in Quality -> Issues discovered late -> Firefighting & Multitasking -> Stress -> Shortcuts -> Neglect best practices -> No Built-in Quality -> ...]({{site.url}}/imgs/2019-03-08-a-serious-game-for-learning-built-in-quality-at-the-source/built-in-quality-vicious-circle.jpeg)

In summary, without built-in quality at the source, people get stressed, which makes them take shortcuts and neglect refactoring, which degrades the code quality, which makes building-in quality at the source even harder...

> 💡 Build-in quality at the source to enable a sustainable pace and continuous refactoring.

## The first test with other coaches

{% assign figure_path="/imgs/2019-03-08-a-serious-game-for-learning-built-in-quality-at-the-source/close-up-small.jpg" | absolute_url %}
    
{% assign figure_alt="Close up of the table while a team is playing the serious game for learning built-in quality at the source" %}
    
{% capture figure_caption %}
From [the Built-in Quality Game](https://philou.github.com/built-in-quality-game/) under [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/)
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

As I said earlier, the first inspiration came from the Dice of Debt. It's another serious game for learning the perils of technical debt. From the Dice of Debt, we kept:

*   the dice
*   simulating a software development team
*   playing over a few iterations
*   tracking what we were are building

We wanted to show the value of a few built-in quality practices, on the flow. We naturally thought of a [Kanban board](/categories/#kanban).

I created just enough material and rules to test the game. We had a test session with volunteer agile coaches at Murex.

This first session was encouraging. The feedback was positive and we got plenty of ideas to improve the game. 

For example, we decided:

*   to simplify the Kanban flow
*   to write the mechanics of the game on the material as much as possible
*   to assign roles to players to start more quickly

Special thanks to [Damien Menanteau](https://about.me/damienmenanteau), [Hicham Ghorayeb](https://twitter.com/hghorayeb), [Joseph Soares](https://www.linkedin.com/in/joseph-soares-19812b13/?originalSubdomain=fr), [Julie Jeru](https://fr.linkedin.com/in/juliejeru) and [Matthieu Tournemire](https://twitter.com/mattrussa)

## The training day

Once we finalized the material, we were ready for our first real-life training.

They were about 40 people attending the training. We had 6 teams of about 7 people play the game at the same time.

{% assign figure_path="/imgs/2019-03-08-a-serious-game-for-learning-built-in-quality-at-the-source/1-team-small.jpeg" | absolute_url %}
    
{% assign figure_alt="A close-up photo of a team playing the serious game for learning built-in quality at the source" %}
    
{% capture figure_caption %}
From [the Built-in Quality Game](https://philou.github.com/built-in-quality-game/) under [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/)
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

As part of a day-long training, we had agenda constraints for our game. We decided to use a faster "real-time" version, where all roles can play at the same time. Indeed, it is faster, but at the cost of lower learning. I definitely recommend to use the turn based version if you can.

Even with this small glitch, the feedback and engagement were great. For example, teams understood that continuous delivery is better than big batch deployment.

The coaches gave great feedback too. They said they would love to use this serious-game for teaching "Built-in Quality at the source". That's why I decided to [open source it](https://philou.github.com/built-in-quality-game/). 

## Try it yourself!

The game is only 1h15, it's not too hard to find the time to play it. 

If you are a team-member, try it with your team. Next time you do an end-of-sprint celebration, or when you have a bit of [Slack Time](https://www.solutionsiq.com/resource/blog-post/the-importance-of-slack-in-achieving-speed-and-quality/). You could also organize a team lunch and play the game at the same time.

If you are a coach, the game is a good substitute for a training. People are usually happy to play instead of attending a classroom training.

[![Github page for this serious game for learning built-in quality at the source]({{site.url}}/imgs/2019-03-08-a-serious-game-for-learning-built-in-quality-at-the-source/github-page-screenshot.jpg)](https://philou.github.com/built-in-quality-game)

All material is available through [Github](https://philou.github.com/built-in-quality-game): [the boards, the cards](https://github.com/philou/built-in-quality-game/tree/master/material), [the rules](https://philou.github.com/built-in-quality-game/Rules.html) and [an animation guide](https://philou.github.com/built-in-quality-game/AnimationGuide.html).


{% assign figure_path="/imgs/2019-03-08-a-serious-game-for-learning-built-in-quality-at-the-source/board-small.jpg" | absolute_url %}
    
{% assign figure_alt="The board of this serious game for learning built-in quality at the source. It's a Kanban board with instruction as how to move items from one column to the next" %}
    
{% capture figure_caption %}
[Main board](https://github.com/philou/built-in-quality-game/blob/master/material/board.jpg) from the [the Built-in Quality Game](https://philou.github.com/built-in-quality-game/) under [Creative Commons Attribution-ShareAlike 4.0 International License](http://creativecommons.org/licenses/by-sa/4.0/)
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

If you try this game, I'd love to have your feedback so that we can improve it.

It's all under [Creative Commons](http://creativecommons.org/licenses/by-sa/4.0/), you are welcome to [contribute improvements](https://github.com/philou/built-in-quality-game/pulls).