---
keywords: "Radiant, radiant-tags-extension, Radiant v0.9.1, radiant-tags-extension ~> 1.6.2, incompatibility"
layout: single
title: Radiant v0.9.1 incompatibility with radiant-tags-extension ~> 1.6.2
published: true
date: 2011-09-28
categories:
- radiant
- radiant-tags-extension
posterous_url: http://philippe.bourgau.net/radiant-v091-incompatibility-with-radiant-tag
posterous_slug: radiant-v091-incompatibility-with-radiant-tag
comments: true
---
I was getting an `undefined method 'find_by_path'` error when using `<r:related_by_tags>`.

I rolled back to radiant-tags-extension v1.6.1 and it was fixed.
