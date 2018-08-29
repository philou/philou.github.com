---
layout: single
title: "My new gem for creating rspec proxies"
date: 2014-05-23 06:20
comments: true
categories:
 - ruby
 - rspec
 - testing
 - mocking
 - agile
 - tdd
keywords: "ruby, rspec, testing, mocking, proxies, rspec proxies, rspec proxy, agile, tdd, test driven developmnent"
description: "A presentation of the rspecproxies ruby gem library"
---
I already wrote a lot about test proxies ([here](/how-to-stub-around-a-call-to-the-original-method-with-rspec/), [here](/hitting-the-middle-ground-between-classicist-and-mockist-tdd/) and [here](/my-humble-advices-about-how-to-write-maintainable-tests/)).

I just took the time to transform my previous gist in a full fledged ruby gem. It's called "rspecproxies" and it can be found [on github](https://github.com/philou/rspecproxies). It's fully tested, documented and there's a usage section in the readme to help anyone get started.

Here are the pain points proxies try to fix :

* Without mocks, it is sometimes just awfully painfull to write the test (do you really want to start a background task just to get a completion ratio ?)
* With classic stubs, you sometimes have to stub things you are not interested in in your test, you end up with unmaintainable extra long stub setup

Let's have a look at a few examples of tests with proxies :

* Verify actual load count without interfering in any behaviour

```ruby
it 'caches users' do
  users = User.capture_results_from(:load)

  controller.login('joe', 'secret')
  controller.login('joe', 'secret')

  expect(users).to have_exactly(1).items
end
```

* Use proxies to stub an object that does not yet exist

```ruby
it 'rounds the completion ratio' do
   RenderingTask.proxy_chain(:load, :completion_ratio) {|s| s.and_return(0.2523) }

   renderingController.show

   expect(response).to include('25%')
end
```

I'd really love to see more code tested with proxies, it makes the whole testing so much more natural. As with any testing techniques, we get more thorough testing from the ease of writing the test.
