---
keywords: "ruby, rspec, testing, Hitting, middle, ground, between, classicist, mockist, TDD"
layout: single
title: "Hitting the middle ground between classicist and mockist TDD"
published: true
date: 2013-06-18 08:55
comments: true
categories:
- ruby
- rspec
- testing
- mocking
---
From [Martin Fowler's point of view](http://martinfowler.com/articles/mocksArentStubs.html), I must have been a mockist. With using mocks extensively comes quite a few advantages :

  * test failures often pinpoint the falsy code
  * easier test organisation mimicking that of the code
  * faster tests
  * simpler test initialization

Mocks also have their own problems, but mostly :

  * especialy with dynamicaly typed languages, a mock for class A might not implement the same methods than the real class A, but the test might be passing though ! This ampers refactoring with a longer feedback loop and mock setup rewriting

That's what always bothered me. Eventually I tried a combinaison of techniques that seem to work well together and provides most of the best of both worlds.

  * extensive use of factories (with [FactoryGirl](https://github.com/thoughtbot/factory_girl)) to simplify setup
  * use of an [in memory sqlite database](http://www.sqlite.org/inmemorydb.html) to get a fast full working db
  * implement fully functional fakes for some parts of the system
  * carefull use of mocks, inspired from [Gregory Brown's thoughts on mocks](http://blog.rubybestpractices.com/posts/gregory/052-issue-20-thoughts-on-mocking.html)
    * when a test is too slow
    * to cut off a dependency to a subsystem that is not available in a unit test
    * to simplify overly long test data setup
  * use of test proxies (as in [rr](https://github.com/rr/rr)) to inject specific behaviour or to perform specific checks without modifying the rest of the program.

Here is how I implemented this with rspec :
<script src="https://gist.github.com/philou/5894144.js"></script>

With all this in place, it is most of the time possible to write straightforward tests. For example here, only real objects are used. @order gets its value when Order.create! is called.

```ruby
it "should create an order with the cart" do
  capture_result_from(Order, :create!, into: :order)

  check_in_cart

  @order.should_not be_nil
  @order.cart.should == @cart
end
```

Maybe I should swith to rr ...

**EDIT 20/08/2014:**

I eventually moved this code into its own gem, it's [on github](https://github.com/philou/rspecproxies).
