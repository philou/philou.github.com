---
layout: post
title: "If new cucumber transform breaks everyhing ..."
date: 2013-05-08 08:36
comments: true
categories:
- ruby
- cucumber
- testing
---
After reading [The cucumber book](http://pragprog.com/book/hwcuc/the-cucumber-book) I decided to add clever cucumber transforms but steps started to fail all over the place ... Even completly unrelated scenarios were failing ...

I should have read the [Cucumber transforms doc page](https://github.com/cucumber/cucumber/wiki/Step-Argument-Transforms) and particularly the "Transforms wisdom" section before anything, it would have been a real time saver. To summarise, when a step is executed, all transforms regexps are tried on the step captures, and the first matching transform is applied ! Inlining the transform global inside the step regex removes duplication, but in no way does it imply which transform will be applied !

For example

```ruby
CAPTURE_NUMBER = Transform /^.*$/ do |digits|
  Float(digits)
end

When /^I withdraw (#{CAPTURE_NUMBER}) from "([^"]+)"$/ do |amount, bank_name|
  bank = Bank.find_by_name(bank_name)
  bank.withdraw(amount)
end
```

will match the bank name with CAPTURE_NUMBER, and you'll get an "invalid value for Float" error.
