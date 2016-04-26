---
layout: post
title: "Better error messages when testing html views"
date: 2014-05-18 21:14
comments: true
categories:
 - ruby
 - rspec
 - html
 - matcher
keywords: "rspec, ruby, html, testing, xpath, error message, custom matchers"
description: "Presentation of xpath-spec, an rspec gem aiming at improving error messages when testing html views with xpath"
---
When testing html views, either from [RSpec](http://rspec.info/) or from [Cucumber](http://rspec.info/), [XPath](http://fr.wikipedia.org/wiki/XPath) can be really helpful to quickly find expected elements.

Unfortunately, a bit like regular expressions, when you start to use xpath to solve a problem, you often end up with 2 problems ... Part of the reason is that xpaths tend to be cryptic. In the case of testing, error messages coming from unmatched xpath are even more crytic !

That's why I had the idea for [xpath-specs](https://github.com/philou/xpath-specs) : a small gem that allows to associate a description with an xpath, to nest xpaths together, all this to simplify tests and assertion failure reporting.

For example, with an assertion like this :

```ruby
expect(html).to contain_a(dish_with_name("Grilled Lobster")
```

Here is the kind of failure message one can get :

```
expected the page to contain a dish that is named Grilled Lobster (//table[@id='dish-panel']//tr[td[contains(.,'#{name}')]])
       it found a dish (//table[@id='dish-panel']//tr) :
          <tr><td>Pizza</td>...</tr>
       but not a dish that is named Grilled Lobster (//table[@id='dish-panel']//tr[td[contains(.,'#{name}')]])
```

And here is the required setup :

```ruby
# spec/support/knows_page_parts.rb

module KnowsPageParts
  def dish
    Xpath::Specs::PagePart.new("a dish", "//table[@id='dish-panel']//tr")
  end

  def dish_with_name(name)
    dish.that("is named #{name}", "[td[contains(.,'#{name}')]]")
  end
end

```

Have a look at the [readme](https://github.com/philou/xpath-specs) for more details.