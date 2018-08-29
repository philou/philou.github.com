---
keywords: "Devise, rails, SSL, Devise,, requirements, post, data"
layout: single
title: Devise, SSL requirements and post data
published: true
date: 2012-01-25
categories:
- Devise
- rails
- SSL
posterous_url: http://philippe.bourgau.net/devise-ssl-requirements-and-post-data
posterous_slug: devise-ssl-requirements-and-post-data
comments: true
---
<p>I am using rails 2.3.8, devise 1.0.11 and ssl_requirements 0.1.0. I am having strange behaviour when mixing devise with ssl_requirements. When a form posts to an action that is required to be ssl, the post is redirected to ssl as a get, and looses its post data !</p>
<p>To workaround the problem, I had to require ssl for the form itself aswell.</p>
<p>I hope the situation will be better once I migrate to rails 3 and to newer versions of devise and ssl_requirements.</p>
