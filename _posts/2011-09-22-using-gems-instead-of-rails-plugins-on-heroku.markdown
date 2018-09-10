---
keywords: "gem, heroku, rake, ruby, Using, gems, instead, rails, plugins"
layout: single
title: Using gems instead of rails plugins on heroku
published: true
date: 2011-09-22
categories:
- gem
- heroku
- rake
- ruby
posterous_url: http://philippe.bourgau.net/using-gems-instead-of-rails-plugins-on-heroku
posterous_slug: using-gems-instead-of-rails-plugins-on-heroku
comments: true
---
Heroku is great, you can have a rails app running live in a few minutes ! There are still a few tricky points you've got to sort out a little differently. One of them is using rails plugins or extensions. The usage way is to have a submodule in your git repository, but heroku does not support submodules ... You are left with 2 choices :

* Expand the submodule as classical files in your main git repository
* Use the extension or plugin as a gem (if possible)

When I can, I'll go the second route. Last time, I ran into a problem. I wanted to use radiant-tags-extension gem with my radiant app, but I could not launch the install rake task

```sh
rake radiant:extensions:tags:install
```

I eventually found out that rake tasks from gems are not automatically available from the mail rake command. I also found [this](http://ggr.com/how-to-include-a-gems-rake-tasks-in-your-rails-app.html) and it did the trick.

```ruby
# <railsapproot>/lib/tasks/gems.rake

Dir["#Gem.searcher.find('radiant-tags-extension').full_gem_path}/lib/tasks/*.rake"].each { |ext| load ext }
```
