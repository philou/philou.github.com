---
layout: post
title: How to install a patched ruby interpreter with rbenv and ruby-build
published: true
date: 2013-01-09
categories:
- ruby
posterous_url: http://philippe.bourgau.net/how-to-install-a-patched-ruby-interpreter-wit
posterous_slug: how-to-install-a-patched-ruby-interpreter-wit
comments: true
---
<p>A background scheduled task I am trying to run on heroku is failing because it gets out of memory. I needed to use a ruby memory profiler to understand exactly what the issue was. <a href="https://github.com/rdp/ruby-prof">ruby-prof</a>&nbsp;seemed great, but it needs a patched ruby interpreter to collect memory information.</p>
<p>After a bit of searching and trying, the simplest thing I managed to do was to</p>
<ul>
<li>download the ruby sources</li>
<li>patch them</li>
<li>create a ruby-build package definition with them</li>
<li>install with rbenv</li>
</ul>
<p>Here is a script that does this for ruby 1.9.2-p125 and gcdata patch.</p>
<p>
<script src="https://gist.github.com/4492543.js"></script>
</p>
