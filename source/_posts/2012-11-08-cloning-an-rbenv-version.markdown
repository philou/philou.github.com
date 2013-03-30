---
layout: post
title: Cloning an rbenv version
published: true
date: 2012-11-08
categories:
- ruby
posterous_url: http://philippe.bourgau.net/cloning-an-rbenv-version
posterous_slug: cloning-an-rbenv-version
---
<p>There is no doc about this, but it turns out to be very simple, just copy the version directory :</p>
<p>
```
cd ~/.rbenv/versionscp -R original-version new-version
```
</p>
<p>That's it !</p>
