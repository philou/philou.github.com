---
keywords: "ruby, install, patched, interpreter, rbenv, ruby-build"
layout: single
title: How to install a patched ruby interpreter with rbenv and ruby-build
published: true
date: 2013-01-09
categories:
- ruby
posterous_url: http://philippe.bourgau.net/how-to-install-a-patched-ruby-interpreter-wit
posterous_slug: how-to-install-a-patched-ruby-interpreter-wit
comments: true
---
A background scheduled task I am trying to run on heroku is failing because it gets out of memory. I needed to use a ruby memory profiler to understand exactly what the issue was. <a href="https://github.com/rdp/ruby-prof">ruby-prof</a> seemed great, but it needs a patched ruby interpreter to collect memory information.

After a bit of searching and trying, the simplest thing I managed to do was to

* download the ruby sources
* patch them
* create a ruby-build package definition with them
* install with rbenv

Here is a script that does this for ruby 1.9.2-p125 and gcdata patch.

<script src="https://gist.github.com/4492543.js"></script>
