---
keywords: "testing, ruby, web, Matching, meta, tags, Capybara"
layout: post
title: "Matching meta tags with Capybara 2"
date: 2013-07-01 20:20
comments: true
categories:
 - testing
 - ruby
 - web
published: true
---
As I updated my bundle, some capybara have_selector(...) matches started to fail. Here was the message :

```
expected to find xpath "//meta[@http-equiv='refresh']" but there were no matches. Also found "", which matched the selector but not all filters. (Capybara::ExpectationNotMet)
```

After some searching, I eventually understood that it was a modification in the behaviour of Capybara 2 that only matches elements in the html body, and not in the head anymore. If trying to match the title, [stackoverflow suggests](http://stackoverflow.com/questions/13573525/rspec-capybara-2-0-tripping-up-my-have-selector-tests) to use :
```ruby
expect(response).to have_title('My page')
```

To match meta tags, I had to resort to the following :
```ruby
meta_refresh_tags = Nokogiri::HTML(page.source).xpath("//meta[@http-equiv='refresh']")
expect(meta_refresh_tags).not_to(be_empty, 'could not find a meta refresh tag')
```

I could do with something nicer, but it's ok for the moment.