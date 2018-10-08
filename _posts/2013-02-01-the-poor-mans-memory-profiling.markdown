---
keywords: "memory, ruby, testing, poor, mans, profiling"
layout: single
title: The poor man's memory profiling
published: true
date: 2013-02-01
categories:
- memory
- ruby
- testing
posterous_url: http://philippe.bourgau.net/the-poor-mans-memory-profiling
posterous_slug: the-poor-mans-memory-profiling
comments: true
---
While working on <a href="http://www.mes-courses.fr">www.mes-courses.fr</a>, a background scheduled task that was running fine on heroku started to fail with out of memory errors. After searching a bit, I discovered that the inputs had changed, and that the memory consumption of my task was linearly correlated to the size of the inputs.

So I tried to setup an automatic test to verify that the memory consumption of my task would remain small enough for it to run on <a href="http://www.heroku.com">heroku</a>. This is what I wanted to do :

* write a unit test for this
* run the task once to warm up the memory
* run the task once for some small sample input and note the peak memory usage
* run the task once for some large sample input and note the peak memory usage
* check that the memory usages are very close, whatever the size of the inputs

Everything there is quite straightforward, appart from "note the peak memory usage". Here is what I came up with

* note the initial memory usage
* start a thread that garbage collects and notes the memory usage every 10 ms
* process the data
* tell the thread to stop
* memory usage is the difference between the maximum and initial memory usages

Here is the code in ruby, but it can be easily translated to any language (I did it for C# once)

<script src="https://gist.github.com/4696311.js"></script>

Unfortunately in ruby, memory usage is not directly available without <a href="/how-to-install-a-patched-ruby-interpreter-wit">patching and rebuilding the interpreter</a>, but allocated objects count is available, and it's actually enough for our purpose.
