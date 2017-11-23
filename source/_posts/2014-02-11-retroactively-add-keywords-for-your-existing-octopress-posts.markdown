---
layout: post
title: "Retroactively add keywords for your existing Octopress posts"
date: 2014-02-11 06:54
comments: true
categories:
 - blogging
 - octopress
 - seo
keywords: "blogging, octopress, seo, script, automatic, existing posts"
---
At the moment, I am exploring the world of SEO, and so I thought I could start with my blog. I found [SEO for Octopress websites](http://xit0.org/2013/05/seo-for-octopress-websites/) that I followed to add keywords and descriptions to this blog.

To fill actual keywords for all my existing posts, I had 2 options :

* edit around 60 posts by hand
* write a script to parse Yaml post descriptions and extract and inject keywords

Sorry, I chose the geeky solution ...

<p>
<script src="https://gist.github.com/philou/8929876.js"></script>
</p>

Just add this code to your toplevel Rakefile, and run ```bundle exec rake add_keywords``` and keywords will be added to your existing posts.
