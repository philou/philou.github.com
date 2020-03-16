---
keywords: "RSpec, ruby, Order, execution, before, blocks"
layout: single-mailing-list
title: Order of execution of before blocks in RSpec
published: true
date: 2012-01-05
categories:
- rspec
- ruby
posterous_url: http://philippe.bourgau.net/order-of-execution-of-before-blocks-in-rspec
posterous_slug: order-of-execution-of-before-blocks-in-rspec
comments: true
---
I discovered that before blocks in RSpec's examples are executed in the order they are declared. There is no great deal about it, but it can be useful when using shared examples.

In rspec 1.3.8, it is possible to simulate shared examples with parameters by using instance variables instead. This is were it gets useful to know the order of evaluation of before blocks. As an example :

```ruby
shared_example_for "anything" do
  before :each do
    @thing.should_not be_nil
  end
end

describe "A monkey wrench" do
  it_should_behave_like "anything"
   before :each do
    @thing = MonkeyWrench.new
  end
end
```

The previous example will fail, whereas the next one will succeed.

```ruby
describe "A monkey wrench" do
  before :each do
    @thing = MonkeyWrench.new
  end
  it_should_behave_like "anything"
end
```

That is the before blocks nested in shared examples still evaluate in the order of declaration.
