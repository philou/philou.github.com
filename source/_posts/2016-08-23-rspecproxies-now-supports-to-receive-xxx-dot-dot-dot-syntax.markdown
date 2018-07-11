---
layout: post
title: "RSpecProxies now supports .to receive(xxx)... syntax"
date: 2016-08-23 04:47
comments: true
categories:
 - ruby
 - rspec
 - testing
 - agile
 - tdd
 - mocking
keywords: "RSpec, Mocks, RSpec Mocks, Test, Test Proxies, Ruby, TDD, RSpecProxies"
description: "Features of the new v1.0 of RSpecProxies, a gem that simplifies RSpec mocking with proxies"
---
![Hardware test probes]({{site.url}}/imgs/2016-08-23-rspecproxies-now-supports-to-receive-xxx-dot-dot-dot-syntax/test_probes.jpg)

Pure mocks are dangerous. They let defect go through, give a false sense of security and are difficult to maintain.

I've already talked about it [before](/hitting-the-middle-ground-between-classicist-and-mockist-tdd/) but since then, [DHH announced that he was quitting TDD](http://david.heinemeierhansson.com/2014/tdd-is-dead-long-live-testing.html), the [Is TDD Dead ?](http://martinfowler.com/articles/is-tdd-dead/) debate took place, and the conclusion is that [mockist are dead](https://www.thoughtworks.com/insights/blog/mockists-are-dead-long-live-classicists).

They are still times when mocks feel much simpler than any other things. For example, imagine your process leaks and crashes after 10 hours, the fix is to pass an option to a thirdparty, how would you test this in a fast test ? That's exactly the kind of situation where using test proxies saves you from mocks. A test proxy defers everything to the real object but also features unintrusive hooks and probes that you can use in your test. If you want a code example, check [this commit](https://github.com/philou/mes-courses/commit/2c9fce17f9b59d0b3828f309015c07b17cceddf4?diff=split), where I refactored a rails controller test from mocks to a RSpecProxies (v0.1).

I created RSpecProxies [a while ago](/my-new-gem-for-creating-rspec-proxies/), a while ago, and it's syntax made it alien to the RSpec work, it needed an update. [RSpec](http://rspec.info) now supports basic proxying with partial stubs, spies, the ```and_call_original``` and the ```and_wrap_original``` methods. [RSpecProxies 1.0](https://github.com/philou/rspecproxies) is a collection of hooks built on top of these to make proxying easier, with a syntax that will be familiar to RSpec users.

## Before original hook

This hook is triggered before a call a method. Suppose you want to simulate a bad connection :

```ruby
it 'can simulate unreliable connection' do
  i = 0
  allow(Resource).to receive(:get).and_before_calling_original { |*args|
    i += 1
    raise RuntimeError.new if i % 3 == 0
  }

  resources = Resource.get_at_least(10)

  expect(resources.size).to eq(10)
end
```

## After original hooks

RSpecProxies provides the same kind of hook after the call :

``` ruby
it 'can check that the correct data is used (using and_after_calling_original' do
  user = nil
  allow(User).to receive(:load).and_after_calling_original { |result| user = result }

  controller.login('joe', 'secret')

  expect(response).to include(user.created_at.to_s)
end
```

Here we are capturing the return value to use it later in the test. For this special purpose, RSpecProxies also provides 2 other helpers :

``` ruby
# Store the latest result in @user of self
allow(User).to receive(:load).and_capture_result_into(self, :user)

# Collect all results in the users array
users = []
allow(User).to receive(:load).and_collect_results_into(users)
```

## Proxy chains

RSpec mocks provides the ```message_chain``` feature to do build chains of stubs. RSpecProxy provides a very similar proxy chain concept. The main difference is that it creates proxies along the way, and not pure stubs. Pure stubs assume that you are mocking everything, but as our goal is to mock as little as possible, using proxies makes more sense.

When using a mockist approach, the message chain is a bad smell because it makes your tests very brittle by depending on a lot of implementation. In contrast, proxy chains are meant to be used where they are the simplest way to inject what you need, without creating havoc.

For example, suppose you want to display the progress of a very slow background task. You could mock a lot of your objects to have a fast test, of if you wanted to avoid all the bad side effects of mocking, you could run the background task in your test, and have a slow test ... Or, you could use a chain of proxies :

``` ruby
it 'can override a deep getter' do
  allow(RenderingTask).to proxy_message_chain("load.completion_ratio") { |e| e.and_return(0.2523) }

  controller.show

  expect(response).to include('25%')
end
```

Here the simplest thing to do is just to override a small getter, because from a functionnal point of view, that's exactly what we want to test.

## Last word

The code is on [github](https://github.com/philou/rspecproxies), v1.0.0 is on [rubygems](https://rubygems.org/gems/rspecproxies/versions/0.1.0), it requires Ruby v2.2.5 and RSpec v3.5, the license is MIT, help in any form are welcome !
