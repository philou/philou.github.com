---
layout: single-mailing-list
title: "How to use Test Data Builders to avoid mocks and keep your tests clear"
date: 2018-05-10 09:56
comments: true
categories:
 - tdd
 - mocking
 - testing
 - programming
 - ruby
 - how-to-avoid-mocks-series
keywords: "Mocks, Unit Testing, Automated Testing, TDD, Test Driven Development, London School of Testing, Mocking, Test Data Builders, Data Builders, Test Data, Test Setup, Ruby"
description: "An explanation of how Test Data Builders prevent excessive mocking. Code examples in Ruby are presented to illustrate the point."
header:
  og_image: /imgs/2018-05-01-how-to-use-test-data-builders-to-avoid-mocks-and-keep-your-tests-clear/crate.jpg
---
We are sometimes tempted to use mocks to shortcut test data initialization. Unfortunately, excessive mocking makes tests difficult to maintain. As [Uncle Bob explained](https://blog.cleancoder.com/uncle-bob/2017/05/05/TestDefinitions.html), it's a road that leads to giving up on tests.

Hopefully, [Test Data Builders](http://www.natpryce.com/articles/000714.html) both shortcut test data setup and avoid mocks.

![Drawing of a crate]({{site.url}}{{site.baseurl}}/imgs/2018-05-01-how-to-use-test-data-builders-to-avoid-mocks-and-keep-your-tests-clear/crate.jpg)

This is the fourth post [of a series about how to avoid mocks]({{site.baseurl}}/categories/#how-to-avoid-mocks-series) in automated tests. If you haven't yet, I recommend you to start from [the beginning](/careless-mocking-considered-harmful/).

## The problem with test data initialization

Setting up the correct state for automated tests can be pretty verbose. This is especially true for software in complex domains or code with a lot of side effects.

The situation gets worse as tests need to setup similar but not exactly identical data. What I often see in code bases is a lot of test data setup duplication. For example, here are tests for a basic ticketing system.

```ruby
require 'rspec'
require 'date'

describe 'Ticket Tracking' do
  context "with test setup duplication" do

    it 'latest change date is the creation date when nothing changed' do
      creation_time = DateTime.new(2018,4,26,13,9,0)

      ticket = Ticket.new("Widget broken", "The widget is not loading when ...", "Philippe", creation_time)

      expect(ticket.latest_change).to be(creation_time)
    end

    it 'latest change date is the comment date when a comment is written' do
      ticket = Ticket.new("Widget broken", "The widget is not loading when ...", "Philippe", DateTime.new(2018, 4, 26, 13, 9, 0))
      comment_time = DateTime.new(2018, 4, 26, 13, 16, 0)

      ticket.add_comment(Comment.new("Should work now", "Dan", comment_time))

      expect(ticket.latest_change).to be(comment_time)
    end

    it 'latest change date is the comment date of the latest comment' do
      ticket = Ticket.new("Widget broken", "The widget is not loading when ...", "Philippe", DateTime.new(2018, 4, 26, 13, 9, 0))
      ticket.add_comment(Comment.new("Should work now", "Dan", DateTime.new(2018, 4, 26, 13, 16, 0)))
      comment_time = DateTime.new(2018, 4, 26, 18, 36, 0)

      ticket.add_comment(Comment.new("Should work now", "Dan", comment_time))

      expect(ticket.latest_change).to be(comment_time)
      end

    it 'latest change date is time of latest change if after comment' do
      creation_time = DateTime.new(2018, 4, 26, 13, 9, 0)
      ticket = Ticket.new("Widget broken", "The widget is not loading when ...", "Philippe", creation_time)
      ticket.add_comment(Comment.new("Should work now", "Dan", DateTime.new(2017, 4, 26, 13, 16, 0)))

      expect(ticket.latest_change).to be(creation_time)
    end
  end
end


## The code under test
##
class Ticket

  def initialize(title, description, reporter, creation_time)
    @updated_at = creation_time
    @comments = []
  end

  def latest_change
    ([@updated_at] + @comments.map(&:created_at)).max
  end

  def add_comment(comment)
    @comments.push(comment)
  end
end

class Comment
  attr_reader :created_at
  def initialize(message, author, time)
    @created_at = time
  end
end

```

It's clear that there's a huge amount of duplication in the tests data setups.

The straightforward fix against that is method extraction. This is the [Object Mother pattern](https://martinfowler.com/bliki/ObjectMother.html). Unfortunately, Object Mother breaks down under the number of variations. Every time you need a new change, you'll add a parameter to the Object Mother method. Long story short, you'll end up with code like that :

```ruby
describe 'Ticket Tracking' do
  context "with object mother" do

    it 'latest change date is the creation date when nothing changed' do
      creation_time = DateTime.new(2018, 4, 26, 13, 5, 0)
      ticket = create_ticket(creation_time, [])

      expect(ticket.latest_change).to be(creation_time)
    end

    it 'latest change date is the comment date when a comment is written' do
      comment_time = DateTime.new(2018, 4, 26, 13, 16, 0)
      ticket = create_ticket(DateTime.new(2018, 4, 26, 13, 9, 0), [comment_time])

      expect(ticket.latest_change).to be(comment_time)
    end

    it 'latest change date is the comment date of the latest comment' do
      comment_time = DateTime.new(2018, 4, 26, 18, 36, 0)
      ticket = create_ticket(DateTime.new(2018, 4, 26, 13, 9, 0),
                             [DateTime.new(2018, 4, 26, 13, 16, 0), comment_time])

      expect(ticket.latest_change).to be(comment_time)
    end

    it 'latest change date is time of latest change if after comment' do
      creation_time = DateTime.new(2018, 4, 26, 13, 9, 0)
      ticket = create_ticket(creation_time,[DateTime.new(2017, 4, 26, 13, 16, 0)])

      expect(ticket.latest_change).to be(creation_time)
    end

    def create_ticket(creation_time, comment_times)
      ticket = Ticket.new("Widget broken", "The widget is not loading when ...", "Philippe", creation_time)
      comment_times.each do |comment_time|
        ticket.add_comment(Comment.new("Should work now", "Dan", comment_time))
      end
      return ticket
    end
  end

end
```

As you can see, we have less duplication, but the tests got both unreadable and intricate ... Following [my advices](/how-immutable-value-objects-fight-mocks/) and using more [Immutable Value Objects](https://martinfowler.com/bliki/ValueObject.html) makes the situation worse ! When data is mutable, we can customize it after the call to the Object Mother method. If data is immutable, it all has to be setup at initialization ...

That's when the mock temptation strikes. Sometimes it's so much easier to mock a method rather than to initialize your data properly. It can be 1 line of mock instead of dealing with all this mess.

> 💡 If you are not careful, messy test initialization code will trick you into using mocks.

Suppose we now want to make sure we can't add comments that were written before the ticket was created. We'll add the following

```ruby
describe 'Ticket Tracking' do
  # ...
  it "is not possible to insert a comment before creation data" do
    ticket = create_ticket(DateTime.new(2018, 4, 26, 13, 9, 0), [])
    expect do
      ticket.add_comment(Comment.new("Should work now", "Dan", DateTime.new(2017, 4, 26, 13, 9, 0)))
    end.to raise_error(ArgumentError)
  end
end
# ...
class Ticket
  # ...
  def add_comment(comment)
    raise ArgumentError unless @updated_at < comment.created_at

    @comments.push(comment)
  end
  # ...
end

```

Unfortunately, one test (`latest change date is time of latest change if after comment`) where we were doing just this, will now fail. The fix would be to find a real situation for this test. Here this could be that the ticket is modified after the latest comment. If the tests are too messy though, a mock can be a quick and dirty fix the setup and make the test pass :

```ruby
it 'latest change date is time of latest change if after comment' do
  creation_time = DateTime.new(2018, 4, 26, 13, 9, 0)
  ticket = create_ticket(creation_time, [])
  comment = Comment.new("Should work now", "Dan", DateTime.new(2018, 4, 26, 13, 16, 0))
  ticket.add_comment(comment)
  allow(comment).to receive(:created_at).and_return(DateTime.new(2017, 4, 26, 13, 16, 0))

  expect(ticket.latest_change).to be(creation_time)
end
```

There is a third way : Test Data Builders

## What are test data builders

As often, when design is not satisfying, adding an indirection solves the issue. Here the indirection takes shape of the Builder pattern.

> _Builder Pattern [_[_Wikipedia_](https://en.wikipedia.org/wiki/Builder_pattern)_] :_

> The intent of the Builder design pattern is to separate the construction of a complex object from its representation. By doing so the same construction process can create different representations.

The idea is to use the builder pattern to build the test data. [Growing Object Oriented Software Guided by Tests](https://www.amazon.com/Growing-Object-Oriented-Software-Guided-Tests/dp/0321503627/ref=sr_1_1?ie=UTF8&qid=1525160355&sr=8-1&keywords=growing+object-oriented+software+guided+by+tests) covers this technique in great length.

[![Cover of the book Growing Object Oriented Software Guided By Tests]({{site.url}}{{site.baseurl}}/imgs/2018-05-01-how-to-use-test-data-builders-to-avoid-mocks-and-keep-your-tests-clear/growing.jpg)](https://www.amazon.com/Growing-Object-Oriented-Software-Guided-Tests/dp/0321503627/ref=sr_1_1?ie=UTF8&qid=1525160355&sr=8-1&keywords=growing+object-oriented+software+guided+by+tests)

Here is the previous code re-written using the test data builder pattern.

```ruby
require 'rspec'
require 'date'

describe 'Ticket Tracking' do
  context "with test data builders" do

    before :each do
      @t = date_times.build
    end

    it 'latest change date is the creation date when nothing changed' do
      ticket = a_ticket.at(@t[0]).build

      expect(ticket.latest_change).to be(@t[0])
    end

    it 'latest change date is the comment date when a comment is written' do
      ticket = a_ticket
                   .at(@t[0])
                   .with_comment(a_comment.at(@t[1]))
                   .build

      expect(ticket.latest_change).to be(@t[1])
    end

    it 'latest change date is the comment date of the latest comment' do
      ticket = a_ticket
                   .at(@t[0])
                   .with_comment(a_comment.at(@t[1]))
                   .with_comment(a_comment.at(@t[2]))
                   .build

      expect(ticket.latest_change).to be(@t[2])
    end

    it 'latest change date is time of latest change if after comment' do
      ticket = a_ticket.at(@t[0])
                   .with_comment(a_comment.at(@t[1]))
                   .build

      ticket.update_description("The widget is not loading when logged in as anonymous", @t[2])

      expect(ticket.latest_change).to be(@t[2])
    end

    it "is not possible to insert a comment before creation data" do
      ticket = a_ticket.at(@t[1]).build

      expect do
        ticket.add_comment(a_comment.at(@t[0]).build)
      end.to raise_error(ArgumentError)
    end
  end
end

## Test Data Builders
##
class DateTimeBuilder
  def build
    seed = DateTime.now
    (0..10).map {|i| seed + i}
  end
end
def date_times()
  DateTimeBuilder.new
end

class CommentBuilder
  def initialize
    @at = DateTime.now
  end
  def at(time)
    @at = time
    self
  end
  def build
    Comment.new("Should work now", "Dan", @at)
  end
end
def a_comment()
  CommentBuilder.new
end

class TicketBuilder
  def initialize
    @at = DateTime.now
    @comments = []
  end
  def at(time)
    @at = time
    self
  end
  def with_comment(comment_builder)
    @comments.push(comment_builder.build)
    self
  end
  def build
    ticket = Ticket.new("Widget broken", "The widget is not loading when ...", "Philippe", @at)
    @comments.each do |comment|
      ticket.add_comment(comment)
    end
    ticket
  end
end
def a_ticket()
  TicketBuilder.new
end

## The code under test
##
class Ticket

  def initialize(title, description, reporter, creation_time)
    @updated_at = creation_time
    @comments = []
  end

  def latest_change
    ([@updated_at] + @comments.map(&:created_at)).max
  end

  def add_comment(comment)
    raise ArgumentError unless @updated_at < comment.created_at

    @comments.push(comment)
  end

  def update_description(description, update_time)
    @updated_at = update_time
  end
end

class Comment
  attr_reader :created_at

  def initialize(message, author, time)
    @created_at = time
  end
end
```

As you can see, it provides default test values, and we only need to provide the custom values we care about. This makes the test code both readable and intention revealing. Making the tests more understandable helps a lot to find ways to avoid mocks. Here, we replaced the mock on the comment time by an update to the ticket after the last comment.

The pattern applies in many languages, even if implementations will be different. In Ruby, libraries like [factory_bot](https://github.com/thoughtbot/factory_bot) avoid a lot of boilerplate code. Have a look at [this article](http://www.natpryce.com/articles/000769.html) for examples in Java.

## Other advantages

Test data builders have another second effect benefit. When setting up the data is complicated, we are likely to add more that one assertion in a test. Unit tests can end up looking like a mini scenario to avoid duplicating this test setup.

It's easy to create a specific tests for every assertion with Test Data Builders. By doing so we get smaller and more focused tests, which bring :

*   Better names for tests
*   More readable tests
*   Faster diagnostic of the problem when a particular test fails
*   🎁 Better coverage ! In a large test, all assertions work on the same input values. When we have many small tests, we can use a different value in each.

> 💡 By simplifying the creation of new tests with different data, Test Data Builders increase code coverage in the long term!

## Next week

This is the fourth post of [a series about how to avoid mocks]({{site.baseurl}}/categories/#how-to-avoid-mocks-series) in automated tests. Next week I'll dig into Custom Assertion Matchers and how they avoid mock expectations.
