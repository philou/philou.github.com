---
layout: post
title: radiant r:find does not find hidden pages
published: true
date: 2011-10-23
categories:
- radiant-tags-extension
posterous_url: http://philippe.bourgau.net/radiant-rfind-does-not-find-hidden-pages
posterous_slug: radiant-rfind-does-not-find-hidden-pages
---
<p>Suppose you have a hidden newsletter folder in the file following file structure inside <a href="http://radiantcms.org/" title="Radiant is a no-fluff, open source content management system designed for small teams.">radiant</a>:<p />
```
home
&nbsp; /newletters
&nbsp; &nbsp; /june-2011
&nbsp; &nbsp; /july-2011
&nbsp; /rss&nbsp; 
```
<p />and that you want to use the following tag in your rss file<p /> 
```
&lt;r:find url="/newsletters/"&gt; ... &lt;r:find&gt;
```
<p />r:find won't find newsletters because it is hidden, it has to be published to be found.</p>
