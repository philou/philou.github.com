---
keywords: "rails, ruby, Including, Railsapplicationroutesurl_helpers, module"
layout: single-mailing-list
title: 'Including Rails.application.routes.url_helpers from a module'
published: true
date: 2012-04-16
categories:
- rails
- ruby
posterous_url: http://philippe.bourgau.net/including-railsapplicationroutesurlhelpers-fr
posterous_slug: including-railsapplicationroutesurlhelpers-fr
comments: true
---
When I migrated from rails 2.0 to rails 3.0, I had to change inclusion of `ActionController::UrlWriter` to `Rails.application.routes.url_helpers`. I started to get strange errors like ``` undefined 'default_url_options' ``` when running my specs. The issue was that I was including a module himself including `Rails.application.routes.url_helpers`.

```ruby
module PathBarHelper

  include Rails.application.routes.url_helpers
  ...

end
```

As if at module definition time, url_helpers was not yet completely ready. I changed the code to include url helpers through a hook :

```ruby
module PathBarHelper

  def self.included(base)
   base.send :include Rails.application.routes.url_helpers
  end
  ...

end
```

That did the trick, but I must admit I did not dig the issue completely. Tell me if you did ?
