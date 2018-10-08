---
keywords: "RSpec, ruby, testing, matchers, combinators"
layout: single
title: "RSpec matchers combinators"
date: 2013-09-11 12:23
comments: true
categories:
 - rspec
 - ruby
 - testing
published: true
---
[Rspec matchers](http://rubydoc.info/gems/rspec-expectations) are a lot like predicates. Predicates that can talk ... The good thing about predicates, as anybody who has done a bit of functional programming will tell you, is that they are easy to combine together into bigger predicates. I was really suprised to see that rspec does not come with such simple combinators as 'and' or 'or'.

Here is a gist where I define simple combinators :

<script src="https://gist.github.com/philou/6521797.js"></script>

With this and the [email_spec](https://github.com/bmabey/email-spec) matchers, it is possible to write something like this to find if an email was sent by rails :

```ruby
expect(all_emails).to have_any_that(and_(deliver_to(receiver),
                                         have_subject(subject),
                                         have_body_text(body)))
```

It enables expressive test code and high reusability.

Using the 'all' combinator it is possible to write things like that :

```ruby
expect(sample_items_attributes).to all_ have_key(:price)
```

I had to prepend 'all' and 'and' with an underscore because I would otherwise get conflicts... I'm not overly satisfied with this, but it will do for the moment.

I was happily supprised by the readability of error messages when the mach fails. Rspec does a very good job about this. I think it would be possible to get even better error messages by explicity using the sub matchers messages though. If anyone is interested, help yourself !
