---
layout: post
title: Ruby thirdparties best practices
published: true
date: 2012-04-26
categories: []
posterous_url: http://philippe.bourgau.net/ruby-thirdparties-best-practices
posterous_slug: ruby-thirdparties-best-practices
---
<p>I am just finishing migrating <a href="http://www.mes-courses.fr">www.mes-courses.fr</a> from rails 2 to rails 3, and I can assure that I learnt these lessons the hard way ...<br /> * use Bundler <a href="http://gembundler.com">http://gembundler.com</a><br /> * keep your Gemfile simple : just the top level dependencies, and no version constraints<br /> * try to stick to popular gems : you'll find a lot more answers to your questions from the web. It's often simpler to write and maintain a little extra code than to depend on a crappy thirdparty that is supposed to meet your need<br /> * stick with the most recent versions of your dependencies. With a good test suite and with Bundler, it should be rather easy to upgrade, so do it often to avoid both the upgrade tunnel effect and struggling with bugs and incompatibility of unmaintained old versions of gems.</p>
<p>Edit: I discovered <a href="http://www.ruby-toolbox.com">the ruby toolbox</a>&nbsp;that categorizes and sorts gems based on their popularity !</p>
