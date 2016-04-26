---
keywords: "rails, ruby, Including, Railsapplicationroutesurl_helpers, module"
layout: post
title: ! ' Including Rails.application.routes.url_helpers from a module'
published: true
date: 2012-04-16
categories:
- rails
- ruby
posterous_url: http://philippe.bourgau.net/including-railsapplicationroutesurlhelpers-fr
posterous_slug: including-railsapplicationroutesurlhelpers-fr
comments: true
---
<p>When I migrated from rails 2.0 to rails 3.0, I had to change inclusion of ActionController::UrlWriter to&nbsp;Rails.application.routes.url_helpers. I started to get strange errors like</p>
<p>
```ruby
undefined 'default_url_options'
```
</p>
<p>when running my specs. The issue was that I was including a module himself including&nbsp;Rails.application.routes.url_helpers.</p>
<p>
```ruby
module PathBarHelper

  include Rails.application.routes.url_helpers
  ...

end
```
</p>
<p>As if at module definition time, url_helpers was not yet completly ready. I changed the code to include url helpers through a hook :</p>
<p>
```ruby
module PathBarHelper

  def self.included(base)
   base.send :include Rails.application.routes.url_helpers
  end
  ...

end
```
</p>
<p>That did the trick, but I must admit I did not dig the issue completly. Tell me if you did ?</p>
