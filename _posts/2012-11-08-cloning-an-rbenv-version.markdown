---
keywords: "ruby, Cloning, rbenv, version"
layout: single-mailing-list
title: Cloning an rbenv version
published: true
date: 2012-11-08
categories:
- ruby
posterous_url: http://philippe.bourgau.net/cloning-an-rbenv-version
posterous_slug: cloning-an-rbenv-version
comments: true
---
There is no doc about this, but it turns out to be very simple, just copy the version directory :

```sh
cd ~/.rbenv/versionscp -R original-version new-version
```

That's it !
