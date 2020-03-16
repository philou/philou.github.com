---
keywords: "RSpec, ruby, testing, gem, open source, Matchers, Combinators, spec_combos"
layout: single-mailing-list
title: "RSpec Matchers Combinators 2 : spec_combos gem"
date: 2013-09-25 21:29
comments: true
categories:
 - rspec
 - ruby
 - testing
 - gem
 - open source
published: true
---
I already wrote about my [RSpec Matchers Combinators](/rspec-matchers-combinators/), I decided to extract them into the [spec_combos](https://github.com/philou/spec_combos) gem.

To use it, just add the following to your Gemfile :

```ruby
gem 'spec_combos', :group => 'test'
```

Compared to the first version of the matchers, I added better error messages. For example, consider the following complex nested assertion :

```ruby
expect([1,2,3]).to all_{and_(be_odd, be_instance_of(Fixnum))}
```

It outputs the following error :

```text
Failure/Error: expect([1,2,3]).to all_{and_(be_odd, be_instance_of(Fixnum))}
  expected [1, 2, 3] to all be odd and be an instance of Fixnum, but the following were not:
    [1] (2): expected 2 to be odd and be an instance of Fixnum, but:
      expected odd? to return true, got false
```

I hope this might help !
