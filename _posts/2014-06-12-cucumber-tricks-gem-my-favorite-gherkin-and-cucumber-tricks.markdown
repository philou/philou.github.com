---
layout: single-mailing-list
title: "Cucumber_tricks gem : my favorite Gherkin and Cucumber tricks"
date: 2014-06-12 06:28
comments: true
categories:
 - ruby
 - cucumber
 - testing
 - gem
keywords: "cucumber, ruby, gherkin, testing, BDD, ruby gem"
description: "Presentation of the cucumber_tricks gem, which provides simple but usefull cucumber and gherkin extensions in order to write more english like scenarios"
---
I just compiled my Gherkin and Cucumber goodies into a gem. It's called [cucumber_tricks](https://rubygems.org/gems/cucumber_tricks) and the source code can be found on [github](https://github.com/philou/cucumber_tricks). It's also tested on [travis](https://travis-ci.org/philou/cucumber_tricks) and documented in details on [relish](https://www.relishapp.com/philou/cucumber-tricks/docs).

The goal of all these tricks is to be able to write more natural english scenarios. Here is an extract from the readme of the gem, which explains what it can do :

### Use pronouns to reference previously introduced items

foo.feature

```gherkin
Given the tool 'screwdriver'
When this tool is used
```

steps.rb

```ruby
A_TOOL = NameOrPronounTransform('tool', 'hammer')

Given /^(#{A_TOOL})$/ do |tool|
  ...
end
```

### Use the same step implementation to handle an inline arg as a 1-cell table

steps.rb

```ruby
GivenEither /^the dog named "(.*)"$)$/,
            /^the following dogs$/ do |dogs_table|
  ...
end
```

foo.feature

```gherkin
Given the dog "Rolphy"
...
Given the following dogs
  | Rex  |
  | King |
  | Volt |
```

### Add default values to the hashes of a table

foo.feature

```gherkin
Given the following dogs
  | names | color |
  | Rex   | white |
  | King  | Sand  |
```

steps.rb

```ruby
Given /^the following dogs$$/ do |dogs|
  hashes = dogs.hashes_with_defaults('names', 'tail' => 'wagging', 'smell' => 'not nice')

#  hashes.each do |hash|
#    expect(hash['smell']).to eq('not nice')
#  end

  ...
end
```

### Define named lists from a table

foo.feature

```gherkin
Given the following dishes
  | Spaghetti Bolognaise | => | Spaghetti | Bolognaise sauce |       |         |
  | Burger               | => | Bread     | Meat             | Salad | Ketchup |
```

steps.rb

```ruby
Given /^the following dishes$$/ do |dishes|
  name_2_dishes = dishes.hash_2_lists

#  expect(name_2_dishes['Burger']).to eq(['Bread','Meat','Salad','Ketchup'])

  ...
end
```

Visit [relish](https://www.relishapp.com/philou/cucumber-tricks/docs) for more detailed documentation.
