---
layout: single
title: "Feature Teams vs Component Teams? Decide with Event Storming and DDD"
date: 2019-03-28
comments: true
categories:
 - architecture
 - squash-BDUF-with-event-storming-series
 - event storming
description: "The feature team vs component team question is tough and can often slip into dogma. Unfortunately, there is no one-size fits all. Event Storming and DDD build enough shared knowledge and architecture vision for all-in team re-organization workshops to succeed"
header:
   teaser: /imgs/2019-02-19-feature-teams-vs-component-teams-decide-with-event-storming-and-ddd/cut-teams-with-event-storming-teaser.jpeg
   og_image: /imgs/2019-02-19-feature-teams-vs-component-teams-decide-with-event-storming-and-ddd/cut-teams-with-event-storming-og.jpeg
published: false
---
_Team organization is tough. [Event Storming](https://www.eventstorming.com/) builds enough shared knowledge and architecture for successful team re-organization workshops._

Here is [Conway’s Law](https://en.wikipedia.org/wiki/Conway%27s_law):

> "Organizations which design systems ... are constrained to produce designs which are copies of the communication [structures](https://en.wikipedia.org/wiki/Organizational_structure) of these organizations."
>
> M. Conway[[2]](https://en.wikipedia.org/wiki/Conway%27s_law#cite_note-Conway-2)

If you have an existing team and a product you are trying to transform, this law is of paramount importance to you. If you did the Event Storming workshop, you should have a shared architecture vision. Let’s see how you can make Conway’s law help you to refactor!

{% assign figure_path="/imgs/2019-02-19-feature-teams-vs-component-teams-decide-with-event-storming-and-ddd/organizational_charts.jpg" | absolute_url %}
    
{% assign figure_alt="Humoristic drawing of the organization big software companies" %}
    
{% capture figure_caption %}
Credits to [Manu Cornet](http://ma.nu/) from [http://bonkersworld.net/organizational-charts](http://bonkersworld.net/organizational-charts)
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

> 💡 Together, Event Storming and Conway's Law help long term refactoring.

⚠️ Disclaimer: You might be few enough to organize well as a single team. In this case, you don't need all this… until you grow, hopefully 😉

[![Poster introducing an Event Storming and DDD workshop intended to re-organize teams.]({{site.url}}/imgs/2019-02-19-feature-teams-vs-component-teams-decide-with-event-storming-and-ddd/cut-teams-with-event-storming-small.jpeg)]({{site.url}}/imgs/2019-02-19-feature-teams-vs-component-teams-decide-with-event-storming-and-ddd/cut-teams-with-event-storming.jpg)

This is also the 18th post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). It all started with misadventures with [Big Design Up Front](https://en.wikipedia.org/wiki/Big_Design_Up_Front).

## Principles of Teams

Teams that follow the [boundaries of the architecture vision](/drafting-a-functional-architecture-vision-with-ddd-event-storming-part-1/) will more easily realize it. We should not map teams to our existing system, but rather to our target system!

The idea is to conduct a team re-organization workshop as a follow-up to Event Storming. It’s best to run this activity just after we draft the target architecture, when it is still fresh in everyone’s mind.

{% assign figure_path="/imgs/2019-02-19-feature-teams-vs-component-teams-decide-with-event-storming-and-ddd/self-org-workshop.jpg" | absolute_url %}
    
{% assign figure_alt="Thumbnail from a video of a team self-selection workshop involving 200 people at KPN iTV" %}
    
{% capture figure_caption %}
[Video](https://www.youtube.com/watch?v=mqgpWFI3UOI&feature=youtu.be) of a team self-selection workshop at KPN iTV
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

The principles are pretty simple:

[![Poster with 9 team structure principles. Presenting the some general teams principles helps attendees of a DDD Event Storming to go past the "feature teams vs component teams" debate.]({{site.url}}/imgs/2019-02-19-feature-teams-vs-component-teams-decide-with-event-storming-and-ddd/team-principles-small.jpg)]({{site.url}}/imgs/2019-02-19-feature-teams-vs-component-teams-decide-with-event-storming-and-ddd/team-principles.jpg)

1.  Display the architecture vision and team principles 
2.  Let people self organize into new teams!

> 💡 Event Storming helps people to dynamically self-organize into teams.

## Workshop steps

Here are the detailed steps for this activity:

* Do this in front of the Event Storming board. It's better to have the [functional areas](/drafting-a-functional-architecture-vision-with-ddd-event-storming-part-1/) and [relationship patterns](/focus-on-core-domain-with-relationships-from-ddd-and-event-storming/). They make good starting points for team boundaries
* Present the team principles
* Let people brainstorm ideal team boundaries. Again, use wool, tape to mark this on the board
* Ask attendees to identify the skills needed for each team. They can mark this on the board with post-its
* If it was not the case already, bring everyone in!

[![Poster presenting an example of 'legacy' team structure. Event Storming and DDD create the necessary shared knowledge for a successful re-teaming workshop, and letting people decide what's best between feature teams vs component teams]({{site.url}}/imgs/2019-02-19-feature-teams-vs-component-teams-decide-with-event-storming-and-ddd/legacy-teams-small.jpg)]({{site.url}}/imgs/2019-02-19-feature-teams-vs-component-teams-decide-with-event-storming-and-ddd/legacy-teams.jpg)

* Present the current team boundaries.

[![Cover of the Dynamic Reteaming book by Heidi Shetzer Helfand. Use Event Storming, DDD and Dynamic Re-teaming workshops to let people chose between feature teams vs component teams]({{site.url}}/imgs/2019-02-19-feature-teams-vs-component-teams-decide-with-event-storming-and-ddd/dynamic-reteaming.jpeg)](https://leanpub.com/dynamicreteaming)

* Let people self-organize into new teams according to all the constraints. Depending on your situation, this step might take more or less time. If you envision a rough time, it’s a good idea to have a look at [this book](https://leanpub.com/dynamicreteaming) for how to run this activity.

[![Photo of the board at the end of this team re-organization Event Storming. After discussing trade-offs for a while, people usually come up with a compromise on team structures. Rarely do we end up with all features teams or all component teams]({{site.url}}/imgs/2019-02-19-feature-teams-vs-component-teams-decide-with-event-storming-and-ddd/final-board-small.jpg)]({{site.url}}/imgs/2019-02-19-feature-teams-vs-component-teams-decide-with-event-storming-and-ddd/final-board.jpg)

* Draw a quick diagram of the agreed on team structure.

[![Diagram of the target team structure. A typical example of how to record outcomes of a DDD Event Storming. We see that the target organization contains both feature teams and component teams]({{site.url}}/imgs/2019-02-19-feature-teams-vs-component-teams-decide-with-event-storming-and-ddd/napkin-ddd-context-map-small.jpg)]({{site.url}}/imgs/2019-02-19-feature-teams-vs-component-teams-decide-with-event-storming-and-ddd/napkin-ddd-context-map.jpg)


## Tips

Here are a few simple tips to make this workshop more successful:

### Get Everyone In

It’s best to involve everyone in Event Storming workshops if we can. When we follow up with this team re-organization workshop, we'll get a natural buy-in. This will make the change a lot more sustainable.

Sometimes thought, if the team is too large for example, it will not be possible to include everyone. In this case, we can send a call for volunteers before the workshop. Everyone will get a chance to take part. We should make sure to have representatives from all teams and jobs. We’ll need to invite everyone in the final re-teaming activity though.

### Repeat

Agile teams will adapt! Once we’ve done this workshop once, we should not be afraid to let teams re-organize from time to time. That’s the whole point of Dynamic Re-teaming. Practice shows that only 20% of people change teams every time. (As [Laurens Bonnema](https://twitter.com/laurensbonnema) told us in [his presentation at XPDays Benelux 2018](https://app.slidebean.com/p/rwbpeIC3CI/Dynamic-Reteaming-From-The-Trenches#1)) Running this kind of re-teaming once or twice per year seems like a good frequency.

Repeating this team re-organization workshop should also improve people's motivation. They'll feel they have control over what they do, and what they can learn. They'll also be more likely to build compromise on team structure if they feel they have the chance to move again in 6 months.

## Try it yourself

Combined with this workshop, the Event Storming high participation and natural buy-in shines. Event Storming is an easy way to speed up [DDD (Domain Driven Design)](https://en.wikipedia.org/wiki/Domain-driven_design) adoption. It's an easy and flexible workshop. This was the 18th post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). Get started [here](/misadventures-with-big-design-up-front/).

In [the next post](http://eepurl.com/dxKE95), I’ll list other workshops that we can run in conjunction to Event Storming.

[Continue Reading when it's ready!](http://eepurl.com/dxKE95)
