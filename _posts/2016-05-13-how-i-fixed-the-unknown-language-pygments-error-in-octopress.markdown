---
layout: single
title: "How I fixed the unknown language Pygments error in Octopress"
date: 2016-05-13 03:54
comments: true
categories:
 - blogging
 - software
 - octopress
keywords: "Blogging, Octopress, Blogging for hackers, Blogging for programmers"
description: "Thrilling story of how I fixed the 'unknown language' Pygments error in my Octopress blog"
---
Last time I tried to insert a code snippet in my [Octopress](http://octopress.org/) blog, I was hurt by the following error :

```
vagrant@ae4a04cebb73:/vagrant$ bundle exec rake generate
## Generating Site with Jekyll
unchanged sass/screen.scss
Configuration from /vagrant/_config.yml
Building site: source -> public
/vagrant/plugins/pygments_code.rb:27:in `rescue in pygments': Pygments can't parse unknown language: ruby. (RuntimeError)
	from /vagrant/plugins/pygments_code.rb:24:in `pygments'
	from /vagrant/plugins/pygments_code.rb:14:in `highlight'
	from /vagrant/plugins/backtick_code_block.rb:37:in `block in render_code_block'
	from /vagrant/plugins/backtick_code_block.rb:13:in `gsub'
	from /vagrant/plugins/backtick_code_block.rb:13:in `render_code_block'
	from /vagrant/plugins/octopress_filters.rb:12:in `pre_filter'
	from /vagrant/plugins/octopress_filters.rb:28:in `pre_render'
	from /vagrant/plugins/post_filters.rb:112:in `block in pre_render'
	from /vagrant/plugins/post_filters.rb:111:in `each'
	from /vagrant/plugins/post_filters.rb:111:in `pre_render'
	from /vagrant/plugins/post_filters.rb:166:in `do_layout'
	from /vagrant/vendor/bundle/gems/jekyll-0.12.1/lib/jekyll/post.rb:195:in `render'
	from /vagrant/vendor/bundle/gems/jekyll-0.12.1/lib/jekyll/site.rb:200:in `block in render'
	from /vagrant/vendor/bundle/gems/jekyll-0.12.1/lib/jekyll/site.rb:199:in `each'
	from /vagrant/vendor/bundle/gems/jekyll-0.12.1/lib/jekyll/site.rb:199:in `render'
	from /vagrant/vendor/bundle/gems/jekyll-0.12.1/lib/jekyll/site.rb:41:in `process'
	from /vagrant/vendor/bundle/gems/jekyll-0.12.1/bin/jekyll:264:in `<top (required)>'
	from /vagrant/vendor/bundle/bin/jekyll:22:in `load'
	from /vagrant/vendor/bundle/bin/jekyll:22:in `<main>'

```

I had been switching to [Docker](https://www.docker.com/) in [Vagrant](https://www.vagrantup.com/) to host my Octopress installation, but that did not seem related ...

## Plan A : Upgrade Octopress

It turned out it was related to my migration to Vagrant and Docker.xs This kind of nasty error often comes from obsolete environment. [Internet confirmed](https://github.com/imathis/octopress/issues/1173) confirmed it :

* Ubuntu now uses Python3 instead of Python2
* Octopress2 uses an old version of Pygments
* That version of Pygments requires Python2

I thought that I did not want to play [this game](/ruby-thirdparties-best-practices/) against open source libs, so I set out to update. Octopress 3 has been released. It's not yet documented yet, and there is no official upgrade guide, but some guys have done it :

* http://samwize.com/2015/09/30/migrating-octopress-2-to-octopress-3/
* http://dgmstuart.github.io/blog/2016/01/22/migrating-from-octopress-2-to-3/
* https://www.justinrummel.com/migrating-from-octopress-2-to-octopress-3/

I tried it ... but I stopped before the end. It's kind of working, but fundamental features like category archives required too much Jekylling for me at the time. And themes are still an issue ... I mean, stock theme uses a clean and simple gem based update workflow, but most other themes rely on a tricky git clone-merge update workflow.

## Plan B : Find a hosted blog engine for hackers

I found quite a few options :

* [Medium](http://medium.com) Looks cool, but there is no simple migration tool, and I've been burned by postero.us shutting down, I want to keep control on my content
* [Posthaven](https://posthaven.com/) Having loved postero.us, this one seems cool, It's just I'm not sure the guys are keeping the motivation to increase their feature list with their current business model
* [Ghost](http://ghost.org) Looked great, but too expensive for me (19$ per month)
* [Codrspace](http://codrspace.com) This is a special blogging platform for coders, but it seems it has not been updated for a long time
* [LogDown](https://logdown.com/) This also is a special blogging platform for hackers. It seemed great and had everything I was looking for ... I was ready to spend the 50$ per year for it as it could save me a lot of hassle. Unfortunately, I could not find a way to forward the categories of a post as [Twitter](https://twitter.com/pbourgau) hashtags as I've been doing with Octopress and [Feedburner](https://feedburner.google.com)

In the end, I was rather disappointed by the alternatives, even though I was ready to pay for them.

## Plan C : Fix the error in Octopress 2

Eventually, the fix was rather easy. People had fixed it by patching mentos.py file in the pygments.rb gem to run Python 2 instead of the stock Python. That's not great because it means that I'd have to redo the patch every time I updated my gems, or rebuilt my workspace. Here is what I added to my Vagrantfile instead :

```
sudo apt-get -y install python2.7
sudo ln -sf /usr/bin/python2.7 /usr/bin/python
```
[Here](https://github.com/philou/philou.github.com/commit/ae14c511b682295ed7fdcb3b1a818926f803dd3a) is the commit on my Github repo.

## Conclusion

I'm sticking with Octopress2 for the moment. Maybe I'll re-try to migrate to Octopress3 later on, when an official migration tool or [guide](http://octopress.org/2015/01/15/octopress-3.0-is-coming/) is available. Meanwhile, I'm still dreaming of my perfect blogging platform :

* Open source
* Static HTML generation
* Self or SAAS hosted
* Great integration with social media and the web
* Easy to maintain
* Plugable themes

I'm looking for my next side project at the moment, that could be a useful one ! Anyone interested ?
