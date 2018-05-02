---
layout: post
title: "Immutable Value Objects vs Mocks : Fizz Buzz"
date: 2018-05-03 19:28
comments: true
categories: 
 - tdd
 - mocking
 - testing
 - programming
 - ruby
 - how-to-avoid-mocks-series
keywords: "Mocks, Unit Testing, Automated Testing, TDD, Test Driven Development, London School of Testing, Mocking, Immutable Value Object, Value Objects, Immutable Data, Immutable Data Structures, Ruby"
description: "A walk through of the Fizz Buzz kata using immutable value objects to remove mocks."
---
In my [previous post](/how-immutable-value-objects-fight-mocks/) I explained how [Immutable Value Objects](https://martinfowler.com/bliki/ValueObject.html) help us to avoid mocks. In this post, I'll illustrate this in practice with real code.

This is the third post on a [series about how to avoid mocks](/blog/categories/how-to-avoid-mocks-series/). If you haven't, you can start reading the full story [here](/careless-mocking-considered-harmful/).

![A drawing "FIZZ BUZZ" rock fallen and sealed in the ground](../imgs/2018-04-17-immutable-value-objects-vs-mocks-fizz-buzz/immutable-fizz-buzz.jpg)

## Fizz Buzz Example

As a simple example, I'll go through the classic [Fizz Buzz](http://codingdojo.org/kata/FizzBuzz/). I've implemented and tested it with and without immutable value objects. Please keep in mind that this is a toy example, where problems are obvious and easily fixed. I try to highlight at small scale the same problems that get hidden by the complexity of a large scale program.

Let's start with a typical FizzBuzz implementation.

```ruby
1.upto(100) do |i|
  if (i%3 == 0 and i%5 == 0)
    STDOUT.puts("FizzBuzz\n")
  elsif (i%3 == 0)
    STDOUT.puts("Fizz\n")
  elsif (i%5 == 0)
    STDOUT.puts("Buzz\n")
  else
    STDOUT.puts("#{i}\n")
  end
end
```

Suppose you need to add some tests around the code. The most straightforward way is to mock `STDOUT` :

```ruby
require 'rspec'

def fizzBuzz(max, out)
  1.upto(max) do |i|
    if (i%3 == 0 and i%5 == 0)
      out.puts("FizzBuzz\n")
    elsif (i%3 == 0)
      out.puts("Fizz\n")
    elsif (i%5 == 0)
      out.puts("Buzz\n")
    else
      out.puts("#{i}\n")
    end
  end
end

# main
fizzBuzz(100,STDOUT)

describe 'Mockist Fizz Buzz' do

  it 'should print numbers, fizz and buzz' do
    out = double("out")
    expect(out).to receive(:puts).with("1\n").ordered
    expect(out).to receive(:puts).with("2\n").ordered
    expect(out).to receive(:puts).with("Fizz\n").ordered
    expect(out).to receive(:puts).with("4\n").ordered
    expect(out).to receive(:puts).with("Buzz\n").ordered
    expect(out).to receive(:puts).with("Fizz\n").ordered
    expect(out).to receive(:puts).with("7\n").ordered
    expect(out).to receive(:puts).with("8\n").ordered
    expect(out).to receive(:puts).with("Fizz\n").ordered
    expect(out).to receive(:puts).with("Buzz\n").ordered
    expect(out).to receive(:puts).with("11\n").ordered
    expect(out).to receive(:puts).with("Fizz\n").ordered
    expect(out).to receive(:puts).with("13\n").ordered
    expect(out).to receive(:puts).with("14\n").ordered
    expect(out).to receive(:puts).with("FizzBuzz\n").ordered

    fizzBuzz(15, out)
  end
end


```

Unfortunately, there are a few problems with this code :

*   With nested logic and complicated mock setup, both code and tests aren't very readable
*   They both seem to violate the single responsibility principle as well
*   It's depending on a mutable output. Within a larger program, something could be messing around with this output stream. That would break FizzBuzz.

Let's now try to use as many immutable values objects as possible, and see what happens to the mocks.

```ruby
require 'rspec'

# We extracted a function to do the fizz buzz on a single number
def fizzBuzzN(i)
  if (i%3 == 0 and i%5 == 0)
    "FizzBuzz"
  elsif (i%3 == 0)
    "Fizz"
  elsif (i%5 == 0)
    "Buzz"
  else
    i.to_s
  end
end

# We replaced the many calls to STDOUT.puts by building a single 
# large (and immutable) string
def fizzBuzz(max)
  ((1..max).map {|i| fizzBuzzN(i)}).join("\n")
end

# main, with a single call to STDOUT.puts
STDOUT.puts fizzBuzz(100)

describe 'Statist Fizz Buzz' do

  it 'should print numbers not multiples of 3 or 5' do
    expect(fizzBuzzN(1)).to eq("1")
    expect(fizzBuzzN(2)).to eq("2")
    expect(fizzBuzzN(4)).to eq("4")
  end

  it 'should print Fizz for multiples of 3' do
    expect(fizzBuzzN(3)).to eq("Fizz")
    expect(fizzBuzzN(6)).to eq("Fizz")
  end

  it 'should print Buzz for multiples of 3' do
    expect(fizzBuzzN(5)).to eq("Buzz")
    expect(fizzBuzzN(10)).to eq("Buzz")
  end

  it 'should print FizzBuzz for multiples of 3 and 5' do
    expect(fizzBuzzN(15)).to eq("FizzBuzz")
    expect(fizzBuzzN(30)).to eq("FizzBuzz")
  end


  it 'should print numbers, fizz and buzz' do
    expect(fizzBuzz(15)).to start_with("1\n2\nFizz").and(end_with("14\nFizzBuzz"))
  end
end
```

As we can see, using immutable value objects got us rid of the mocks. Obviously, this new code will not be as efficient as the original version, but most of the time, this does not matter. As a bonus though we get finer grain and more readable tests.

### Other testing advantages

Appart from preventing mocks, Immutable Value Objects have other advantages related to testing.

*   We can directly assert their equality, without having to dig into their guts
*   We can call methods as many times as we want, without the risk of changing anything and breaking the tests
*   Immutable Value Objects are a lot less likely to contain invalid state. This removes the need for a whole range of validity tests.

> 💡 Immutable Value Objects simplify testing in many ways.

### Convincing your teammates

We've seen that Immutable Value Objects have a ton of advantages when testing. People have found that they also have many other benefits :

*   [6 Benefits of Programming with Immutable Objects in Java](https://www.linkedin.com/pulse/20140528113353-16837833-6-benefits-of-programming-with-immutable-objects-in-java/)
*   [5 Benefits of Immutable Objects Worth Considering for Your Next Project](https://hackernoon.com/5-benefits-of-immutable-objects-worth-considering-for-your-next-project-f98e7e85b6ac)

Surprisingly though, it's difficult to persuade programmers to use more immutability. It's tricky to explain why returning a modified copy is simpler than just adding a setter.

> 💡 Why is it so hard to persuade other developers to use immutable data structures ?

I had the most success by far when encountering a bug resulting of share mutable state. When this happens, the long term benefits and safety of the immutable design wins people over. The good thing is that as you convince more people in the team, immutability will spread like a virus !

Outside of this situation, you might try some of the following arguments to move people :

*   Immutable values prevent bugs caused by different parts of the system changing the same mutable state
*   They make it easier to deal with the program in smaller parts and to reason about the system in general
*   Immutable values don't need any synchronization and make multithreaded programming easier
*   When tempted to add a simple setter instead of keeping a class immutable, highlight the stressful debugging time to come
*   If you're dealing with a Design By Contract adept, explain how [immutability has it built-in](/almost-15-years-of-using-design-by-contract/)
*   Admit that mainstream languages have bad support for Immutable Value. Point to patterns like [Data Builders](https://dzone.com/articles/immutability-with-builder-design-pattern) that work around these limitation

## Next post

I'm done with immutable value objects. It was a far longer post than I thought, but there was a lot to say. This was the third post in a [series about avoiding mocks](/blog/categories/how-to-avoid-mocks-series/). In next post, I'll dig into another small scale mock fighting pattern : [Test Data Builders](http://www.natpryce.com/articles/000714.html).

[Stay tuned !](https://feedburner.google.com/fb/a/mailverify?uri=PhilippeBourgau&loc=en_US) !
    