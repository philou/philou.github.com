---
keywords: "rss, web, replaced, Feedburner, MailChimp"
layout: post
title: "I just replaced Feedburner with MailChimp"
date: 2013-10-08 06:36
comments: true
categories:
 - rss
 - web
published: true
---
Until now, I had been using [Feedburner](http://www.feedburner.com) to manage the email subscriptions to my [blog on mes-courses.fr](https://www.mes-courses.fr/blog). ~~It had been working fine~~ I thought it had been working fine until a friend of mine asked me if I was still working on it, since it had been a time since she did not receive any email !

It turned out that feedburner had not been forwarding emails for 6 months and that it had gone unnoticed ... I had already had this issue before, and it was because my rss was not well formed according to feedburner (something related to unicode encoding I think). So to summarise :

* I lost trust in feedburner to forward my posts correctly
* Feedburner is not maintained by Google anymore
* They have been persistant rumors about Google shutting down Feedburner completly especially since the Reader shut down

I started looking for alternatives. I tried [Nourish](http://www.nouri.sh) and [MailChimp](http://www.mailchimp.com) I did not manage to make Nourish work like I wanted, but I found MailChimp an intuitive and well documented product.

The setup with MailChimp was a lot longer than with Feedburner, but the result is great. I feed a lot more confident about these emails being delivered now.

There are a few points I still miss though :

* The social forward does not seem to work the same easy way, it looks like if MailChimp pushes the email content to your networks, but not a direct link to your blog
* MailChimp does not track non-email subscribers to your rss. I'll have to check my analytics to see how to do it.