---
keywords: "gem, Ruby, Best Practices, thirdparties, practices"
layout: single
title: Ruby thirdparties best practices
published: true
date: 2012-04-26
categories:
- gem
- ruby
- Best Practices
posterous_url: http://philippe.bourgau.net/ruby-thirdparties-best-practices
posterous_slug: ruby-thirdparties-best-practices
comments: true
---
I am just finishing migrating [www.mes-courses.fr](http://www.mes-courses.fr) from rails 2 to rails 3, and I can assure that I learnt these lessons the hard way ...

* use Bundler [http://gembundler.com](http://gembundler.com)
* keep your Gemfile simple : just the top level dependencies, and no version constraints
* try to stick to popular gems : you'll find a lot more answers to your questions from the web. It's often simpler to write and maintain a little extra code than to depend on a crappy thirdparty that is supposed to meet your need
* stick with the most recent versions of your dependencies. With a good test suite and with Bundler, it should be rather easy to upgrade, so do it often to avoid both the upgrade tunnel effect and struggling with bugs and incompatibility of unmaintained old versions of gems.

### Edit

I discovered [the ruby toolbox](http://www.ruby-toolbox.com) that categorizes and sorts gems based on their popularity !

### Edit 2

I discovered it is sometimes necessary to add constraints to get the latest versions of gems that would otherwise conflict (directly or not) with others.
