---
layout: post
title: "Most Common Ways To Speed up an algorithm"
date: 2016-01-20 05:14
comments: true
categories:
  - performance
  - algorithms
  - ruby
keywords: "Performance, Algorithms, Algorithm Performance, Performance Sheatsheet, Performance Crash Course, Algorithm Cheatsheet"
description: "4 practical tricks about how to tune algorithm without having to dig too deep in theory"
---
Algorithms are *hard*, and making them fast is even harder ... But there are shortcuts that work quite often !

{% img center /imgs/2016-01-20-most-common-ways-to-speed-up-an-algorithm/shortcut-road.jpg A street panel called Short Cut Road %}

## The Challenge

Imagine you just arrived to your new job, and you are asked to make a part of the system faster. After a bit of investigation, you discover that most of the time is spent in some weird in-house algorithm that seems to take forever. How can you optimize this without deep knowledge neither in algorithm science nor in the code itself ?

Here are 4 tricks to reduce the complexity of algorithms (I'm using fairly basic examples for the sake of understandably. Most of these exact examples could be done better using standard libraries, but I hope it will be easy to adapt to other situations) :

### Replace a nested loop by first building a hash and then looping

```ruby
# before
orders.each do |order|
  client = list_of_clients.find {|client| client.id = order.client_id }
  handle_order(order, client)
end

# after
clients_by_id = {}
list_of_clients.each do |client|
  clients_by_id[client.id] = client
end
orders.each do |order|
  handle_order(order, clients_by_id[order.client_id])
end
```
This reduces the complexity from O(2) to O(1). This is tremendous. On large lists O(2) algorithms are terrible.

### Remove unnecessary accumulations

The most classic example is the use of a string buffer :

```ruby
// Before
report = ""
line_items.each do |line_item|
  report += line_item.to_s + "\n"
end

// After
report = []
line_items.each do |line_item|
  report << line_item.to_s
  report << "\n"
end
report.join
```
Again, this reduces the complexity from O(2) to O(1). Every language has variants of Java's StringBuilders. This does not only apply for strings, it works any time you are repeatedly accumulating results inside a loop but where you could do it only once at the end.

### Cache intermediate or previous results

This is called [memoization](https://en.wikipedia.org/wiki/Memoization). Some algorithms (especially recursive algorithms) repeatedly compute the same thing again and again. Spotting this pattern is an opportunity to move an algorithm out of exponential complexity. For example, [Dijsktra's algorithm](https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm) for finding the shortest path in a graph uses this technique to go from O(e<sup>n</sup>) to O(n<sup>2</sup>) complexity. If you suspect this could be helpful, your best friend is logging to trace actual parameters and results.

[{% img center /imgs/2016-01-20-most-common-ways-to-speed-up-an-algorithm/Dijkstras_progress_animation.gif Dijsktra's path finding algorithm animated (from Wikipedia) %}](https://en.wikipedia.org/wiki/Dijkstra%27s_algorithm#/media/File:Dijkstras_progress_animation.gif)

A word of caution : using memoization with mutable inputs or outputs will harm your mental health.

### [Zip merge](https://en.wikipedia.org/wiki/Merge_algorithm#Merging_two_lists)

There are 2 ways to merge sorted lists into a unique sorted list : the fast, and the slow ...

```ruby
# The slow
(list_1 + list_2).sort

# The fast
i_1 = 0
i_2 = 0
result = []

while i_1 < list_1.size and i_2 < list_2.size
  if list_1[i_1] <= list_2[i_2]
    result << list_1[i_1]
    i_1 += 1
  elsif list_2[i_2] <= list_1[i_1]
    result << list_2[i_2]
    i_2 += 1
  end
end

while i_1 < list_1.size
  result << list_1[i_1]
  i_1 += 1
end

while i_2 < list_2.size
  result << list_2[i_2]
  i_2 += 1
end
```

Obviously, the slow version is a lot easier to read than the fast one. And the fast one could benefit from a bit of refactoring also ... Nevertheless, the slow version is at best in O(n.ln(n)) whereas the fast on is in O(n). On large data, that can make a big difference.

## Is that all ?

Obviously not, there can be a lot of other things going on slowly in algorithms, but from my experience, a software engineer can have a good career without knowing more about algorithms theory than that.

In the end, you manage to optimize this in-house algorithm, you become the company's hero, you need your job and get a pay raise !

## End word

The fact is, in 15 years of writing software, I did not write a lot of algorithmic code. I can categories my working with algorithms in 3 :

1. Write a simple algorithm for a non performance critical feature
2. Optimize an existing somewhat algorithmic part of code
3. Write a complex algorithm for a performance critical part of the system

Case 1. is not really an issue since however the code will be written, it will run fast enough. If you're in case 3, there's no shortcut, you'll have to dig deep into algorithms and optimization, this happens rather rarely though. This leaves us with case 2, which I just wrote about.

Interestingly, [my current job](http://www.murex.com) is deep into case 3 ! We're building a risk engine for corporate markets and are borrowing a lot of techniques from database science ... which is, you can guess, rather algorithmic !
