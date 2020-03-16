---
layout: single-mailing-list
title: "How I fixed 'invalid byte sequence in US-ASCII' exception with octopress (and vagrant)"
date: 2016-02-10 05:59
comments: true
categories:
 - octopress
 - vagrant
keywords: "Octopress, Vagrant, Locale, Virtual Machine"
description: "A short summary about how to fix a locale issue when using Octopress through Vagrant Virtual Machines"
---
I don't know if you noticed, but [Octopress 2](http://octopress.org/) preview is slow as hell on [Virtual Box](https://www.virtualbox.org/). I wanted to try using [Docker](https://www.docker.com/) instead. So a few weeks ago, I started to upgrade my [Vagrant](https://www.vagrantup.com/), Virtual Box and Docker stack ...

Hell loose !

![A naughty dog with a banner "I'm in upgrade hell"]({{site.url}}{{site.baseurl}}/imgs/2016-02-10-how-i-fixed-invalid-byte-sequence-in-us-ascii-exception-with-octopress-and-vagrant/upgrade_hell.jpg)

I know all open source software needs to be kept up to date at all time, but it's not that easy. Especialy when the versions in the [Ubuntu](http://www.ubuntu.com/) repostiories are really old and you had to install them manually. Anyway, after a bit of tedious work, I finally got to the point where my Octopress blog was running on a brand new stack. And I got this error :

```
vagrant@239c4077ae16:/vagrant$bundle exec rake generate
## Generating Site with Jekyll
unchanged sass/screen.scss
/vagrant/vendor/bundle/gems/liquid-2.3.0/lib/liquid/htmltags.rb:44: warning: duplicated key at line 47 ignored: "index0"
Configuration from /vagrant/_config.yml
Building site: source -> public
YAML Exception reading index.markdown: invalid byte sequence in US-ASCII
/vagrant/plugins/backtick_code_block.rb:13:in `gsub': invalid byte sequence in US-ASCII (ArgumentError)
	from /vagrant/plugins/backtick_code_block.rb:13:in `render_code_block'
	from /vagrant/plugins/octopress_filters.rb:12:in `pre_filter'
	from /vagrant/plugins/octopress_filters.rb:28:in `pre_render'
	from /vagrant/plugins/post_filters.rb:112:in `block in pre_render'
	from /vagrant/plugins/post_filters.rb:111:in `each'
	from /vagrant/plugins/post_filters.rb:111:in `pre_render'
	from /vagrant/plugins/post_filters.rb:166:in `do_layout'
	from /vagrant/vendor/bundle/gems/jekyll-0.12.1/lib/jekyll/page.rb:100:in `render'
	from /vagrant/vendor/bundle/gems/jekyll-0.12.1/lib/jekyll/site.rb:204:in `block in render'
	from /vagrant/vendor/bundle/gems/jekyll-0.12.1/lib/jekyll/site.rb:203:in `each'
	from /vagrant/vendor/bundle/gems/jekyll-0.12.1/lib/jekyll/site.rb:203:in `render'
	from /vagrant/vendor/bundle/gems/jekyll-0.12.1/lib/jekyll/site.rb:41:in `process'
	from /vagrant/vendor/bundle/gems/jekyll-0.12.1/bin/jekyll:264:in `<top (required)>'
	from /vagrant/vendor/bundle/bin/jekyll:23:in `load'
	from /vagrant/vendor/bundle/bin/jekyll:23:in `<main>'
```

After some searching on the internet, I found [this post](http://alexzeitler.com/blog/2012/01/15/rake-generate-for-octopress-fails-with-invalid-byte-sequence-in-us-ascii-argumenterror/) by Alex Zeitler that made me figure out that locales were not set correctly by default on my vm. I just needed to set this once and for all in my Vagrantfile

```
config.vm.provision "shell", privileged: false, inline: <<-SHELL
  if [ -z "$LANG" ]; then
    echo "Setting LANG to us UTF8"
    echo 'export LANG=en_US.UTF-8' >> ~/.bashrc
  fi
  if [ -z "$LC_ALL" ]; then
    echo "Setting LC_ALL to us UTF8"
    echo 'export LC_ALL=en_US.UTF-8' >> ~/.bashrc
  fi
SHELL
```

After reprovisioning my box, generate and preview were working as expected !

:-( Now I've got a pygement-ruby issue to deal with, I guess I'll be back on the subject soon ...
