---
layout: single-mailing-list
title: "How to play planning poker... Badass Mode!"
date: 2019-08-22
comments: true
categories:
 - infographic
 - planning
 - badass-developer
description: "Planning poker often turns into a power struggle where everyone loses. There are 2 strategies for how to play planning poker when, as dev teams, our estimates are challenged. The 1st is to simply but firmly refuse. The 2nd is to concede, but warn that you won't make it, and stick to clean code anyway."
header:
   teaser: /imgs/2019-07-28-how-to-play-planning-poker-badass-mode/how-to-play-planning-poker-teaser.jpeg
   og_image: /imgs/2019-07-28-how-to-play-planning-poker-badass-mode/how-to-play-planning-poker-og.jpeg
---
_[Planning poker](https://en.wikipedia.org/wiki/Planning_poker) and [story points](https://www.mountaingoatsoftware.com/blog/what-are-story-points) often turn into a power struggle where everyone loses. Here are 2 winning strategies for how to play planning poker as dev teams_

{% assign figure_path="/imgs/2019-07-28-how-to-play-planning-poker-badass-mode/how-to-play-planning-poker-small.jpeg" | absolute_url %}
    
{% assign figure_alt="Drawing explaining dangers of exposing story points outside the dev team. Story points leak outside the team -> Estimates get challenged -> Team cuts on refactoring and clean code -> Team gets slower -> Trust erodes -> Estimates get challenged -> ..." %}
    
{% capture figure_caption %}
By [Philippe Bourgau]({{site.url}}), under [CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/), [high resolution image]({{site.url}}/imgs/2019-07-28-how-to-play-planning-poker-badass-mode/how-to-play-planning-poker.jpeg)
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}


## The large scale trap!

We must be extra careful with any flavor of large-scale agile. It's too tempting to compare or even display velocity figures of different teams. It can even create an artificial sense of competition that will make things even worse.

[Velocity was invented](https://ronjeffries.com/articles/019-01ff/story-points/Index.html) for team internal planning, [not to commit](https://www.scrum.org/resources/commitment-vs-forecast).

> 💡 If we need predictions, [#NoEstimates](https://oikosofyseries.com/no-estimates-book-order) and Lean management tools will work better.

## Don't forget who has the story point printing press!

> 💡 Keep story points inside the team, and you'll have a lot more control over technical debt and refactoring

As developers, [we are the only ones able to keep the code base in a sustainable state](https://www.amazon.com/Clean-Coder-Conduct-Professional-Programmers/dp/0137081073/ref=sr_1_1?keywords=the+clean+coder&qid=1564297687&s=gateway&sr=8-1). Unless our company is on the brink of bankrupt, we should think for the long term! Whenever our estimates gets challenged, we have 2 strategies:

### Say NO!

As a team (or as a team of teams) we should meet before the encounter and agree that we will refuse to reduce our estimates. When everyone refuses, business people will have no choice but to accept it.

### Say YES!

The idea here is to reduce the estimates, but fail until business people listen.

1.  First, you'll need to explain why you think these estimates won't work. Using [metaphors](https://www.oreilly.com/library/view/97-things-every/9780596809515/ch08.html) and [references](http://web.mit.edu/nelsonr/www/Repenning=Sterman_CMR_su01_.pdf) will help here.
2.  Second you'll need to stick to [clean code](https://www.amazon.com/dp/0132350882/ref=emc_b_5_t) and [refactoring](/categories/#refactoring). Even if this means that you will not meet the estimates, do it anyway.
3.  Third, explain again to business people why estimates where not realistic. [Compromising on clean code should not be an option](https://www.youtube.com/watch?v=SfWCRl75Kas).
4.  Repeat...

During this summer, I'll post a few similar [infographics](/categories/#infographic). Next one is [Does Programming equal Refactoring?](/does-programming-equal-refactoring/)
