---
keywords: "css, stylesheet, media"
layout: single
title: There can be only one css stylesheet per media
published: true
date: 2011-09-21
categories:
- css
posterous_url: http://philippe.bourgau.net/there-can-be-only-one-css-stylesheet-per-medi
posterous_slug: there-can-be-only-one-css-stylesheet-per-medi
comments: true
---
I thought it was a good idea to specify a media in my stylesheet link :

```html
<link rel="stylesheet" href="/stylesheets/tags.css" type="text/css" name="tags stylesheet" media="screen" />
```

but when I tried to add another stylesheet, it was ignored !

```html

<link rel="stylesheet" href="/stylesheets/common.css" type="text/css" name="main stylesheet" media="screen" />
<link rel="stylesheet" href="/stylesheets/tags.css" type="text/css" name="tags stylesheet" media="screen" />
```

It worked by removing the media attribute. It seems that only one stylesheet per media is taken into account.
