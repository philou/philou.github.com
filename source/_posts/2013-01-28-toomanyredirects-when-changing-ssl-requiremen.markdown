---
keywords: "ruby, ssl, web, TOO_MANY_REDIRECTS, changing, requirements"
layout: post
title: TOO_MANY_REDIRECTS when changing ssl requirements
published: true
date: 2013-01-28
categories:
- ruby
- SSL
- web
posterous_url: http://philippe.bourgau.net/toomanyredirects-when-changing-ssl-requiremen
posterous_slug: toomanyredirects-when-changing-ssl-requiremen
comments: true
---
While I was trying to enforce no ssl on a page of <a href="http://www.mes-courses.fr">www.mes-courses.fr</a> with Rack::SslEnforcer, I lost a few hours trying to fix a TOO_MANY_REDIRECTS error ... The server was redirecting from http to https in loop !<p /><div>It turned out it was my browser (chromium) that had cached a previous redirection.</div><p /><div>I fixed it by right-clicking the faulty redirection in the chrome network debugger and asking a cache clear.</div> 
