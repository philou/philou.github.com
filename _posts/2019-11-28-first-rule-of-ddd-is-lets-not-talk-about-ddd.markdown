---
layout: single-mailing-list
title: "First rule of DDD is: let's not talk about DDD"
date: 2019-12-12
comments: true
categories:
 - event storming
 - ddd
 - change management
 - example mapping
 - infographic
description: "DDD jargon is a domain expert repellent! Let's not talk about DDD, but instead, start engaging domain experts in doing DDD workshops! Here is an infographic that explains why doing DDD works better than arguing for DDD."
header:
   teaser: /imgs/2019-11-28-first-rule-of-ddd-is-lets-not-talk-about-ddd/1st-rule-of-DDD-teaser.jpeg
   og_image: /imgs/2019-11-28-first-rule-of-ddd-is-lets-not-talk-about-ddd/1st-rule-of-DDD-og.jpeg
---
_[DDD](https://en.wikipedia.org/wiki/Domain-driven_design) jargon is a domain expert repellent! Let's not talk about DDD, but instead, start engaging domain experts in doing DDD workshops!_

Let me share a short story. It happened a long time ago when I was a junior developer at a bank. I had the opportunity to meet one of our business sponsors. I had built a rate curve server for his trading activity. Throughout the discussion, I mentioned that I had used [Value Object](https://deviq.com/value-object/) for thread safety. The look on his face was frightening. It taught me never to mention this kind of technical detail with domain experts again.

## Let's not talk about DDD, let's DO DDD instead!

{% assign figure_path="/imgs/2019-11-28-first-rule-of-ddd-is-lets-not-talk-about-ddd/1st-rule-of-DDD-small.jpeg" | absolute_url %}
    
{% assign figure_alt="Drawing of an infographics of titled 'The 1st rule of DDD: Do Not Talk about DDD'. It has the virtuous circle: DO DDD Instead -> Delight Domain Experts -> Increase Collaboration with Domain Experts -> DO DDD Instead -> ..." %}
    
{% capture figure_caption %}
By [Philippe Bourgau]({{site.url}}), under [CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/), [high resolution image]({{site.url}}/imgs/2019-11-28-first-rule-of-ddd-is-lets-not-talk-about-ddd/1st-rule-of-DDD.jpeg)
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

## How to DO DDD?

DDD promises a lot: better software, a more sustainable pace, and continuous refactoring breakthroughs...

But how do we get started in practice? Here are 2 posts I wrote on the topic:

*   [Organization refactoring: Event Storming and DDD injection]({{site.url}}/organization-refactoring-event-storming-and-ddd-injection-part-1/)
*   [How to use Event Storming to introduce Domain-Driven Design]({{site.url}}/how-to-use-event-storming-to-introduce-domain-driven-design/)

The main idea is to run workshops like [Example Mapping](https://cucumber.io/blog/example-mapping-introduction/), [Event Storming](https://en.wikipedia.org/wiki/Event_storming) and others...

## Is facilitation a new aspect of the developer job?

With complex domains, domain experts' collaboration is mandatory for good software. Having them in workshops is the most effective way to collaborate.

To build better systems, we'll need to master these collaboration techniques!

That's a big step away from the traditional developer stereotype. It is not a surprise: DDD has always been about collaboration!

Example Mapping is straightforward. Reading [the description](https://cucumber.io/blog/example-mapping-introduction/) should be enough to master it. Event Storming is a bit more involved, but still not rocket science. You can start with my [detailed guide about how to get started with Event Storming]({{site.url}}/misadventures-with-big-design-up-front/).
