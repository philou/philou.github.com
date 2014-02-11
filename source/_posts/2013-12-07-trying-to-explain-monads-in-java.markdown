---
keywords: "functional programming, monads, kata, Trying, explain, java"
layout: post
title: "Trying to explain monads in java"
date: 2013-12-07 07:37
comments: true
categories:
 - functional programming
 - monads
 - kata
published: true
---
A few days ago, a colleague currently taking [the coursera course about reactive programming in scala](https://www.coursera.org/course/reactive), asked me to explain him what monads are. It's always a tough question, and I rarely manage to give un understandable answer simply. This time though, I kind of managed to pass him some understanding of monads :

1. When modelising a statefull data structure with immutable constructs, one has to pass in and return the data structure state of every function
2. This results in a lot repeated code to pass this state around
3. With a monad, you can factorize this glue code and only write the 'real' code

I thought it might be a good subject for a java kata ! This is what I tried to do in [java-monads-kata](https://github.com/philou/java-monads-kata). Here is some sample monadic code from the kata itself :

```java
@Test public void
pops_objects_in_reverse_push_order() {
  monad = monad.
    bind(push(A)).
    bind(push(B)).

    bind(pop());

  assertEquals(B, monad.value);

  monad = monad.bind(pop());
  assertEquals(A, monad.value);

  assertEquals(empty(), monad.stack);
}
```

You can have a look at all [the final code](https://github.com/philou/java-monads-kata), or [go through the whole history](https://github.com/philou/java-monads-kata/commits/master) to get the 'kata' feeling. It's a shame Github does not offer a nice chronological repo history slideshow, for better experience, I recommend that you use Chrome with [Github improved](https://chrome.google.com/webstore/detail/github-improved/nkbnmpfpclijlllipmfbkkednidgngaa) : this allows to view diffs right from the Github history.

The resulting code is still quite far from a [Haskell monad](http://www.haskell.org/haskellwiki/Monad) :

* Functions are not first class objects in Java. It is written in Java 7, without lambda, which does not help neither.
* Java does not have Haskell type class polymorphism, but only supports OO polymorphism and very little covariance
* The whole monad thing, designed at simulating/isolating side effects has a WTF feel in Java where side effects are just everywhere

I'd love to hear some feedback about it.