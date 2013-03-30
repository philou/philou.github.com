---
layout: post
title: Order of execution of before blocks in RSpec
published: true
date: 2012-01-05
categories:
- rspec
- ruby
posterous_url: http://philippe.bourgau.net/order-of-execution-of-before-blocks-in-rspec
posterous_slug: order-of-execution-of-before-blocks-in-rspec
---
<p>I discovered that before blocks in RSpec's examples are executed in the order they are declared. There is no great deal about it, but it can be useful when using shared examples.<br />In rspec 1.3.8, it is possible to simulate shared examples with parameters by using instance variables instead. This is were it gets useful to know the order of evaluation of before blocks. As an example :<p /> 
```




shared_example_for "anything" do
&nbsp; before :each do
&nbsp;&nbsp;&nbsp; @thing.should_not be_nil
&nbsp; end
end

describe "A monkey wrench" do
&nbsp; it_should_behave_like "anything"
 &nbsp; before :each do
&nbsp;&nbsp;&nbsp; @thing = MonkeyWrench.new
&nbsp; end
end


```
<p />The previous example will fail, whereas the next one will succeed.<p /> 
```



describe "A monkey wrench" do
 &nbsp; before :each do
 &nbsp;&nbsp;&nbsp; @thing = MonkeyWrench.new
 &nbsp; end
 &nbsp; it_should_behave_like "anything"
 end


```
<p />That is the before blocks nested in shared examples still evaluate in the order of declaration.</p>
