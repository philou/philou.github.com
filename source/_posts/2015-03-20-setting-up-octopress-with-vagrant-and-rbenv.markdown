---
layout: post
title: "Setting up Octopress with Vagrant and rbenv"
date: 2015-03-20 05:33
comments: true
categories:
 - octopress
 - ruby
 - vagrant
keywords: "Vagrant, Octopress, rbenv, virtualisation, walkthrough"
description:  "I present how I managed to setup a Vagrant environment for my personal Octopress blog"
---
I recently got hands on an abandonned laptop that was better than the one I was currently using for my personnal hackings, so I decided to switch to this one. I felt this was the time to learn Vagrant and save me some time later on. I settled on creating a [Vagrant](https://www.vagrantup.com/) environment for this [Octopress](http://octopress.org/) blogging. That proved a lot longer than I thought it would.

{% img center /imgs/2015-03-20-setting-up-octopress-with-vagrant-and-rbenv/vagrant-octopress.png Vagrant logo + Octopress logo%}

If you want to jump to the solution, just have a look at this [git change](https://github.com/philou/philou.github.com/commit/67b17f7702c213ff40313fc7bd0cbfa8a6e8e29b). Here is the slightly longer version.

1. Add a Vagrantfile and setup a VM. There are explainations about how to do this all over the web, that was easy.

2. Provision your VM. That proved a lot more complex. There are a lot of examples using variants of [Chef](https://www.chef.io/), but the steep learning curve for Chef seemed unneccessarily complex compared to what I wanted to do. Eventually, I figured it out using simple shell provisioning.

```ruby
  config.vm.provision "shell", inline: <<-SHELL
    echo "Updating package definitions"
    sudo apt-get update

    echo "Installing git and build tools"
    sudo apt-get -y install git autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm3 libgdbm-dev
  SHELL

  config.vm.provision "shell", privileged: false, inline: <<-SHELL
    git config --global user.name "john.doe"
    git config --global user.email "john.doe@mail.com"

    if [ ! -d "$HOME/.rbenv" ]; then
      echo "Installing rbenv and ruby-build"

      git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
      git clone https://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build

      echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bashrc
      echo 'eval "$(rbenv init -)"' >> ~/.bashrc

    else
      echo "Updating rbenv and ruby-build"

      cd ~/.rbenv
      git pull

      cd ~/.rbenv/plugins/ruby-build
      git pull
    fi

    export PATH="$HOME/.rbenv/bin:$PATH"
    eval "$(rbenv init -)"

    if [ ! -d "$HOME/.rbenv/versions/2.2.0" ]; then
      echo "Installing ruby"

      rbenv install 2.2.0
      rbenv global 2.2.0

      gem update --system
      gem update

      gem install bundler
      bundle config path vendor/bundle

      rbenv rehash
    fi

    cd /vagrant
    bundle install
  SHELL
```

3. Setup port forwarding. That should have been simple ... after forwarding port 4000 to 4000, I could still not manage to access my blog preview from the host machine. After searching throughout the web for a long time, I eventually fixed it with by adding ```--host 0.0.0.0``` to the rackup command line in [Octopress Rackfile](https://github.com/philou/philou.github.com/commit/67b17f7702c213ff40313fc7bd0cbfa8a6e8e29b/Rakefile)

[{% img center /imgs/2015-03-20-setting-up-octopress-with-vagrant-and-rbenv/docker.png The Docker logo%}](http://docker.io)

Next steps will be to use [Docker](http://docker.io) providers and Dockerfile to factorize provisioning and speedup up VM startup.