---
layout: single-mailing-list
title: "Verify the Big O Complexity of Ruby Code in RSpec"
date: 2017-01-04 17:48
comments: true
categories:
 - open-source
 - ruby
 - performance
 - rspec
 - machine learning
keywords: "Ruby, Software, Performance, RSpec, Machine Learning, Linear Regression, Ruby Gem, Programming, Open Source"
description: "An introduction to 'complexity_assert', an experimental ruby open source unit testing gem that I wrote, which uses linear regression asserts the complexity of an algorithm"
---
It might be possible to discover performance regressions before running your long and large scale benchmarks !

[complexity_assert](https://github.com/philou/complexity-assert) is an [RSpec](http://rspec.info/) library that determines and checks the [big O complexity](http://bigocheatsheet.com/) of a piece of code. Once you've determined the performance critical sections of your system, you can use it to verify that they perform with the complexity you expect.

## How does it work ?

The gem itself is the result of an experiment to learn machine learning in 20 hours (you can read more about that experiment in [my previous post](/how-i-got-my-feet-wet-with-machine-learning-with-the-first-20-hours/) if you want).

Suppose you have some a method, let's call it `match_products_with_orders(products, orders)` which is called in in one of your processes with very large arguments. Badly written, this method could be quadratic (O(n²)), which would lead to catastrophic performances in production. When coding it, you've taken particular care to make it perform in linear time. Unfortunately, it could easily slip back to a slower implementation with a bad refactoring ... Using complexity_assert, you can make sure that this does not happen :

``` ruby
# An adapter class to fit the code to measure in complexity assert
class ProductsOrdersMatching

    # Generate some arguments of a particular size
    def generate_args(size)
        # Let's assume we have 10 times less products than orders
        [ Array.new(size / 10) { build_a_product() }, Array.new(size) { build_an_order() } ]
    end

    # Run the code on which we want to assert performance
    def run(products, orders)
        match_products_with_orders(products, orders)
    end
end

describe "Products and Orders Matching" do

    it "performs linearly" do
        # Verify that the code runs in time proportional to the size of its arguments
        expect(ProductOrdersMatching.new).to be_linear()
    end

end
```

That's it ! If ever someone changes the code of `match_products_with_orders` and makes it perform worse than linearly, the assertion will fail ! There are similar assertions to check for constant and quadratic execution times.

Internally, the code will be called a number of times with different (smallish) sizes of arguments and the execution times will be logged. When this is over, by doing different flavors of linear regressions, it should determine whether the algorithm performs in O(1), O(n) or O(n²). Depending on your code, this can take time to run, but should still be faster than running large scale benchmarks.

Just check the [README](https://github.com/philou/complexity-assert/blob/master/README.md) for more details.

## Did you say experiment ?

It all started like an experiment. So the gem itself, is still experimental ! It's all fresh, and it could receive a lot of enhancements like :

* Allow the assertion to specify the sizes
* Allow the assertion to specify the warm-up and run rounds
* Robustness against garbage collection : use GC intensive ruby methods, and see how the regression behaves
* Find ways to make the whole thing faster
* O(lnx) : pre-treat with exp()
* O(?lnx) : use exp, then a search for the coefficient (aka polynomial)
* O(xlnx) : there is no well known inverse for that, we can compute it numerically though
* Estimate how much the assert is deterministic
* ...

As you see, there's a lot of room for ideas and improvements.
