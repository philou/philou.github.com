---
layout: single
title: "Feature Teams vs Component Teams? Decide with Event Storming and DDD"
date: 2019-03-28
comments: true
categories:
 - architecture
 - squash-BDUF-with-event-storming-series
 - event storming
description: "TODO"
header:
   teaser: /imgs/2019-02-19-feature-teams-vs-component-teams-decide-with-event-storming-and-ddd/TODO-teaser.jpeg
   og_image: /imgs/2019-02-19-feature-teams-vs-component-teams-decide-with-event-storming-and-ddd/TODO-og.jpeg
published: false
---
_Team organization is tough. [Event Storming](https://www.eventstorming.com/) builds enough shared knowledge and architecture for successful team re-organization workshops._

Here is [Conway’s Law](https://en.wikipedia.org/wiki/Conway%27s_law):

> "Organizations which design systems ... are constrained to produce designs which are copies of the communication [structures](https://en.wikipedia.org/wiki/Organizational_structure) of these organizations."
>
> M. Conway[[2]](https://en.wikipedia.org/wiki/Conway%27s_law#cite_note-Conway-2)

If you have an existing team and a product you are trying to transform, this law is of paramount importance to you. If you did the Event Storming workshop, you should have a shared architecture vision. Let’s see how you can make Conway’s law help you to refactor!

TODO PIC find an illustration about Conway’s law

> 💡 Together, Event Storming and Conway's Law help long term refactoring.

⚠️ Disclaimer. You might be few enough to organize well as a single team. In this case, you don't need all this… until you grow, hopefully 😉

This is also the 18th post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). It all started with misadventures with [Big Design Up Front](https://en.wikipedia.org/wiki/Big_Design_Up_Front).

## Principles of Teams

Teams that follow the [boundaries of the architecture vision](/drafting-a-functional-architecture-vision-with-ddd-event-storming-part-1/) will more easily realize it. We should not map teams to our existing system, but rather to our target system!

The idea is to conduct a team re-organization workshop as a follow-up to Event Storming. It’s best to run this activity just after we draft the target architecture, when it is still fresh in everyone’s mind.

TODO PIC Find a picture of re-teaming workshop somewhere

The principles are pretty simple:

TODO poster team principles

1.  Display the architecture vision and team principles 
2.  Let people self organize into new teams!

> 💡 Event Storming helps people to dynamically self-organize into teams.

## Workshop steps

Here are the detailed steps for this activity:

1.  Do this in front of the Event Storming board. If possible with the [functional areas](/drafting-a-functional-architecture-vision-with-ddd-event-storming-part-1/) and [relationship patterns](/focus-on-core-domain-with-relationships-from-ddd-and-event-storming/)
2.  Present the team principles
3.  Let people brainstorm ideal team boundaries
4.  Ask attendees to identify the skills needed for each team
5.  If it was not the case already, bring everyone in!
6.  Present the current team boundaries.
7.  Let people self-organize into new teams according to all the constraints. Depending on your situation, this step might take more or less time. If you envision a rough time, it’s a good idea to have a look at [this book](https://leanpub.com/dynamicreteaming) for how to run this activity.

TODO cover dynamic re-teaming

## Tips

Here are a few simple tips to make this workshop more successful:

### Get everyone in

It’s best to involve everyone in Event Storming workshops if we can. When we follow up with this team re-organization workshop, we'll get a natural buy-in. This will make the change a lot more sustainable.

Sometimes thought, if the team is too large for example, it will not be possible to include everyone. In this case, we can send a call for volunteers before the workshop. Everyone will get a chance to take part. We should make sure to have representatives from all teams and jobs. We’ll need to invite everyone in the final re-teaming activity though.

### Repeat

Agile teams will adapt! Once we’ve done this workshop once, we should not be afraid to let teams re-organize from time to time. That’s the whole point of Dynamic Re-teaming. Practice shows that only 20% of people change teams every time. (As Laurens Bonnema told us in his presentation at XPDays Benelux 2018 TODO) Running this kind of re-teaming once or twice per year seems like a good frequency.

## Try it yourself

Combined with this workshop, the Event Storming high participation and natural buy-in shines. Event Storming is an easy way to speed up [DDD (Domain Driven Design)](https://en.wikipedia.org/wiki/Domain-driven_design) adoption. It's a easy and flexible workshop. This was the 18th post in [a series about how to use Event Storming to kick start architecture on good tracks](/categories/#squash-bduf-with-event-storming-series). Get started [here](/misadventures-with-big-design-up-front/).

In [the next post](http://eepurl.com/dxKE95), I’ll list other workshops that we can run in conjunction to Event Storming.

[Continue Reading when it's ready!](http://eepurl.com/dxKE95)
