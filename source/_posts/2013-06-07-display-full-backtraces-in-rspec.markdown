---
keywords: "ruby, rspec, testing, Display, backtraces"
layout: post
title: "Display full backtraces in rspec"
published: true
date: 2013-06-07 06:51
comments: true
categories:
- ruby
- rspec
- testing
---
I use [rspec](http://rspec.info/) a lot. I thinks it's a great testing framework.

In order to get shorter error output, rspec cleans backtraces from outside code. Here are all the patterns that are removed from the full backtrace :

```ruby
DEFAULT_BACKTRACE_PATTERNS = [
  /\/lib\d*\/ruby\//,
  /org\/jruby\//,
  /bin\//,
  %r|/gems/|,
  /spec\/spec_helper\.rb/,
  /lib\/rspec\/(core|expectations|matchers|mocks)/
]
```

Most of the time, that's great. Sometimes though, we get messages that seem completly unrelated to the code. Even worse, we might get misleading messages, such as "method called with unexpected number of arguments" that does not refer to the code in the backtrace, but to some other library code ...

I thought it would be nice if we could switch this cleaning off sometimes. Here is how I did this :

```ruby
RSpec.configure do |config|

  # RSpec automatically cleans stuff out of backtraces;
  # sometimes this is annoying when trying to debug something e.g. a gem
  if ENV['FULLBACKTRACES'] == 'true'
    config.backtrace_clean_patterns = []
  end

  # some other configuration here

end
```

This way, it is still possible to call rspec as before to get the standard behaviour, but it is now possible to specify the FULLBACKTRACES variable to get full backtraces.

```
FULLBACKTRACES=true bundle exec rspec spec
```
