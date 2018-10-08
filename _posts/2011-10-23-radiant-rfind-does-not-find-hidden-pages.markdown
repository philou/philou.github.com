---
keywords: "radiant-tags-extension, radiant, rfind, find, hidden, pages"
layout: single
title: radiant r:find does not find hidden pages
published: true
date: 2011-10-23
categories:
- radiant-tags-extension
posterous_url: http://philippe.bourgau.net/radiant-rfind-does-not-find-hidden-pages
posterous_slug: radiant-rfind-does-not-find-hidden-pages
comments: true
---
Suppose you have a hidden newsletter folder in the file following file structure inside [radiant](http://radiantcms.org/):

```
home
  /newsletters
  /june-2011
  /july-2011
  /rss
```

and that you want to use the following tag in your rss file

```xml
<r:find url="/newsletters/"> ... </r:find>
```

r:find won't find newsletters because it is hidden, it has to be published to be found.
