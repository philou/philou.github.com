---
layout: single
title: "How Custom Assertion Matchers will keep mocks away"
date: 2018-05-17 06:47
comments: true
categories: 
 - tdd
 - mocking
 - testing
 - programming
 - ruby
 - how-to-avoid-mocks-series
keywords: "Mocks, Unit Testing, Automated Testing, TDD, Test Driven Development, London School of Testing, Mocking, Test Data Builders, Custom Matchers, Assertion Matchers, Custom Assertion Matchers, Ruby"
description: "An explanation of how Custom Assertion Matchers prevent excessive mocking. Code examples in Ruby are presented to illustrate the point."
---
*Custom assertions are a handy compromise alternative to mocks when we don't have the time to refactor to a functional style.*

With the [3X model](https://www.youtube.com/watch?v=YGhS8VQpS6s), [Kent Beck](https://www.kentbeck.com/) almost explicity tells us that we should take technical debt at the beginning of a feature or project. Using no-brainer [CRUD](https://en.wikipedia.org/wiki/Create,_read,_update_and_delete) frameworks, like [Rails](https://rubyonrails.org/), is very effective to get the first version of a new product out. When the project hopefully becomes a success, many things happen. Tests become important, but also messy and slow. Unfortunately, in this fast expansion phase, we're lacking time for refactoring. Even if moving to a more functional style would be the test thing to clean up our tests, we often end up adding mocks.

> 💡 When we are in a hurry, we get lured into mocking to workaround complicated tests

Custom assertions are a handy compromise. They avoid most of the downsides of mocks, while preparing for a potential refactoring. If you don't know what custom assertions are, here is pseudo code that uses a custom assertion :

```
assert.that(actual, VerifiesMyCustomAssertion(withCustomProperties))
```

For more details, have a look at these examples for your preferred language : [Java](http://joel-costigliola.github.io/assertj/assertj-core-custom-assertions.html), [Ruby](https://relishapp.com/rspec/rspec-expectations/docs/custom-matchers) or [Javascript](http://tonylukasavage.com/blog/2014/05/29/custom-assertions-in-should-dot-js/).

![A drawing of a box of matches, branded 'Matchers' on top]({{site.url}}{{site.baseurl}}/imgs/2018-05-15-how-custom-assertion-matchers-will-keep-mocks-away/matchers.jpg)

I already blogged about [the benefits of Custom Assertion Matchers](/speed-up-the-tdd-feedback-loop-with-better-assertion-messages/). Here I'm going to dive in their advantages against mocking.

This is the fifth post in a [series about how to avoid mocks]({{site.baseurl}}/categories/#how-to-avoid-mocks-series). If you haven't yet, I recommend you to start from [the beginning](/careless-mocking-considered-harmful/).

## Why would we end up with mocks when we don't have matchers ?

Let's walkthrough a small story. Suppose we are building an e-commerce website. When someone passes an order, we want to notify the analytics service. Here is some very simple code for that.

```ruby
class AnalyticsService  

 def initialize  
   @items = []  
 end  

 attr_reader :items  

 def order_passed(customer, cart)  
   cart.each do |item|  
     @items.push(customer: customer, item: item)  
   end  
 end  
end  

class Order  
 def initialize(customer, cart, analytics)  
   @customer = customer  
   @cart = cart  
   @analytics = analytics  
 end  

 def pass  
   # launch order processing and expedition  

   @analytics.order_passed(@customer, @cart)  
 end  

end  

describe 'Order' do  

 it "notifies analytics service about passed orders" do  
   cart = ["Pasta","Tomatoes"]  
   analytics = AnalyticsService.new  
   order = Order.new("Philippe", cart, analytics)  

   order.pass  

   expect(analytics.items).to include(customer: "Philippe", item: "Pasta")  
   expect(analytics.items).to include(customer: "Philippe", item: "Tomatoes")  
 end  
end
```

Let's focus on the tests a bit. We first notice that the verification section is large and difficult to understand.  Looking in more details, it knows too much about the internals of AnalyticsService. We had to make the items accessor public just for the sake of testing. The test even knows how the items are stored in a list of hashes. If we were to refactor this representation, we would have to change the tests as well.

We could argue that responsibility-wise, our test should only focus on Order. It makes sense for the test to use a mock to verify that the Order calls AnalyticsService as expected. Let's see what this would look like.

```ruby
it "notifies analytics service about passed orders" do  
 cart = ["Pasta","Tomatoes"]  
 analytics = AnalyticsService.new  
 order = Order.new("Philippe", cart, analytics)  

 expect(analytics).to receive(:order_passed).with("Philippe", cart)  

 order.pass  
end
```

Sure, the test code is simpler. It's also better according to good design principles. The only glitch is that we now have a mock in place with all the problems I described [before](/careless-mocking-considered-harmful/).

This might not (yet) be a problem in our example but, for example, the mock 'cuts' the execution of the program. Suppose that someday, the Order starts expecting something from the AnalyticsService. We'd then need to 'simulate' the real behavior in our mock. This would make the test very hard to maintain.

## Matchers to the rescue

Let's see how a matcher could help us here. The idea is to improve on the first 'state checking' solution to make it better than the mock one. We'll extract and isolate all the state checking code in a custom matcher. By factorizing the code in a single matcher, we'll reduce duplication. The matcher remains too intimate with the object, but as it is now unique and well named, it's less of a problem. Plus, as always with matchers, we improved readability.

```ruby
RSpec::Matchers.define :have_been_notified_of_order do |customer, cart|  
 match do |analytics|  
   cart.each do |item|  
     return false unless analytics.items.include?(customer: customer, item: item)  
   end  
   true  
 end  
end  

describe 'Order' do  
 it "notifies analytics service about passed orders" do  
   cart = ["Pasta","Tomatoes"]  
   analytics = AnalyticsService.new  
   order = Order.new("Philippe", cart, analytics)  

   order.pass  

   expect(analytics).to have_been_notified_of_order("Philippe", cart)  
 end  
end
```

Here is how we could summarize the pros and cons of each approach :

| Assert state          | Mocks                              | Matchers |
|-----------------------|----------------------------------- |----------|
| 👎 duplicated code    |👎 duplicates the program behavior|❤️ customizable error messages|
|👎 breaks encapsulation|                                   |❤️ more readable|
|                       |                                    |👎 intimacy with the asserted object|
|                       |                                    |❤️ factorizes the assertion code|

## Design improvements

As I said in the introduction, customer matchers are often an alternative to mocks when we don't have the time for a better refactoring. Later down the road, you might find the time for this refactoring. Functional style and the "Tell, don't ask!" principles are often the solution here.

In our example, a publish-subscribe pattern might do. A better design should fix the encapsulation problem of the matcher. Here again, the custom assertion matchers will help. In most cases, it will be enough to change the implementation of the matchers only.

> 💡 Custom assertion matchers make refactoring easier by factorizing test assertions.

## Summary of small-scale techniques

I'm done with small scale mock avoiding techniques. To summarize, the first thing to do is to push for more and more [immutable value objects](/how-immutable-value-objects-fight-mocks/). Not only does it help us to avoid mocks, but it will also provides many benefits for production code. Practices like [Test Data Builders](/how-to-use-test-data-builders-to-avoid-mocks-and-keep-your-tests-clear/) and Custom Assertion Matchers simplify dealing with Immutable Value Objects in tests. They also help to keep tests small and clean, which is also a great thing against mocks.

## Next post

In the following posts, I'll look into architecture scale techniques to avoid mocks. I'll start with [Hexagonal architecture](/avoid-mocks-and-test-your-core-domain-faster-with-hexagonal-architecture/).

*Thanks to [Dragan Stepanovic](http://www.draganstepanovic.com/) who's comments brought me to update this post.*
