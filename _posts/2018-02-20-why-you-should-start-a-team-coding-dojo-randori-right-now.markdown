---
layout: single
title: "Why you should start a team coding dojo Randori right now"
date: 2018-03-01 07:05
comments: true
categories:
 - tdd
 - team building
 - coding dojo
 - team-randori-series
keywords: "Coding Dojo, TDD, Test Driven Development, Randori"
description: "A story of how a team coding dojo Randori can improve team work, and why you should start one"
---
[Coding Dojos](http://codingdojo.org/) are easy to start and have a high return on investment. They will improve everyone's technical skills. That's only the start though. Practiced as a team Randori, they will also be a tremendous boost to team work.

![An Aïkidoka holding a keyboard instead of a boken]({{site.url}}{{site.baseurl}}/imgs/2018-02-20-why-you-should-start-a-team-coding-dojo-randori-right-now/aikidoka-keyboard.jpg)

## My own story

Coming up with team coding conventions is always a challenge. A few years ago, I remember organizing a meeting to discuss this with my team mates. In about 1 hour, we managed to agree on the standard C# code style, but not much more. Important points like the usage of singletons were still far from any agreement. I was disappointed. At least I learned that this is not the good way to build coding conventions.

A few years later, in another team, the coding conventions topic came up again. I did not want to repeat my previous failure. I created a wiki page where we could suggest, comment and vote for conventions. It was a lot better than my previous attempt, but it was slow. It turned out that we had also been doing team coding dojos for a while. A colleague suggested to try to fix a [Sonar](https://www.sonarqube.org/) issue from our production code during a Randori session. It took us 2 hours to fix not one but a bunch of errors and to agree on 3 or 4 coding conventions. That was far more effective than my wiki page ! Looking back at the past few months, I realized what other topics the Randoris had helped the team with.

> 💡 Team Coding Dojo Randori are great at defining coding conventions.

## Classic Team Problems

Coding conventions is only one of the team work problems that Randoris help to solve. Here is a non-exhaustive list :

*   People waste time by ignoring how to use their tools as best as they could.
*   People lack skills that they could easily learn from one of their colleagues.
*   Team mates don't agree on the same design principles. This harms collective code ownership as the design goes 1 step in a direction and then 2 in the opposite.
*   People don't know how to work in baby steps and, as a result, perform large commits. This makes code reviews difficult and breaks the [Continuous Integration](https://www.martinfowler.com/articles/continuousIntegration.html) more often.
*   Because they are not at ease to give and receive feedback, people don't pair. Reviews suffer from this as well, either not going in the depth of things, or ending bad !
*   Some team members might have difficulties explaining what they are doing to others.

Believe it of not, Randoris can help you with all these issues.

## What is a Randori ?

### A Coding dojo

A coding dojo is a meeting where programmers deliberately practice their skills. To be effective, the coding dojo should be regular, and safe. Created to spread TDD ([Test Driven Development](https://en.wikipedia.org/wiki/Test-driven_development)), it's an effective way to teach other skills as well. Whatever the goal, it should use TDD. TDD sets up the fast feedback loop necessary to collaboration and effective learning. The dojo should end with a short retrospective : everyone stops what they are doing to discuss how it went.

People have invented many formats to the coding dojo, but there were only 2 at the origin. The Kata, where someone live codes a prepared solution to a problem using TDD. The Randori which I'll detail right away.

### A Randori

In a Randori, you'll be using a single machine, a wide screen and a timer. Pairs of programmers round-rob at the keyboard every 5 minutes or so. Particularly here, we should stick to TDD for collaboration and fast feedback loop. When the timer rings, the co-pilot gets the keyboard, and a new co-pilot comes in.

5 minutes are very short, and force people to use real baby steps. If they try to do something too big, they will not reach a stable state before the end of their turn. If their change is too complex, others will get lost, and remove the code. The pair needs to collaborate a lot for others to understand and continue in the same direction. They have to explain what they are doing, and take feedback into account as much as they write code.

{% assign figure_path="/imgs/2018-02-20-why-you-should-start-a-team-coding-dojo-randori-right-now/randori.jpg" | absolute_url %}

{% assign figure_alt="Programmers doing a randori" %}

{% capture figure_caption %}
From a [YouTube video](https://www.youtube.com/watch?v=vqnwQ3oVM1M) by [globo.com](http://globo.com)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

### Your team

A team Randori is a Randori with your team. It improves all the problems I listed above.

*   People will share coding conventions and design best practices. They are likely to agree on something for the sake of progress in a 2 hours session. The opportunity to see how the convention works with dojo code often leads to a production code agreement.
*   People will share IDE shortcuts and tricks.
*   The constant feedback will make people accustomed to it.
*   On top of that, people will refactor or have their code refactored from time to time. This is a great lesson in egoless programming.

> 💡 Coding Dojo Randoris are a great lesson in Egoless Programming

I hope I convinced you that you should start team coding dojo Randoris. In my [next post](/how-to-start-a-team-coding-dojo-randori-today/), I'll go into more details about how to setup and run your first Randori.
