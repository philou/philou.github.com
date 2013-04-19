---
layout: post
title: Rails url_helpers mixup when using rails engines
published: true
date: 2012-08-09
categories:
- ruby
- rails
- gem
posterous_url: http://philippe.bourgau.net/rails-urlhelpers-mixup-when-using-rails-engin
posterous_slug: rails-urlhelpers-mixup-when-using-rails-engin
comments: true
---
<p>I just tried to integrate the <a href="https://github.com/KatanaCode/blogit">blogit</a> rails engine directly inside <a href="http://www.mes-courses.fr">www.mes-courses.fr</a>. Up till now, I was using a separated <a href="http://radiantcms.org/">radiant</a> app&nbsp;to deal with the blog part. It was working fine, but I had a few problems:</p>
<ul>
<li>I had to use special (javascript heavy) google analytics code through all cross app links, and that sometimes failed (somewhere in the combinaison of&nbsp;heroku, rails, and analytics)</li>
<li>It was difficult to share the theme between the apps : on one side, templates, partials and css, on the other, rows in a database</li>
<li>It was difficult to share session state between the two apps (login for example)</li>
</ul>
<p>As my blog is very basic, and as I am the only one editing the styles, I decided to embed a blog engine inside my app. I selected and tried a few&nbsp;engines : <a href="https://github.com/jipiboily/monologue">Monologue</a>, <a href="https://github.com/KatanaCode/blogit">Blogit</a>, <a href="http://refinerycms.com/">RefineryCMS</a> and to roll my own. Refinery looks way too complex to integrate regarding my basic needs. Monologue is not&nbsp;design to integrate with <a href="https://github.com/plataformatec/devise/">devise</a> users (which I already use) and I would prefer to contribute to an existing gem rather than to write the nth rails blog engine ...</p>
<p>After a few experiments, I settled on blogit. Unfortunately, I had really strange issues with links within blogit pages : all links were prefixed with "/blog" and blogit&nbsp;links where like "/blog/blogit?controller=posts&amp;action=new". Hacking around in the rails console showed me that doing consecultively :</p>
<p>
```ruby
include Blogit::Engine.routes.url_helpers
include Rails.application.routes.url_helpers
```
</p>
<p>resulted in the same behaviour. After a long debugging session, I eventually discovered that I had a helper in my application which explicitly required&nbsp;Rails.application.routes.url_helpers. This was causing the conflict. I changed my code to avoid this inclusion, and that fixed the links ...</p>
<p>... nearly. Now rendering the application template for a blog page failed with a "message not understood" for the main app's xxx_path methods. Hopefully, I had&nbsp;found <a href="http://www.candland.net/2012/04/17/rails-routes-used-in-an-isolated-engine/">a fix</a> for this error earlier on the web. Now everything was working like a charm.</p>
<p>To conclude, I was convinced by blogit, and I am going to use it to migrate my blog. I already have a few ideas for improvements I will have to do (<a href="http://disqus.com/">disqus</a> comments&nbsp;and archive helper for example).</p>
