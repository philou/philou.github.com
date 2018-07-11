---
layout: post
title: "Performance is a feature"
date: 2015-01-19 06:46
comments: true
categories:
 - agile
 - testing
 - performance
keywords: "performance, feature, story, epic, scrum"
description: "Given performance requirements are a feature, what are the consequences for an agile team ?"
---
Now that is a widespread title for blog articles ! Just [search Google](https://www.google.fr/search?sourceid=chrome-psyapi2&ion=1&espv=2&ie=UTF-8&q=performance%20is%20a%20feature), and you'll find "Performance is a feature" in [Coding Horror](http://blog.codinghorror.com/performance-is-a-feature/) and [others](http://coffeeonthekeyboard.com/performance-is-a-feature-623/).

[![A Dragster at full speed]({{site.url}}/imgs/2015-01-19-performance-is-a-feature/dragster.jpg)](http://www.motorstown.com/50701-dragster-jet.html)

# What's in it for us ?

If performance is indead a feature, then it can be managed like any feature :

* It should result from use cases
> During use case X, the user should not wait more than Y seconds for Z

* It can be split into user stories

> * Story 1: During use case X, the user should not wait more than 2*Y seconds for Z
> * Story 2: During use case X, the user should not wait more than Y seconds for Z

* They can be prioritized against other stories

> * Let's forget about performance for now and deliver functionality A as soon as ready, we'll speed things up later.
> * Let's fix basic performance constraints for use case X for now, every story will have to comply with these constraints later.

* The performance on these use cases should be automatically tested and non regressed

> * If we slow things too much and these tests breaks, we'll have to optimize the code.
> * But as long as we don't break the tests, it's ok to unoptimize the code !

Maybe that's a chance to stop performance related gut feeling quarrels !
