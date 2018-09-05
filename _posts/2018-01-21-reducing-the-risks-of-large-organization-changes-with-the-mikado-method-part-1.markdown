---
layout: single
title: "Reducing the risks of large organization changes with the Mikado Method - part 1"
date: 2018-02-08 11:53
comments: true
categories:
 - agile
 - lean
 - coaching
 - large scale
 - mikado-method
 - mikado-method-organization-series
keywords: "Mikado Method, Agile, Agile transformation, Large Scale Transformation, Large Scale Agile"
description: "First post of a series about applying the Mikado Method for large organization changes. Here I draw parallels between large scale code and organization changes."
---
Large scale agile transformations are often painful, stressful and ... failed ! Mixing the [Improvement Kata](http://www-personal.umich.edu/~mrother/The_Improvement_Kata.html) and the [Mikado Method](https://mikadomethod.wordpress.com/) can make them more successful.

![A drawing of entangled mikado sticks]({{site.url}}{{site.baseurl}}/imgs/2018-01-21-reducing-the-risks-of-large-organization-changes-with-the-mikado-method-part-1/mikado.jpg)

The Mikado Method is a programming technique to reduce the risks of large code changes. Let's see how to apply it to organization changes.

## ["If it's not broke, don't touch it !"](https://dzone.com/articles/if-it-aint-broke-dont-fix-it)

A lot of programmers have learned this maxim the hard way. Here is how it goes.

It all starts with a shitty piece of code that gets into everyone's way as soon as they have to deal with it. It's badly written, difficult to understand, and very difficult to change. One day, a brave programmer suggests to rewrite or revamp it so that it gets easy to work with. This is not a small task, but after some discussion and negotiation, he gets a 'go' from his team.

A few hours in this refactoring, he discovers that he needs to adapt other pieces of the code before he moves on. He leaves his work in progress as it is, and starts to change these pre-requisites. Unfortunately, these too have pre-requisite. Little by little, he builds up [work in progress](https://en.wikipedia.org/wiki/Work_in_process)(WIP) on different parts of the code. He still has nothing working though ! He's beginning to have troubles keeping track of all his WIP. On top of that, he's wasting time integrating the work done by his colleagues with his WIP. As days pass by with nothing to show, his team begins to doubt that he'll be able to bring this to its end ! The situation as a whole accumulates an awful lot of stress on the developer. In the end, it is pretty likely that the team will abandon the whole thing.

> 💡 By never changing the code, programmers make it even harder to change

The problem with this maxim is that by never changing the code, programmers make it even harder to change. In the end, this makes new features too expensive to build, which is pretty bad for the business.

Let's see how this related to large organization changes.

## The typical large scale agile transformation

It all starts when a leader decides that Agile is the way to go. It could be because everyone is doing it or that he got convinced by someone. It could also be because consultants sold him a 10% productivity increase. The reason does not matter. What matters is that in a few months, all the company should switch to an Agile method. Large groups of people will have to switch to [Scrum of Scrum](https://www.agilealliance.org/glossary/scrum-of-scrums/), [LeSS](https://less.works/), [SAFe](http://www.scaledagileframework.com/) or any other framework. Even if the transformation is split in product teams, these will still be big.

One great thing about these frameworks is that they show problems. After a few sprints people discover that they have troubles delivering incrementally. After analysis, they understand another deeper problem. Examples : bad management, legacy code, outdated tooling, bad underlying processes ... As Agile is the new [Golden Hammer](https://sourcemaking.com/antipatterns/golden-hammer), the teams responsible of these problems in turn jump to Agile X method. Unfortunately, these too might fall into deeper problems ... and the pattern repeats itself. Meanwhile, the top down transformation team sticks its own objectives. It continues to onboard new product teams to Agile, fueling the mess that is spreading.

![A golden hammer]({{site.url}}{{site.baseurl}}/imgs/2018-01-21-reducing-the-risks-of-large-organization-changes-with-the-mikado-method-part-1/hammer.jpg)

At any moment, a very large proportion of the people in the company are in a state of transformation. This is pretty bad for productivity. What is even worse is that they are all facing the same root problems. They are all blocked in a sub-optimal state, impeded by the root problems. Following agile principles, they all start similar initiatives to workaround these issues ! They then need to coordinate with other teams, to avoid duplicate efforts. On top of that, as agile newbies, all these teams need coaches to help them at the same time.

> 💡 Large scale Agile transformations are too often stressful for everyone ...

Needless to say that this situation is pretty stressful for everyone. It costs a lot, in productivity and consulting, for results yet to come. Despite reassurance that things will get better, the leader's trust is eroding.

The story ends bad when it goes on for too long. When the leader loses faith in the initiative, he cancels it, and goes back to the old ways. That's what we call the [Agile hangover](https://www.google.fr/search?q=agile+hangover) : "We tried it, but it was a mess. It does not work for us."

## To be continued

As you can see, the two situations have a lot in common. Programmers have invented the Mikado Method to deal with large scale code changes. This was the first post of a [series about the Mikado Method and large scale organization changes]({{site.baseurl}}/categories/#mikado-method-organization-series). In [next post](/reducing-the-risks-of-large-organization-changes-with-the-mikado-method-part-2/), we'll detail this technique, and see how to apply it on organization changes.
