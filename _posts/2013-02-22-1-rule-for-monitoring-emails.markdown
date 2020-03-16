---
keywords: "web, exploitation, rule, monitoring, emails"
layout: single-mailing-list
title: '#1 rule for monitoring emails'
published: true
date: 2013-02-22
categories:
- web
- exploitation
posterous_url: http://philippe.bourgau.net/1-rule-for-monitoring-emails
posterous_slug: 1-rule-for-monitoring-emails
comments: true
---
I just spent a few hours debugging my rails app on Heroku to understand why the hell I did not systematically receive the monitoring emails that my app was sending ...

My app was actually rendering the email template.

Wether the mail came through actually depended on the mail content !

It seems there was a spam filter somewhere between the sender and the receiver that was blocking some emails, without warning me in any way. I was sending the email to a custom domain email from 'OVH' and then forwarding emails to my gmail account, it was handy to apply automatic labels.

Here is the #1 rule : always send your monitoring emails directly to the final recipient ! There will be less risk that some messages get lost.

I changed the recipient to my gmail address, updated my label filter, and everything is back to normal (a lot of time lost for nothing).
