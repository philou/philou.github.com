---
layout: post
title: There can be only one css stylesheet per media
published: true
date: 2011-09-21
categories:
- css
posterous_url: http://philippe.bourgau.net/there-can-be-only-one-css-stylesheet-per-medi
posterous_slug: there-can-be-only-one-css-stylesheet-per-medi
---
<p>I thought it was a good idea to specify a media in my stylesheet link : <br />
```html
<link rel="stylesheet" href="/stylesheets/tags.css" type="text/css" name="tags stylesheet" media="screen" />
```
</p>
<p>but when I tried to add another stylesheet, it was ignored ! <br />
```html

<link rel="stylesheet" href="/stylesheets/common.css" type="text/css" name="main stylesheet" media="screen" />
<link rel="stylesheet" href="/stylesheets/tags.css" type="text/css" name="tags stylesheet" media="screen" />
```
</p>
<p>It worked by removing the media attribute. It seems that only one <br />stylesheet per media is taken into account.</p>
