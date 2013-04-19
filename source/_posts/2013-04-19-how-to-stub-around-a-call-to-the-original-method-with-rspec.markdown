---
layout: post
title: "How to stub around a call to the original method with rspec ?"
date: 2013-04-19 07:05
comments: true
published: true
categories:
- ruby
- rspec
- testing
---
Rspec mocks now features a 'and_call_original' method to create simple proxy mocks. But how could we build more complex proxies ?

For the sake of the subject, let's take an example that is not a testing best practice, but that everybody will understand. Suppose you want to simulate a faulty network in your tests. You'd like to stub Net::HTTP.get so that it raises errors from time to time. Here is what you could do

```ruby
i = 0
original_get = Net::HTTP.method(:get)
Net::HTTP.stub(:get) do |*args, &block|
  i = i+1
  raise RuntimeError.new("network down") if i%3 == 0
  original_get.call(*args, &block)
end
```

Note the block is taken into account, in this example, it does not matter so much, but forgetting it can bring up really strange issues.
