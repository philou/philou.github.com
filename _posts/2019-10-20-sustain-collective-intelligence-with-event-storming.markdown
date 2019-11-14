---
layout: single
title: "Sustain Collective Intelligence with Event Storming"
date: 2019-11-14
comments: true
categories:
 - event storming
 - architecture
 - ddd
 - infographic
description: "Event Storming is an iterative process. It alternates phases of collaborative design with phases of real world experimentation or construction. Event Storming also builds collective intelligence. We can keep it alive if we continue to work closely together, doing mob programming for example."
header:
   teaser: /imgs/2019-10-20-sustain-collective-intelligence-with-event-storming/event-storming-iterative-process-teaser.jpeg
   og_image: /imgs/2019-10-20-sustain-collective-intelligence-with-event-storming/event-storming-iterative-process-og.jpeg
---
_[Event Storming](https://www.eventstorming.com/) builds [collective intelligence](https://en.wikipedia.org/wiki/Collective_intelligence). We can keep it alive if we continue to work closely together and regularly repeat Event Storming._

{% assign figure_path="/imgs/2019-10-20-sustain-collective-intelligence-with-event-storming/event-storming-iterative-process-small.jpeg" | absolute_url %}
    
{% assign figure_alt="Drawing of an infographics of the Event Storming loop: Devs meet domain experts -> Grow collective intelligence superpowers -> Make complex decisions in a short time -> Try for real -> Learn -> Devs meet domain experts -> ..." %}
    
{% capture figure_caption %}
By [Philippe Bourgau]({{site.url}}), under [CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/), [high resolution image]({{site.url}}/imgs/2019-10-20-sustain-collective-intelligence-with-event-storming/event-storming-iterative-process.jpeg)
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}


## Don't use Event Storming to do upfront design!

Event Storming is an iterative process: design, prototype, test, learn, repeat, etc.

It would  be a shame to stop the momentum once the Event Storming is over. As soon as you leave the workshop, start one of the these:

*   Build a [walking skeleton](https://codeclimate.com/blog/kickstart-your-next-project-with-a-walking-skeleton/) if you haven't already
*   Spike a burning question
*   [Build Proofs of Concepts for critical NFRs]({{site.url}}/using-event-storming-and-ddd-to-prototype-microservices-and-nfrs-1/)
*   Refactor core concepts
*   Add this $$$ feature

And then **return to the Event Storming design board with more knowledge**. Focus and risk reduction are the keys to a sustainable pace.

> 💡 Event Storming builds collective intelligence, work as a [mob](https://en.wikipedia.org/wiki/Mob_programming#targetText=Mob%20programming%20is%20a%20software,code%20at%20the%20same%20time.) to keep it alive!

I'll soon write about introducing Event Storming and [DDD](https://en.wikipedia.org/wiki/Domain-driven_design) in your organization. [Stay tuned!](http://eepurl.com/dxKE95)