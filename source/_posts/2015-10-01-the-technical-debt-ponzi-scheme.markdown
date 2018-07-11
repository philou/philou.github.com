---
layout: post
title: "The technical debt ponzi scheme"
date: 2015-10-01 19:34
comments: true
categories:
 - agile
 - joke
 - software
 - technical debt
keywords: "Technical debt, Ponzi Scheme, Agile, Software development"
description: "Presents software debt workarounds as ponzi schemes"
---
Madoff would have been better off managing software projects than investing on Wall Street !

![Madoff's photo in jail]({{site.url}}/imgs/2015-10-01-the-technical-debt-ponzi-scheme/bernie.jpg)

Whereas in finance, a Ponzi scheme is a sure road to jail, it seems to be the de-facto standard in software development.

A few months ago, I read [Managing Software Debt](http://www.amazon.com/Managing-Software-Debt-Inevitable-Development/dp/0321554132/ref=sr_1_2?tag=pbourgau-20&amp;ie=UTF8&qid=1443728175&sr=8-2&keywords=managing+technical+debt), hoping to find methods about how to manage technical debt with some hard numbers (instead I found some good practices to avoid it, but that's another story). At no place did I read that taking more debt to pay the interests of existing debt was a good practice though ...

Thinking of it, I can remember of such [Ponzi Schemes](https://en.wikipedia.org/wiki/Ponzi_scheme) in nearly every organization I worked in. Here are a few typical manifestations I saw :

- writing bogus code to compensate for some other bogus code
- creating tools to workaround existing technical debt. Ex:
   - exotic build tools to build some code riddled with cyclic dependencies that no sane build tool can build
   - in house tools that do 10% of what standard (open source) tools can do on code following main standards

If this goes on for too long, you can end up in a technical debt death spiral : you know debt is out of control, so taking debt becomes the only way of actually getting anything done. "Let's win this client now, because we won't be able to later ...". It's like running to one's own ruin.

![A road going straight in a wall]({{site.url}}/imgs/2015-10-01-the-technical-debt-ponzi-scheme/road-wall.jpg)

If your organization is in this stage, you might think at the ['time horizon'](/a-plan-for-technical-debt-lean-software-development-part-7/) of your product, and discover that fixing the technical debt sometimes brings more value than getting this new client !
