---
layout: single-mailing-list
title: "Auchandirect-ScrAPI : an unofficial API Ruby Gem"
date: 2014-03-21 06:31
comments: true
published: true
categories:
 - ruby
 - gem
 - scrapping
 - API
keywords: "ruby, gem, scrapping, API, auchandirect, programming, open source, french online grocery, cybermarché"
description: A ruby gem providing, through scrapping, an API to the french www.auchandirect.com online grocery
---
[Every brands should provide an API for developpers](http://mashable.com/2011/01/04/brand-open-api-developers/) ... unfortunately, it far from the truth right now. A few years ago, when I started my mes-courses.fr side project, I would have loved to find a french online grocery providing an open API. I had to resort to scrapping *(that's how I learnt that heavily relying on scrapping for a 15hr/week side project is not a good fit ... but that's another story)*.

As I am taking mes-courses.fr down, I have extracted the whole unofficial API I had built around http://www.auchandirect.fr (I'm talking to you french hackers !) into an open source Ruby Gem. Briefly :

* It walks the whole store, from categories to items
* Given valid credentials, it can fill and save a cart
* It's [LGPL](http://choosealicense.com/licenses/lgpl-v3/) : anyone can use it as long as they give back any improvement to the community
* It's using [Storexplore](https://github.com/philou/storexplore), another of my mes-courses.fr rip-off open source Ruby Gem
* It's tested on [Travis](https://travis-ci.org/philou/auchandirect-scrAPI) and I'm currently trying to make it daily tested with [Traviscron](http://traviscron.pythonanywhere.com/)

There's mainly one thing it *cannot* do :

* It cannot procede to any payment or ordering

It's available on [Github](https://github.com/philou/auchandirect-scrAPI)

Happy scrapping !
