---
keywords: "Rspec, ruby, messes, stubs, expectations"
layout: single
title: Rspec messes up stubs and expectations
published: true
date: 2011-10-20
categories:
- rspec
- ruby
posterous_url: http://philippe.bourgau.net/rspec-messes-up-stubs-and-expectations
posterous_slug: rspec-messes-up-stubs-and-expectations
comments: true
---
<p>Here is an example showing the issue :<p />
```ruby
before :each do
  @car = stub("a car")
  @car.stub(:move)
end
it "should be possible to mix stubbing and expectations" do
  @car.should_receive(:move).once

  2.times { @car.move }
end
```
<p />This example should obviously fail, but it passes ! Here is a working (failing) version :<p />
```ruby
before :each do
  @car = stub("a car")
 end
it "should be possible to mix stubbing and expectations" do
  @car.should_receive(:move).once

  2.times { @car.move }
end
```
<p /> I am using rspec 1.3.0. Did you fall into the same issues ? Is this fixed in rspec 2 ?</p>
