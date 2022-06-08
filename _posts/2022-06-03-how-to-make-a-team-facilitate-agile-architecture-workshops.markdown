---
layout: single-mailing-list
title: How to make a team facilitate agile architecture workshops
date: "2022-06-09"
comments: true
categories:
- event storming
- example mapping
- architecture
- serverless
- ddd
- learning
description: "In The Serverless Mindset, I blogged about Event Storming and Example Mapping for agile architecture. Here is a review post highlighting the most important sections, and explains how to coach a team to make these workshops a habit."
header:
  teaser: "/imgs/2022-06-03-how-to-make-a-team-facilitate-agile-architecture-workshops/Facilitation-Keys-teaser.jpg"
  og_image: "/imgs/2022-06-03-how-to-make-a-team-facilitate-agile-architecture-workshops/Facilitation-Keys-og.jpg"
variations:
- Wouldn't it be great if you knew how to coach teams to do transparent and collective architecture?
- TODO
---

_In [The Serverless Mindset, I blogged](https://marcotroisi.substack.com/p/3-wonderful-workshops-that-will-make) about Event Storming and Example Mapping for agile architecture. How do you coach teams to adopt these workshops?_

![A drawing of 2 hands the one above handing over a key with a label "Facilitation" to the one below. Part of the technical agile coaching job is to grow enough facilitation skills teams so that they can run crucial technical workshops like Event Storming autonomously.]({{site.url}}/imgs/2022-06-03-how-to-make-a-team-facilitate-agile-architecture-workshops/Facilitation-Keys.jpg)

> ## 3 wonderful workshops that will make your serverless architecture agile
>
> _Successfully building a serverless system as a team is far from easy. So, here are 3 DDD workshops for everyone to do collective and incremental architecture._
>
> > It's actually harder to do serverless development with two engineers than it is with one engineer. And [the problem] scales up _~ [Nathan Taggart](https://thenewstack.io/serverless-for-teams/)_
> 
> (From [3 Wonderful Workshops That Will Make Your Serverless Architecture Agile](https://marcotroisi.substack.com/p/3-wonderful-workshops-that-will-make))

A few weeks ago, I wrote a guest post for [Marco Troisi](https://twitter.com/marcotroisi) on his blog, [The Serverless Mindset](https://marcotroisi.substack.com/). It presents 3 workshops: [Big-Picture Event-Storming]({{site.url}}/misadventures-with-big-design-up-front/), [Design-Level Event-Storming]({{site.url}}/why-should-we-use-design-level-event-storming-for-ddd/), and [Example Mapping]({{site.url}}/categories/#example-mapping). It explains how these workshops avoid command-and-control or chaotic architecture in serverless teams. In fact, they **unlock a middle way that is calmer, more collaborative, and more effective! It's agile architecture!**

> As much as management wanted to benefit from Agile, they didn't want to give up control. They could not give up micromanaging. It was more important for them to be in control than it was for the company to be successful. (Someone on [extremeprogramming@groups.io](https://groups.io/g/extremeprogramming))

> I stopped believing in team self-organization long ago. [...] There are amazing individuals who can do it, and I worked with them. Those usually make up 5-10% of the team. (Someone on [extremeprogramming@groups.io](https://groups.io/g/extremeprogramming))

> I needed to go out on medical leave for a while, and when I came back, every single practice I had introduced got rolled back, with expected results. (Someone on [extremeprogramming@groups.io](https://groups.io/g/extremeprogramming))

Guess what? These challenges and workshops are not restricted to serverless contexts. So most teams will find agile architecture helpful.

As coaches, our job is not to facilitate these workshops (despite what we are often asked 😕). **Our job is to make these workshops a habit in the teams!** So how do we coach teams to run these workshops regularly by themselves?

> Wouldn't it be great if you knew how to coach teams to do transparent and collective architecture?

## How to teach Event Storming

> ## Big-Picture Event Storming
>
> Big-Picture Event Storming is a whole-team workshop whose purpose is to visualize everything! It's about sticking all the domain events of the system on a giant design board. It's Domain-Driven Design in practice! It transfers tremendous knowledge between the domain experts and the developers.
>
> ![Participants working at an Event Storming board]({{site.url}}/imgs/2022-06-03-how-to-make-a-team-facilitate-agile-architecture-workshops/event-storming.jpg)
>
> ### An architecture accelerator
>
> Event Storming can achieve over a few days what would take months with traditional architecture. The idea is not to get a perfect up-front architecture. Instead, it's to design just enough for everyone to pull in the same direction.
>
> (From [3 Wonderful Workshops That Will Make Your Serverless Architecture Agile](https://marcotroisi.substack.com/p/3-wonderful-workshops-that-will-make))

I can think of **3 learning steps to be able to teach Event Storming to a team**:

1.  **Facilitating** Event Storming yourself
2.  **Injecting** Event Storming into your team as a team member
3.  Finally, **installing** Event Storming into the organizations that you are coaching

I already wrote about [how to facilitate Event Storming]({{site.url}}/how-to-prepare-a-ddd-big-picture-event-storming-workshop/) workshops. I also wrote about [how to inject Event Storming]({{site.url}}/organization-refactoring-event-storming-and-ddd-injection-part-1/) into your organization.

The third step is particularly tricky because the workshop often lasts for a few days. As a result, people will be afraid to take on the facilitation!

Let's see how to hand over the facilitation to the team.

### Start with Immersion

![A road sign written "New Skills Training". Training a team to Event Storming is like training any new skill. Generate awareness, and accompany motivated people until they are ready!]({{site.url}}/imgs/2022-06-03-how-to-make-a-team-facilitate-agile-architecture-workshops/training-new-skills.jpg)

It's useless to expect someone else to help with the facilitation during the first Event-Storming. People usually see it as an 'extraordinary' event that is not worth learning.

Don't bother and facilitate the workshop yourself! **As often as you can, remind them that they should regularly re-run this workshop themselves.**

Use this first taste of Event Storming to spot people who "get it." Then, after the workshop, try to involve these people in facilitation and agile architecture.

### Repeat Shorter Event Storming Workshops

**Take the habit of suggesting short Event Storming workshops:**

*   [Flow Event Storming](http://thepaulrayner.com/eventstorming-team-flow/) for retrospectives
*   Or [Design-Level Event Storming]({{site.url}}/why-should-we-use-design-level-event-storming-for-ddd/) to dive into the design of a core part of the code.

These smaller-scale workshops don't need to involve everyone.

As soon as the team agrees to run another workshop, find someone to help you with facilitation. **Take 2 hours with your apprentice facilitators to rehearse a simple scenario.**

Continue suggesting regular Event Storming. The next time you run the workshop, handover facilitation completely. Be present as a backup, though. When that works well, you have successfully made Event Storming a habit in the team.

## Example Mapping

> ## Example Mapping
>
> The promise of serverless is that the cloud provider will take care of all the plumbing for you. This means that your lambdas should contain almost only domain-oriented code. [Example Mapping](https://cucumber.io/blog/bdd/example-mapping-introduction/) is a neat activity to clarify the Lambda's business rules.
>
> Example Mapping only takes 20 minutes, so you can run it very often. For example:
>
> -   When starting a new user story.
> -   Or after a Design-Level Event-Storming, to clarify what happens inside an aggregate.
>
> Example Mapping is a structured conversation between Developers and Domain experts. Other specific profiles (e.g. quality engineer) can also join if need be.
> 
> (From [3 Wonderful Workshops That Will Make Your Serverless Architecture Agile](https://marcotroisi.substack.com/p/3-wonderful-workshops-that-will-make))

Here's a detailed [guide about how to inject Example-Mapping]({{site.url}}/how-to-coach-developers-to-get-a-chat-with-their-product-experts/) into a team. The practice is simple, so people should be able to adopt it quickly.

![Example of the typical cards, colors, and layout that we use in Example Mapping]({{site.url}}/imgs/2022-06-03-how-to-make-a-team-facilitate-agile-architecture-workshops/example-mapping-cards.jpg)
*Picture from [Cucumber blog](https://cucumber.io/blog/bdd/example-mapping-introduction/)*

Some teams will find Example Mapping is overkill for their context. So don't hesitate to simplify it to accommodate the team's constraints. For example, replace Gherkin with literate programming tests.

## Make these workshops a habit!

> ## Don't wait!
>
> Are you involved with building a serverless system? Whether you are just starting or already deep in, you should run a Big-Picture Event Storming! It's a starting point that will lead you to Design-Level Event Storming and Example Mapping. These workshops will result in:
>
> -   Alignment between everyone.
> -   Just-enough architecture to keep your system healthy and to avoid centralized decision-making.
> 
> (From [3 Wonderful Workshops That Will Make Your Serverless Architecture Agile](https://marcotroisi.substack.com/p/3-wonderful-workshops-that-will-make))

![Photo of a man plunging in the sea. The first step to coaching Event Storming, Example Mapping, or any collective agile architecture workshop is to immerse the team in a first experience!]({{site.url}}/imgs/2022-06-03-how-to-make-a-team-facilitate-agile-architecture-workshops/plunge.jpg)

Is a team you are coaching leaning towards command-and-control or chaotic architecture? Suggest Event Storming or Example Mapping to do more agile architecture! **Remember the 3 steps to make these workshops a team habit:**

1.  **Start with immersion**
2.  **Spot early adopters and potential facilitators**
3.  **Involve them more and more in regular sessions**

What do you think? What are your tips for handing over the facilitation to coachees? I'd love to read from you in the comments.

---
Other articles that might interest you:

*   [Organization Refactoring: Event Storming and DDD injection]({{site.url}}/organization-refactoring-event-storming-and-ddd-injection-part-1/)
*   [# How to coach developers to get a chat with their product experts]({{site.url}}/how-to-coach-developers-to-get-a-chat-with-their-product-experts/)
*   A detailed facilitation guide about Big Picture Event Storming that start with [Misadventures with Big Design Up Front]({{site.url}}/misadventures-with-big-design-up-front/)
*   [Why should we use Design Level Event Storming for DDD?]({{site.url}}/why-should-we-use-design-level-event-storming-for-ddd/) A detailed facilitation guide about Design-Level Event Storming
*   Preview of [The 1-hour Event Storming book](https://murex.github.io/EventStormingJournal/1h-event-storming-book/) [Matthieu Tournemire](https://www.linkedin.com/in/matthieu-tournemire/) and I are currently writing
*   If you are interested in more workshops, here are [5 Whole-Team Workshops To Increase Developers’ Role In Sprint Planning]({{site.url}}/5-whole-team-workshops-to-increase-developers-role-in-sprint-planning/)
*   If you are starting on a serverless team, read [3 Things You Need to Master to Get Your Team Ready to Work With Serverless]({{site.url}}/3-things-you-need-to-master-to-get-your-team-ready-to-work-with-serverless/)