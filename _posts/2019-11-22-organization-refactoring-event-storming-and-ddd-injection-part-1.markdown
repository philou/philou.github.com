---
layout: single-mailing-list
title: "Organization refactoring: Event Storming and DDD injection - part 1"
date: 2019-11-28
comments: true
categories:
 - event storming
 - ddd
 - bdd
 - change management
 - psychology
 - example mapping
 - event-storming-and-ddd-injection-series
description: "Injecting DDD or Event Storming in your organization can be tricky. Here are some techniques to onboard your domain experts, one step at a time! 1st: practice on your side. 2nd: build trust with the cheaper example mapping."
header:
   teaser: /imgs/2019-11-22-organization-refactoring-event-storming-and-ddd-injection-part-1/ddd-injection-teaser.jpeg
   og_image: /imgs/2019-11-22-organization-refactoring-event-storming-and-ddd-injection-part-1/ddd-injection-og.jpeg
---
_Injecting [DDD](https://en.wikipedia.org/wiki/Domain-driven_design) or [Event Storming](https://www.eventstorming.com/) in your organization can be tricky. Here are techniques to onboard your domain experts, one step at a time!_

![Drawing of a syringe injecting something entitled 'DDD & Event Storming' into organization cells]({{site.url}}/imgs/2019-11-22-organization-refactoring-event-storming-and-ddd-injection-part-1/ddd-injection.jpeg)

A few months ago, I received an email from my friend Bastien asking for help around Event Storming. He had injected some [tactical DDD](https://vaadin.com/tutorials/ddd/tactical_domain_driven_design) (Domain Driven Design) in his development team:

*   They were now using [Value Objects](https://deviq.com/value-object/)
*   They had separated the domain from the infra code
*   They were already moving on to other DDD patterns

To continue his DDD injection, he needed to onboard domain experts. He also wanted to draw a better [context-map of his system]({{site.url}}/drafting-a-functional-architecture-vision-with-ddd-event-storming-part-1/). His question was, "How to get domain experts to take part in an Event Storming?"

As we discussed, we found 3 steps I had used to inject DDD and Event Storming at [Murex](https://twitter.com/work_at_murex).

## 1. Practice yourself first

[I wrote it before]({{site.url}}/categories/#event-storming): running an Event-Storming workshop is not rocket science. Still, it requires a bit of practice to get right.

> 💡 Don't waste your chances with not enough preparation!

Imagine you persuaded your domain experts to spend 8 hours in an Event-Storming workshop. Now imagine the workshop is a failure because of lousy facilitation. You'll have no second chance!

![A road-sign written 'New Skills Training': not preparing for Event Storming facilitation before the first workshop with the domain experts might screw up your whole DDD injection]({{site.url}}/imgs/2019-11-22-organization-refactoring-event-storming-and-ddd-injection-part-1/new-skill.jpg)

Practice short sessions first!

1.  Read [a guide]({{site.url}}/categories/#squash-bduf-with-event-storming-series)
2.  Try it with a few colleagues on a sample startup business
3.  [Use it on your development process to find improvements](http://thepaulrayner.com/eventstorming-team-flow/)
4.  You can use it as onboarding for newcomers. Do it within your team, playing roles.

This last trick can raise many questions to ask your domain expert. You could even use the onboarding excuse to lure a domain expert in the workshop!

## 2. Start with your current tasks

It's challenging to get domain experts to sign in for a 2 days workshop. It's a lot easier to have a 15 minutes chat with them!

![An informal discussion between a developer and a domain expert: having quick chats with domain experts about the work at hand is great way to inject DDD and Event Storming]({{site.url}}/imgs/2019-11-22-organization-refactoring-event-storming-and-ddd-injection-part-1/conversation.jpg)

Next time you have a domain question about your current task, ask the experts! You'll learn about the domain, and you'll start to build a relationship with them.

You can even use this technique to inject a bit of Example Mapping! [Example mapping](https://cucumber.io/blog/example-mapping-introduction/) is a simple conversation format. Practice it a few time with your teammates, and you'll be ready to use it with your domain experts.

{% assign figure_path="/imgs/2019-11-22-organization-refactoring-event-storming-and-ddd-injection-part-1/example-mapping-cards.jpg" | absolute_url %}

{% assign figure_alt="Illustrative example mapping cards in their typical layout. Example Mapping is a format for quick and cheap, domain-heavy conversation. It increases the chances of success of your Event Storming and DDD injection." %}

{% capture figure_caption %}
Sample Example Mapping cards on the introductory [post about Example Mapping](https://cucumber.io/blog/2015/12/08/example-mapping-introduction), by [Matt Wynne](https://twitter.com/mattwynne?lang=fr)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

Example mapping is handy in understanding domain rules. Domain savvy developers become trustworthy in the eyes of the domain experts.

> 💡 Hijack a conversation with a domain expert into an Example Mapping.

The key is to have these conversations as often as possible. With time, a trustful relationship should settle. That's the perfect context to shift-up to next gear with Event Storming.

## Continue Reading

This post was only the first half of [the story]({{site.url}}/categories/#event-storming-and-ddd-injection-series). [The next post]({{site.url}}/organization-refactoring-event-storming-and-ddd-injection-part-2/) contains the third and last step to inject Event Storming. As a bonus, it also provides a few organization hacks to get experts on board.

[Continue reading...]({{site.url}}/organization-refactoring-event-storming-and-ddd-injection-part-2/)
