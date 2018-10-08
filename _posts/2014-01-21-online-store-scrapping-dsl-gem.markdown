---
keywords: "ruby, scrapping, DSL, gem, open source, Online, store"
layout: single
title: "Online store scrapping DSL gem"
date: 2014-01-21 06:50
comments: true
categories:
 - ruby
 - scrapping
 - dsl
 - gem
 - open source
---
Since I decided to stop [Mes Courses](http://www.mes-courses.com) to focus on [AgileAvatars](http://www.agileavatars.com), I have been extracting open source gems from the code base. The last one is [Storexplore](https://github.com/philou/storexplore) : a declarative scrapping DSL that lets one define directory like apis to an online store.

As explained in the Readme, it allows one to declare a store this way :

```ruby
Storexplore::define_api 'dummy-store.com' do

  categories 'a.category' do
    attributes do
      { :name => page.get_one("h1").content }
    end

    categories 'a.category' do
      attributes do
        { :name => page.get_one("h1").content }
      end

      items 'a.item' do
        attributes do
          {
            :name => page.get_one('h1').content,
            :brand => page.get_one('#brand').content,
            :price => page.get_one('#price').content.to_f,
            :image => page.get_one('#image').content,
            :remote_id => page.get_one('#remote_id').content
          }
        end
      end
    end
  end
end
```

And to use it like that :

```ruby
Api.browse('http://www.dummy-store.com').categories.each do |category|

  puts "category: #{category.title}"
  puts "attributes: #{category.attributes}"

  category.categories.each do |sub_category|

    puts "  category: #{sub_category.title}"
    puts "  attributes: #{sub_category.attributes}"

    sub_category.items.each do |item|

      puts "    item: #{item.title}"
      puts "    attributes: #{item.attributes}"

    end
  end
end
```

I tried my best to make this library high quality :

* The code evolved from a simple procedural script to a dsl through constant refactorings
* Real world features like constant memory usage have been added to fix production bugs
* Documented with samples and rdoc
* Extensive automated testing

Let's hope it will be usefull for some.
