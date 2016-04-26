---
keywords: "ruby, testing, cucumber, BDD, Dont, repeat, names, scenarios"
layout: post
title: "Don't repeat names in cucumber scenarios"
date: 2013-05-09 08:35
comments: true
categories:
- ruby
- testing
- cucumber
- BDD
---
**Update 06/12/2014: I created a [gem](https://github.com/philou/cucumber_tricks) for this and other things, read an introduction [here](http://philippe.bourgau.net//)**

When the same name is repeated all over the place in a cucumber scenario, it can be difficult to read.
```gherkin
Scenario: Withdrawing some cash
  Given a deposit account with 1000€
  When I withdraw 100€ from the deposit account
  Then there should be 900€ on the deposit account
```
It would be better if we could write it like that
```gherkin
Scenario: Withdrawing some cash
  Given a deposit account with 1000€
  When I withdraw 100€ from the account
  Then there should be 900€ on the account
```
Sometimes we actually want to repeat the names though, either for clarity, or if we are dealing with many accounts within the same scenario.

To make both my scenarios more readable and my steps more versatile, I created special main_account_name accessors and a custom transform.
```ruby
def main_account_name
  @main_account_name ||= "credit"
end
def main_account_name=(account_name)
  @main_account_name ||= account_name
end

CAPTURE_ACCOUNT_NAME = Tranform(/^(a|an|the) *(.*) account$/) do |_prefix, account_name|
  if account_name == ""
    main_account_name
  else
    account_name
  end
end
```
When creating the account, I added some code to set the main_account_name
```ruby
Given(/^(#{CAPTURE_ACCOUNT_NAME}) with (\d+)€$/) do |account_name, amount|
  ...
  self.main_account_name= account_name
end
```
It is then possible to write steps like
```
When(/^I withdraw (\d+)€ from (#{CAPTURE_ACCOUNT_NAME})$/) do |amount, account_name|
  ...
end
```
that will match both "the deposit account" and "the account" depending on context.

It would be really nice to be able to write things like
```gherkin
  Then there should be 900€ on it
```
but because of the [way cucumber handles transforms](/if-new-cucumber-transform-breaks-everyhing-dot-dot-dot/), the only way I know to do that is to write a new step definition.


