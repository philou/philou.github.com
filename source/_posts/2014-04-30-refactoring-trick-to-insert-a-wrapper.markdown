---
layout: post
title: "Refactoring trick to insert a wrapper"
date: 2014-04-30 08:01
comments: true
categories:
 - refactoring
 - anticorruption layer
 - mikado-method
keywords: "refactoring, agile, software, agile software, craftsmanship, software craftsmanship, wrapper, anticorruption layer"
description: "Summary of a refactoring trick that save a lot of time when creating a wrapper around an existing class"
---
Last week at work, we decided that we needed an [Anticorruption Layer](http://stackoverflow.com/questions/909264/ddd-anti-corruption-layer-how-to) between our code and another team's. They have been using our internal data structures as they needed to, in an ad hoc way. This turned out to be an issue when we want to refactor our code. The goals of this layer are :

* to provide an explicit API layer, controlling what is accessible from the outside
* to allow us to improve our implementation independently of this API

The first step all the team agreed on is to provide direct wrappers around our classes. Unfortunately, some of these classes had more than a thousand references to it and our IDE does not provide any automated refactoring for this (introduce a wrapper class, and only use it in some part of the code). We found a trick ! Here it is :

1. Make sure you have a clean SCC state
2. Rename the class to be wrapped (let's call it Foo) into FooWrapper
3. From SCC, revert the part of the code where you want to continue using Foo directly
4. In SCC, revert Foo and FooWrapper
5. Manually (re)create the FooWrapper class
6. Create FooWrapper.wrap(x) and FooWrapper.unwrap(x) methods
7. Fix all the compilation issues (mostly by calling wrap() and unwrap())
8. Run your tests and fix any remaining points

That saved us a whole lot of time. If your layer contains several classes with references between them, they is an optimal order through which to introduce the wrappers. Any order will work, but some will require more temporary calls to wrap and unwrap (step 7.). At the end, wrap() and unwrap() methods should only be called from within the layer.

Often you'll find out that to complete the wrapping of a class, you'll first need to wrap another class, you can :

* Follow the mikado method strictly : upgrade your mikado graph, revert all your changes, and try to wrap this other class. It can seem slow, but it is completely incremental
* Wrap the 2 classes at the same time : this is the best way when wrapping this other class is rather straightforward
* Insert temporary calls to wrap() and unwrap() : they'll be removed when you'll later wrap the other class. This might be the only way if the classes have cyclic dependencies.

