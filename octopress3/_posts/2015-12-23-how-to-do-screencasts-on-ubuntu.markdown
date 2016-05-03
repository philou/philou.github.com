---
layout: post
title: "How to do screencasts on Ubuntu"
date: 2015-12-23 06:01
comments: true
categories:
 - linux
 - ubuntu
 - screencast
keywords: "linux, ubuntu, screencast, Simple Screen Recorder, YouTube"
description: "Praise and installation instructions for SimpleScreenRecorder on Ubuntu"
---
It is easy to record and share great screencasts on [Ubuntu](http://www.ubuntu.com) (and I guess on Linux in general).

Recently, I had to create a screencast to demonstrate how to use [Storexplore](/storexplore/), a gem I wrote that transforms online stores into APIs. Here is the result

<iframe width="560" height="315" src="https://www.youtube.com/embed/O30xReGgdVU" frameborder="0" allowfullscreen></iframe>

Don't lose your time searching for anything else than [SimpleScreenRecorder](http://www.maartenbaert.be/simplescreenrecorder) (I did, and actually did lose quite some time). Follow the [installation instructions](http://www.maartenbaert.be/simplescreenrecorder/#download) :

```bash
sudo add-apt-repository ppa:maarten-baert/simplescreenrecorder
sudo apt-get update
sudo apt-get install simplescreenrecorder
# if you want to record 32-bit OpenGL applications on a 64-bit system:
sudo apt-get install simplescreenrecorder-lib:i386
```

It's dead simple to use, just try to record your first video, and you should know it all !

At the difference of other tools I tried (I'm looking at you [RecordMyDesktop](http://recordmydesktop.sourceforge.net/about.php)) I could easily encode my video to efficient formats (mp4, h.264 & mp3) that are well known on the internet, and in particular, by [YouTube](http://www.youtube.com).