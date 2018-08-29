---
layout: single
title: "How I fixed 'Warning: Authentication failure. Retrying' with Vagrant"
date: 2016-01-31 06:39
comments: true
categories:
 - vagrant
keywords: "Vagrant, SSH, Authentification failure, Vagrant authentification failure"
description: "This discribes how I managed to fix the authentification failure in vagant box creation"
---
Lately, I went into an upgrade cycle : [Ubuntu](http://www.ubuntu.com/), which forced me to upgrade [Docker](https://www.docker.com/), and then [Vagrant](https://www.vagrantup.com/) ... you know the story. Unfortunately, my vagrant config did not want to start anymore with the following error :

```
Warning: Authentication failure. Retrying
Warning: Authentication failure. Retrying
Warning: Authentication failure. Retrying
Warning: Authentication failure. Retrying
Warning: Authentication failure. Retrying
Warning: Authentication failure. Retrying
Warning: Authentication failure. Retrying
...
```

![A screen with the ssh prompt]({{site.url}}{{site.baseurl}}/imgs/2016-01-31-how-i-fixed-warning-authentication-failure-retrying-with-vagrant/ssh.jpg)


I tried to destroy and re-create my box with the same result : it eventually timedout, but the provisions were not executed.

After searching the internet and a lot of experimentation, I managed to make it work by commenting out the following line in my Vagrantfile

```
# config.ssh.private_key_path = "~/.ssh/id_rsa"
```

I think I added this a long time ago to be able to push to github from my Vagrantbox, but after trying it, it work with the difference of my having to validate the remote ssh key, that's not of a big deal.
