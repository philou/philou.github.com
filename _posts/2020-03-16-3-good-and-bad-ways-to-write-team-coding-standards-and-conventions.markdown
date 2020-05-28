---
layout: single-mailing-list
title: 3 Good and Bad Ways to Write Team Coding Standards and Conventions
date: 2020-03-19
comments: true
categories:
- remote
- coaching
- mob programming
- coding-dojo
- team building
description: "Writing team coding standards and conventions is hard but critical. Throughout the years, I've tried different techniques. Let's see: why brainstorming doesn't work; how to use asynchronous decision making for remote teams; and how injecting mob programming in a team cuts through the problem!"
header:
  teaser: "/imgs/2020-03-16-3-good-and-bad-ways-to-write-team-coding-standards-and-conventions/3-good-bad-ways-to-write-coding-standards-and-conventions-teaser.jpg"
  og_image: "/imgs/2020-03-16-3-good-and-bad-ways-to-write-team-coding-standards-and-conventions/3-good-bad-ways-to-write-coding-standards-and-conventions-og.jpg"
---
_Writing [team coding standards and conventions](https://en.wikipedia.org/wiki/Coding_conventions) is hard but critical. Brainstorming doesn't work, so let's use asynchronous decision making or mob programming!_

![Drawing of 3 different strategies to build coding conventions. Brainstorming does not work very well, collaborating over the wiki works, and coding dojos and mob programming rocks!]({{site.url}}/imgs/2020-03-16-3-good-and-bad-ways-to-write-team-coding-standards-and-conventions/3-good-bad-ways-to-write-coding-standards-and-conventions.jpg)

Let's start with a story about coding standards and conventions. About 10 years ago, I was working in an XP team at a bank. The team was working quite well: 

*   We were pushing a new version every week
*   We were sitting 10 meters away from our users
*   They were happy 😀
*   We were doing [TDD]({{site.url}}/from-apprentice-to-master-how-to-learn-tdd-test-driven-development/) and [pair programming]({{site.url}}/from-zero-to-pair-programming-hero/) almost 100% of the time

We were also trying to do [collective code ownership](https://martinfowler.com/bliki/CodeOwnership.html). Unfortunately, the programmers were using different coding styles, and it caused friction.

At some point, we decided we needed to agree on coding standards for the team. I was playing the ScrumMaster role at the time. I set up a meeting for the whole team to write down coding standards.

This meeting was a failure. In 1 hour, we more or less agreed on Microsoft's recommendations on writing C#. The topic was too broad. Without some code to make the debate more concrete, we ended up in abstract discussions.

My conclusion is that brainstormings are not the way to write coding standards.

> \#1. Team Coding Standards Anti-Pattern: Brainstorming

A few years later, after I came back to work at [Murex](https://www.murex.com), my new team was facing similar issues. I knew a meeting would not help us to write coding standards. Instead, I set up a wiki page for suggesting, discussing, and voting on conventions. We used code snippets to start the discussion. It had the advantage of documenting new agreements by design. It worked surprisingly well!

> \#2. Team Coding Standards Best Practice: Asynchronous decision making

The flip side is that it was slow. We would only agree on 1 or 2 conventions per month.

Fortunately, the team was also doing coding dojos. At some point, [Thomas](https://www.linkedin.com/in/tpeyrard/) suggested doing a [randori]({{site.url}}/why-you-should-start-a-team-coding-dojo-randori-right-now/) on a piece of code he wanted to refactor. In 2 hours, the whole team had discussed and agreed on 3 rules! That's how we discovered the use of [mobbing](https://en.wikipedia.org/wiki/Mob_programming) to write coding standards and conventions!

> \#3. Team Coding Standards Best Practice: Mob sessions

Before I dive into these techniques, let's see what's at stake.

## The challenges of team coding conventions

{% assign figure_path="/imgs/2020-03-16-3-good-and-bad-ways-to-write-team-coding-standards-and-conventions/bad-communication-small.jpg" | absolute_url %}

{% assign figure_alt="Drawing of the double vicious circle of bad communication and no coding standards or conventions. No Coding conventions -> Conflicts -> No speak -> No Coding Conventions... Conflicts -> No Speak -> Bad Reviews -> Duplicated Code -> More Bugs -> Less Features -> More Stress -> Conflicts ..." %}

{% capture figure_caption %}
By [Philippe Bourgau]({{site.url}}), under [CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/), [high resolution image]({{site.url}}/imgs/2020-03-16-3-good-and-bad-ways-to-write-team-coding-standards-and-conventions/bad-communication.jpg)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

They have many names: working agreements, coding standards, or coding conventions. Whatever we call them, they have a massive impact on a team's work. Here's a non-exhaustive list of the problems that occur when they are lacking:

*   Recurring topics will pollute collaboration around code. For example, imagine your team does not agree about 'How to do proper dependency injection.' It will trigger many long discussions during code reviews, pair, or mob sessions.
*   There will be an inconsistent style throughout the code, depending on who wrote it. This adds a bit of mental load when reading the code, as we'll have to adapt to different styles. In the end, it makes us less productive, especially since [reading is where we spend most of our time](https://blog.codinghorror.com/when-understanding-means-rewriting/)!
*   It also increases the cost of collective code ownership. In extreme cases, it can make pieces of the code the exclusive property of a single developer. That's not good for the [Bus Factor](https://en.wikipedia.org/wiki/Bus_factor)!
*   Inconsistent and undocumented styles make open and/or inner source more difficult. It will be more difficult for people to [contribute valuable pull requests](https://dev.to/janessatran/a-beginner-s-guide-to-contributing-to-open-source-4fen).

The lack of coding standards and conventions impacts teamwork, productivity, and quality. If you are a regular reader, you know how much I care for a sustainable pace. It turns out the lack of coding standards also makes work non-sustainable:

*   It wastes some time
*   It makes collaboration more difficult
*   It harms the quality of the code
*   It makes work less fun for everyone

If team coding standards and conventions are so critical, why do we so often lack some? The truth is that they are not easy to agree on!

1.  Opening the topic of coding standards can start an endless ping-pong discussion. Coding standards remain a never-ending work in progress until everyone gives up.
2.  Even getting a coding-standard initiative to its conclusion is not enough! It often turns into documents that everyone forgets when facing day to day urgencies.
3.  Some opinionated people won't change their habits for the sake of the team.
4.  I've seen team members agree on the conventions in public, but continue to use their own style. This generates passive-aggressive fights, where the most stubborn wins, but the team loses.

Let's see go over different strategies to write team coding standards and conventions.

## Why brainstorming team coding standards does not work?

![Photo of a team engaged in a brainstorming discussion. Brainstorming is not a very effective way to write team coding conventions]({{site.url}}/imgs/2020-03-16-3-good-and-bad-ways-to-write-team-coding-standards-and-conventions/brainstorming.jpg)

The first time I tried to write team coding standards, I tried the classic brainstorming. It did not work. I now understand why:

1.  In recent years, [neurosciences have explained why brainstormings are not very useful](https://www.inc.com/jessica-stillman/brainstorming-is-bad-science.html). "It turns out that the brain needs time away for background processing to have insights". Brainstorming might be great to generate initial seeds of ideas. But we cannot expect smart ideas at the end of a 1-hour brainstorming. 
2.  This effect is even worse for introverts, who make up for about half of the population. Meetings burn their energy.
3.  Finally, time pressure and the brainstorming format generates abstract discussions. The goal of brainstorming is Quantity-over-Quality. This means that we throw many ideas in, but never analyze them according to a real situation.

Ok, we now know why we should not try to brainstorm team coding standards and conventions. Let's see what works!

## How to write coding standards in a team working asynchronously

When I went back to Murex, we managed to write team coding standards through the wiki. As I said, it was slow but effective.

A few years ago, I attended a talk by [Bertrand Delacretaz](https://twitter.com/bdelacretaz) at [Devoxx FR](https://www.youtube.com/watch?v=xkC4zjtAyRc). He presented a structure for asynchronous decision making used in open source projects.

<iframe src="//www.slideshare.net/slideshow/embed_code/key/LVwAFQ19wxE36f?startSlide=6" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/bdelacretaz/asynchronous-decision-making-foss-backstage-2017" title="Asynchronous Decision Making - FOSS Backstage 2017" target="_blank">Asynchronous Decision Making - FOSS Backstage 2017</a> </strong> de <strong><a href="//www.slideshare.net/bdelacretaz" target="_blank">Bertrand Delacretaz</a></strong> </div>

It turns out we had been re-discovering a well-known collaboration technique. Here is how we could map its steps to writing team coding standards:

*   **0. Emergence:** During a code review, for example, you notice a pattern that could be worth a coding standard.
*   **1. Brainstorm:** Through the team's chat (or wiki), start a discussion on a specific rule. The goal at this point is to get as many points of view as possible and trigger conversations.
*   **2. Options:** Continue the discussions until a consensus starts to emerge. As Bertrand explains, a consensus is not unanimity.
*   **3. Consensus:** Once a large enough consensus is reached, propose a coding-standard rule. Bertrand explains that we need a tool with reliable traceability here. For coding standards, our VCS seems to be the obvious choice.
    *   Create a markdown file inside your codebase with all the details of the coding-standard rule.
    *   Explain the coding-standard meaning, pros, and cons.
    *   Add a few code samples and a link to the chat (or wiki) discussion that led to this proposal.
    *   Create a pull request and link it from your chat discussion.
    *   Update the pull request based on feedback.
    *   Or cancel it and move back to the previous step if needed.
*   **4. Decision:** Once the team approves the pull request, merge it!

As Bertrand explains in his talk, this is not a linear process, you might get back to previous steps if needed.

> 💡 Asynchronous Decision Making has Living Documentation built-in!

[![Cover of the Living Documentation book. Using Asynchronous Decision Making to write coding standards and conventions makes them documented by design.]({{site.url}}/imgs/2020-03-16-3-good-and-bad-ways-to-write-team-coding-standards-and-conventions/living-documentation.jpg)](https://www.amazon.com/Living-Documentation-Continuous-Knowledge-Sharing-ebook/dp/B07S7671FW)

There are many advantages to this technique:

*   It's documented by design. This will be useful for future team members and contributors.
*   Similarly to [Architecture Decision Record](https://adr.github.io/), the coding-standard decision is traceable. In the future, the team will be able to review how and why it agreed to this coding-standard. This will help future team members to review, update, or delete this rule.
*   As it is meeting-free, it's an introvert-friendly technique! Did you know that [inclusive teams make better decisions](https://www.nytimes.com/2018/09/01/opinion/sunday/how-make-big-decision.html)?
*   Finally, it's the only option for teams that span many time zones

The main drawback, as we experienced and as Bertrand confirmed:

> Asynchronous decision making takes more time... but also yields to better decisions!

## How to write coding standards in a team working synchronously

I currently do a lot of mob sessions with the teams I coach. I knew that team coding-dojos are great to discuss coding standards. Mob sessions are even better!

### Team coding standards emerge during mob-programming

{% include video id="CDvZSk0dXbg" provider="youtube" %}

Here is how:

1.  **Real situation.** What happens in a mob session is like [what happens in a coding dojo randori]({{site.url}}/why-you-should-start-a-team-coding-dojo-randori-right-now/). As everyone sees the code, people will ask why it is being written this way. The advantage is that the team can discuss real production code, not only [kata](http://codingdojo.org/kata/) examples. This ensures that the coding standards remain grounded in the actual team context.
2.  **Start small and improve.** Discussions happen when the problem is fresh in everyone's mind. The standard does not have to deal with every possible case. It's more effective to stick to the current problem's specificities. It will grow and generalize the next time the mob faces a related design question.
3.  **Fast.** A side effect of not trying to deal with every case is that it can be quick. The team can agree in a few minutes, not weeks!
4.  **Understood by design.** As everybody is there to discuss the standard, everybody has a chance to question it. This ensures that all the team will understand the rationale, the pros, and the cons.

Here is an example. A few weeks ago, we started to coach a team that wanted to improve its testing practices. As we always do, we started the coaching with an intensive week of TDD coding dojos. After this initial phase, the team wanted to test this new way of writing code by re-doing a small feature. This was the first mob topic we did with the team. One of their classes was challenging to test because it had too many constructor arguments. The mob decided to start using [observers](https://en.wikipedia.org/wiki/Observer_pattern) for dependencies that only receive notifications.

That's the typical 'lightweight' coding-standard a mob will add to the team's [oral tradition](https://en.wikipedia.org/wiki/Oral_tradition).

{% assign figure_path="/imgs/2020-03-16-3-good-and-bad-ways-to-write-team-coding-standards-and-conventions/Mobbing_Campfire_Building.jpg" | absolute_url %}

{% assign figure_alt="Picture of a camper tending the campfire. Doing regular mob session keeps coding standards and conventions in everyone's mind, a bit like stories around the campfire has been used to keep oral tradition alive for thousands of years" %}

{% capture figure_caption %}
From New Relic's blog post [Taming the Mob, Part 2: Mob Programming Is Like Tending a Campfire](https://blog.newrelic.com/engineering/mob-programming-campfire/)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

### What makes it work so well?

1.  **No Need for documents.** As this example shows, there is no need to document. When a team regularly works as a mob, it will grow a body of oral tradition. Do not doubt the effectiveness of oral tradition! We have shared knowledge this way for most of our history! [Homer](https://en.wikipedia.org/wiki/Homer)'s [Iliad](https://en.wikipedia.org/wiki/Iliad) and [Odyssey](https://en.wikipedia.org/wiki/Odyssey) came to us through Oral Tradition. In comparison, the [oldest known printed book](https://www.history.com/topics/inventions/printing-press) is only about 1200 years old!
2.  **Resilient.** A single team member is enough to remind the mob about a coding standard and to make it stick! It can be a different person for every coding convention! This is the critical point that makes it work so well. When solo programming, everyone needs to remember and be disciplined. With pairing or code reviews, we need roughly half the team. With mobbing, 1 person is enough!
3.  **Mini-retrospectives.** Mobbing makes it possible to do frequent quick-retrospectives. Many successful mobs do them:
    *   Woody mentioned them [when he presented Mob Programming](https://www.agilealliance.org/wp-content/uploads/2015/12/ExperienceReport.2014.Zuill_.pdf).
    *   Here is the format we borrowed from the [Cucumber Pro team](https://www.infoq.com/presentations/distributed-teams-remote-collaboration/):

<iframe src="//www.slideshare.net/slideshow/embed_code/key/GJdwpZCjlxL879?startSlide=15" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe> <div style="margin-bottom:5px"> <strong> <a href="//www.slideshare.net/InfoQ/far-from-the-mobbing-crowd" title="Far from the Mobbing Crowd" target="_blank">Far from the Mobbing Crowd</a> </strong> de <strong><a href="//www.slideshare.net/InfoQ" target="_blank">C4Media</a></strong> </div>

Quick-retrospectives are a way to think again about coding standards and conventions. The "decide" question, in particular, is when the team commits to a new agreement.

> 💡 As long as at least 1 person remembers the coding standard, it will stick in the mob!

If you are still with me, you must be interested in trying Mob programming for coding standards. Unfortunately, mob programming can look daunting! So let's see how to start.

### How to inject mob in your team

Maybe you tried to jump in mob programming without any preparation. Or perhaps the first sessions were a bit rough! Here is what often happens:

*   It feels unnatural because it's different
*   It's slow because people don't know what they should do.
*   On top of that, all kinds of debt become obvious and painful!
*   Lousy code and technical debt are suddenly discussed
*   Conversation debt kicks in. People have the essential conversations they never had. For example: about coding standards and conventions.
*   Tooling debt, like slow builds, embarrasses everyone. The team might have been waiting for a slow build for years, individually. It's only when everyone is waiting together that it becomes unbearable!

If your first try looked like that, you might have been afraid to continue. Don't panic, you might just have gone too fast.

Starting mob programming is not as difficult as it seems. People need a bit of support, though. It's like [boiling frogs](https://en.wikipedia.org/wiki/Boiling_frog):

1.  [Start a regular team coding dojo]({{site.url}}/how-to-start-a-team-coding-dojo-randori-today/) (weekly or every sprint). Sell dojos as a way to learn together.
2.  Once you are used to randoris, try a few with [strong-style pairing](http://llewellynfalco.blogspot.com/2014/06/llewellyns-strong-style-pairing.html) mode. This is already mob programming, albeit on a kata. This is how you'll learn the discipline to make mobs work.
3.  Then wait for the next time you face a challenging task. For example: a design decision, some tricky legacy refactoring, or a nasty bug. Then ask the team to help you in a randori-like session.
4.  Repeat this a few times. End every session with a quick-retrospective. Chances are mobs will become part of your regular practices.

Let the team master mob programming at its own pace. Persevere as the benefits of mob programming become more and more evident.

If you are still struggling, find a technical agile coach to help you!

### How can a technical agile coach help?

I mob with teams as a way to apply what we practice in katas. A coach will help you to do effective mob programming. He will also use mobbing to help you build coding conventions:

*   By asking the right questions. The team will come up with good answers.
*   By reminding the team with "Is this a convention?"
*   By suggesting to dig further. Sometimes, the team will have more questions than answers. A coach will make the team aware of its indecision. He can then either
    *   provide guidance
    *   suggest digging into this before next session
    *   or prepare a kata

And guess what? Someone from the team can play this role too!

# Start to write team coding standards and conventions today!

![World War II poster of a women factory worker, titled "We can do it!". Whenever we stand in the organization, we can have an impact and change it for the better! We can start to write team coding standards and conventions for example.]({{site.url}}/imgs/2020-03-16-3-good-and-bad-ways-to-write-team-coding-standards-and-conventions/we-can-do-it.jpg)

If you don't have coding standards or conventions, you can start to write one today!

If you do more asynchronous work, start a chat discussion about a particular point.

Otherwise, start a coding dojo randori. You might wonder about the cost of mob programming, though. In [3 long-term benefits of mob programming that make it cost-effective]({{site.url}}/3-long-term-benefits-of-mob-programming-that-make-it-cost-effective/), I have my take at why mobbing is cost-effective in the long run!

Here are my last bits of advice, for you, self-declared change-agent.

*   Keep your goal in mind and lead by example.
*   Celebrate when you and your team have agreed on your first coding standard.
*   Motivate your teammates to start similar discussions.
*   As you agree on more and more conventions, the team will become more and more effective!
