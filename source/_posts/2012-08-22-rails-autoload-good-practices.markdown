---
keywords: "ruby, Rails, autoload, good, practices"
layout: post
title: Rails autoload good practices
published: true
date: 2012-08-22
categories:
- ruby
- rails
posterous_url: http://philippe.bourgau.net/rails-autoload-good-practices
posterous_slug: rails-autoload-good-practices
comments: true
---
I started using rails autoload to load files in my lib folder of <a href="http://www.mes-courses.fr">http://www.mes-courses.fr</a>. Before that, I had been using hand written require statements, and later hand written autoload statements. Rails autoload are by far the best approach for this. It has a few pitfalls though. Here are the best practices I discovered so far.

* Use autoload to load files in your lib folder. In config/application.rb

```ruby
config.autoload_paths += %W(#{config.root}/lib)
```

* Inside the lib folder, organize your files with directories and use corresponding modules to create logic namespaces
* Don't declare the namespaces in a single line like this :

```ruby
module MyApp::Utils
 class FileHelper
 ...
 end
end
```

If ever this file is autoloaded first, you will get an error like `undefined constant MyApp`, it gets more likely with deeper namespace structure. Prefer the following nested declaration :

```ruby
module MyApp
 module Utils
   class FileHelper
     ...
   end
  end
end
```

* Doing `include MyApp::Utils` to include the have access to Utils members (ie "using namespace" in C++) will not work as well as with explicit requires. So if it does not work well, prefer to use `FileHelper = MyApp::Utils::FileHelper`
* Whenever you are using a base class, I found out that autoload does not always manage to load the base class correctly, in this case, explicitly requiring the base class fixes the issue.
* If ever you try to monkey patch one of your class directly (in a test for example), the real class might not get autoloaded since it is already declared in the monkey path :

```ruby
class MyApp::Engine
  ...
end
describe MyApp::Engine do
  before :each do
    @engine = MyApp::Engine.new("name")
    ...
   end
   ...
end
```

This might trigger an error like `wrong number of arguments for MyApp::Engine.new`. Knowing `MyApp::Engine` from the spec file, rails does not try to autoload the other part ! Here is how I fixed this

```ruby
module MyApp::EngineExtras
  ...
end
MyApp::Engine.send(:include, MyApp::EngineExtras)
...
```

This works as expected.

At the moment, I still have an issue I did not manage to fix neatly : how can we include namespaces in spec and cucumber step files without polluting the global namespace ?
