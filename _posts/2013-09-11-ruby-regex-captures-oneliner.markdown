---
keywords: "Ruby, regex, captures, oneliner"
layout: single-mailing-list
title: "Ruby regex captures oneliner"
date: 2013-09-11 09:02
comments: true
categories:
 - ruby
 - regex
published: true
---
Surely this post is nothing new for experienced ruby developpers, but I found it so handy, that I thought it deserved a post of its own though. The problem is :

> How do I match and assign captures from a regex in a single line of code ?

Here is the idea :

```ruby
> brand, item = /([^,]*), (.*)/.match("APPLE, ipad").captures
=> ["APPLE", "ipad"]
> brand
=> "APPLE"
> item
=> "ipad"
```

There are a few variations around this, like grouping some catpures in an array :

```ruby
> brand, *details = /([^,]*), ([^:]*): (.*)/.match("APPLE, ipad: iOs").captures
=> ["APPLE", "ipad", "iOs"]
> brand
=> "APPLE"
> details
=> ["ipad", "iOs"]
```

Or to ignore some capture, we could shorten skip some captures :

```ruby
> item, details = /([^,]*), ([^:]*): (.*)/.match("APPLE, ipad: iOs")[2..-1]
=> ["ipad", "iOs"]
> item
=> "ipad"
> details
=> "iOs"
```

But this only works for first or last captures, when this is not the case, one can also use the functional programming '_' sink convention :

```ruby
> brand, _, details = /([^,]*), ([^:]*): (.*)/.match("APPLE, ipad: iOs").captures
=> ["APPLE", "ipad", "iOs"]
> brand
=> "APPLE"
> details
=> "iOs"
```

One can even use '_' multiple times on the same match

```ruby
> _, _, details = /([^,]*), ([^:]*): (.*)/.match("APPLE, ipad: iOs").captures
=> ["APPLE", "ipad", "iOs"]
> details
=> "iOs"
```

I hope this helps.
