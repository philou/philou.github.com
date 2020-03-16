---
layout: single-mailing-list
title: "Fixing the 'TLS-enabled daemon' docker error on Ubuntu"
date: 2015-12-04 04:29
comments: true
categories:
 - ubuntu
 - unix
 - vagrant
 - docker
 - workaround
keywords: "ubuntu, vagrant, docker, unix, workaround, TLS, troubleshooting"
description: "How I fixed a 'TLS-enabled daemon' Docker error when using Vagrant on Ubuntu"
---
![The 3 logos of Docker, Vagrant and Docker]({{site.url}}{{site.baseurl}}/imgs/2015-12-04-fixing-the-tls-enabled-daemon-docker-error-on-ubuntu/docker-vagrant-ubuntu.jpg)

I am using [Ubuntu](http://www.ubuntu.com/), [Vagrant](https://www.vagrantup.com/) and [Docker](https://www.docker.com/) together to handle my various development environments. It usually works just fine : it's fast, low weight, it keeps my machine clean and it's quite simple once you've setup your first VM. Until last time ... read on !

When I tried to start my docker session through Vagrant as usuall, here is the error I suddenly got :

```
philou@philou-UX31E:~/code/concurrency-kata$ vagrant up
/home/philou/.ssh/known_hosts updated.
Original contents retained as /home/philou/.ssh/known_hosts.old
A Docker command executed by Vagrant didn't complete successfully!
The command run along with the output from the command is shown
below.

Command: ["docker", "ps", "-a", "-q", "--no-trunc", {:notify=>[:stdout, :stderr]}]

Stderr: time="2015-10-19T06:16:27+02:00" level="fatal" msg="Get http:///var/run/docker.sock/v1.17/containers/json?all=1: dial unix /var/run/docker.sock: no such file or directory. Are you trying to connect to a TLS-enabled daemon without TLS?"


Stdout:
ssh: connect to host localhost port 2222: Connection refused
```

After a bit of Google searching, I found that the docker service needed to be started. ```service docker start``` did the trick ... until next reboot !

With still some more Googling, I found a [page](http://askubuntu.com/questions/19320/how-to-enable-or-disable-services) explaining how to manage Ubuntu services. In order to make the docker service automaticaly start at every reboot, I just had to enter the following :

```
systemctl enable docker.service
```

That did the trick ! I thought that might be useful for others.
