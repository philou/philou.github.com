---
keywords: "Devise, rails, ruby, workaround, external, gem, generator, found"
layout: single
title: external gem rails generator not found
published: true
date: 2011-11-24
categories:
- Devise
- rails
- ruby
- workaround
posterous_url: http://philippe.bourgau.net/external-gem-rails-generator-not-found
posterous_slug: external-gem-rails-generator-not-found
comments: true
---
When trying to use devise 1.0.11 with rails 2.3.8 and bundler 1.0.10, I got the error `could not find generator ...` when running `bundle exec script/generate devise_install ...` After reading this [stackoverflow Q&A](http://stackoverflow.com/questions/3366508/couldnt-find-devise-install-generator-rails-2-3-8-devise-1-0-8), I ended up copying the file manually !

I hope this is fixed in rails 3, I am looking forward to migrate.
