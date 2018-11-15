---
layout: single
title: "Vertical Kanban Board Setups"
date: 2018-11-15
comments: true
categories:
 - personal-productivity
 - kanban
 - gamification
description: "Turning Kanban boards vertically fits western cultures better. There is a real opportunity to improve the UX of our process tools and bring a more effective and sustainable pace. For example, we could have localized Kanban boards setups. We could even create more humane and gamified boards."
header:
   teaser: /imgs/2018-11-13-vertical-kanban-board-setup/humane-kanban-teaser.jpeg
   og_image: /imgs/2018-11-13-vertical-kanban-board-setup/humane-kanban-og.jpeg
---
_Turning Kanban boards vertically fits western cultures better. Improving UX of our process tools would eventually lead to a more effective and sustainable pace._

[My previous post](/its-time-to-flip-your-kanban-board-setup/) detailed how flipping [Kanban](https://en.wikipedia.org/wiki/Kanban) boards columns makes Kanban more effective. I suggested that Kanban works in Japan because of the Japanese language's orientation.

## Culturally oriented Kanban

Kanban and Kanban boards came from Japan. Traditionally, [Japanese](https://en.wikipedia.org/wiki/Japanese_writing_system) reads in columns, from right to left. Kanban boards use columns too, but flow from left to right! Japanese people 'pull' items from left-TODO to right-DOING. It makes sense to them because they are pulling against the traditional word flow.

When I was at [NewCraft](https://ncrafts.io/) this year, [Nat Pryce](http://www.natpryce.com/) gave [a presentation about the metaphors we use in software](http://videos.ncrafts.io/video/275530146). He mentioned widespread metaphors we rely on, that we are not even aware of.

[![Screenshot of Nat Pryce's talk at NewCraft 2018 showing a famous metaphor]({{site.url}}/imgs/2018-11-13-vertical-kanban-board-setup/nat-pryce-metaphore.jpg)](http://videos.ncrafts.io/video/275530146)

Many metaphors are culture dependent. Let's see what the Kanban board setup would look like if we adapted it to the Western text orientation.

![Drawing of a Kanban Board Setup rotated according to Western writing flow]({{site.url}}/imgs/2018-11-13-vertical-kanban-board-setup/vertical-kanban.jpeg)

### Benefits

The first benefit is when we display this board on the wall. DONE and DOING areas would be at eyes height. We would need an extra effort to look at items that are still TODO. This would reduce Work In Progress, multitasking and stress. In the end, it would contribute to a more sustainable pace.

Another benefit is when we display such a board on a computer screen. TODO items would be at the bottom of the board. They are likely not to appear on the screen when we open the board. Again, we would need the extra scrolling to see what's TODO. And again, this would result in a more sustainable pace.

Finally, it makes more sense vocabulary-wise. [Kanban is a pull system](https://kanbanize.com/lean-management/pull/what-is-pull-system/). Did you ever try to pull something from the left with one arm? Pulling from a side does not work well. As my Aikido master would say, it's a great way to hurt yourself. When we want to pull something heavy, we usually start by facing it. Most of the time, we'll pull from in ahead, or from below.

### Regional settings

> 💡 We need to adapt Kanban boards according to people's cultures.

All this is culture dependent. As I said, I'm French, and this Kanban board setup works well for Western cultures. We need to adapt Kanban boards according to people's cultures. People who read lines from right to left, might prefer this orientation:

![Drawing of a Kanban Board Setup oriented for right to left readers]({{site.url}}/imgs/2018-11-13-vertical-kanban-board-setup/vertical-right2left-kanban.jpeg)

Fortunately for digital boards, our computers have regional settings. The software could adapt Kanban boards orientations to the client's regional settings!

For obvious reasons, orienting the physical board according to local culture should suit most people using it.

## Humane tools

> 💡 Could we make these sad, sterile and mechanic process tools more humane?

Let's dream for a while and push things even further. What we are talking about is actually UX for Kanban boards. Could we make these sad, sterile and mechanic tools more humane? Up to now, all we did has been to copy-paste physical boards on a screen. Could we use technology to build something better? Here is what such a Kanban could look like:

[![Drawing of a humane friendly Kanban Board Setup]({{site.url}}/imgs/2018-11-13-vertical-kanban-board-setup/humane-kanban-small.jpeg)]({{site.url}}/imgs/2018-11-13-vertical-kanban-board-setup/humane-kanban.jpeg)

We could add animations, visual hints, interaction, gamification... All this to help us perform our work at a sustainable pace.

### TODO cesspool

The TODO area is usually a mess made of in-the-shower ideas, half specified stories, fully detailed tasks, large or small epics, valuable or not stories... We could use visual clues to make all this jump to our faces:

*   bigger cards for larger items
*   shiny cards for high value items
*   jiggling cards for risky items
*   blurry cards for unclear items
*   we could orient all this mess over 2 axes, value and size for example, to spot items that are ready to start

### DOING overload

The DOING section is often overloaded with too much work.

*   We could make the DOING bottleneck visible with a funnel shape
*   We could have small task slots to make sure we cannot start items that are too big

### DONE Sisyphus tasks

{% assign figure_path="/imgs/2018-11-13-vertical-kanban-board-setup/Sisyphus_by_von_Stuck.jpg" | absolute_url %}

{% assign figure_alt="Painting of Sisyphus by Franz von Stuck, 1920. Pushing tasks through a Kanban board can sometimes feel like Sisyphus task" %}

{% capture figure_caption %}
Sisyphus by [Franz von Stuck](https://en.wikipedia.org/wiki/Franz_Stuck), 1920
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

Software too often feels like [Sisyphus](https://en.wikipedia.org/wiki/Sisyphus) task. As soon as something is finished, a new task takes its place to keep us busy... until we retire.

*   We could have mini-rewards when things get done (quotes, songs, tweets, notifications, gifts, sustainable pace advices ...)
*   We could use a metaphor, like air balloons, for Stories, Epics and products. When enough story balloons are done, they'll lift their epic balloon...
*   Quantified [OKRs](https://en.wikipedia.org/wiki/OKR) would also make a great progress tracking system here. (I'll blog about that some day)

## Back to reality

Enough dreaming... I don't know of such tool yet. If you know something like this, I'd be happy to learn about it. Otherwise, this would make a great open-source side-project. What do you think? Would you use it? Would you contribute?