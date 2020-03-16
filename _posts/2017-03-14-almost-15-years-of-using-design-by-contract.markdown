---
layout: single-mailing-list
title: "Almost 15 years of using Design By Contract"
date: 2017-03-14 18:57
comments: true
categories:
 - programming
 - contracts
 - ddd
 - functional-programming
keywords: "Design by Contracts, Programming, Software, C++, Immutable Classes, Domain Driven Design, DDD, Refactoring"
description: "The story of how I discovered Design by Contracts, and how my use of it changed through time"
---
I first read about Design By Contract in 2002, in [Object Oriented Software Construction 2](https://www.amazon.com/Object-Oriented-Software-Construction-Book-CD-ROM/dp/0136291554/ref=sr_1_2?tag=pbourgau-20&amp;ie=UTF8&qid=1490073815&sr=8-2&keywords=object+oriented+software+construction+meyer). As soon as I read it, I was convinced, today, I still believe it's a great and fundamental technique. That's why, I almost never write a contract ! Let me explain.

## Phase 1 : DbC ignorance

I started to code professionally in 2001. This was a time where design and quality software meant [Rational Rose](https://en.wikipedia.org/wiki/IBM_Rational_Rose_XDE) (a UML design and code generation tool) while I, at the contrary, was just [Cow Boy Coding](https://en.wikipedia.org/wiki/Cowboy_coding) my way out of any problem I was given.

I wasn't really doing Object Oriented programming, but rather imperative programming, using objects as structs, getters, setters, and classes as a way to organize the code ... In this context, my design skills were improving slowly, and I was at the risk of falling in love with a local-optimum practice that would prevent me from growing further.

That's why I started to read books such as the [Gang Of Four Design Patterns](https://www.amazon.com/Design-Patterns-Elements-Reusable-Object-Oriented/dp/0201633612/ref=sr_1_1?tag=pbourgau-20&amp;s=books&ie=UTF8&qid=1490074343&sr=1-1&keywords=design+patterns), or [OOSC2](https://www.amazon.com/Object-Oriented-Software-Construction-Book-CD-ROM/dp/0136291554/ref=sr_1_2?tag=pbourgau-20&amp;ie=UTF8&qid=1490073815&sr=8-2&keywords=object+oriented+software+construction+meyer).

## Phase 2 : DbC enlightenment

[![The cover of the Object Oriented Software Construction 2]({{site.url}}{{site.baseurl}}/imgs/2017-03-14-almost-15-years-of-using-design-by-contract/OOSC2.jpg)](https://www.amazon.com/Object-Oriented-Software-Construction-Book-CD-ROM/dp/0136291554/ref=sr_1_2?tag=pbourgau-20&amp;ie=UTF8&qid=1490073815&sr=8-2&keywords=object+oriented+software+construction+meyer)

Reading this book was a profound experience to me. My programming changed fundamentally before and after reading it. The chapter about contracts, taught me what objects are.

One the one hand, Pre and Post conditions can be used in any kind of programming and are just a kind of C `assert` macro on steroids. Class invariant, on the other hand, is a completely different kind of beast. The invariant of a class is a predicate about an instance of this class that should always be true. For example : field X should never be null, or the value of field N should always be greater than 0.

In some way, grasping the concept of invariant is close to understanding what a class is.

## Phase 3 : DbC everywhere

That's when I started to write contracts everywhere. I was writing C++ code at the time, and my code must have looked something like that :

```c++
class MonkeyWrench
{
    bool m_isStarted;
    std::vector<Part>* m_movingParts;

protected:
    
    virtual void invariant() const
    {
        assert(m_isStarted == (m_movingParts != NULL));
    }
    
public:
    
    MonkeyWrench()
    {
        this->m_isStarted = false;
        this->m_movingParts = NULL;
        
        invariant();
    }
    
    bool isStarted() const
    {
        return this->isStarted();
    }
    
    void start()
    {
        assert(!this->isStarted());
        invariant();
        
        this->m_movingParts = ...
        
        invariant();
        assert(this->isStarted());
    }
    
    const std::vector<Part>& movingParts() const
    {
        assert(this->isStarted());
        invariant();
        
        return *this->m_movingParts;
    }
    ...
};
```

I definitely over-abused contracts, it made the code unreadable. Plus sometimes, I was using excessively long and intricate assertions which made the problem even worse. 

Hopefully, overusing contracts also taught me a lot in a short time. Here are some of the lessons I learned :

* DbC is not very well supported, it's never something built in the language, and edge cases like inheriting an invariant or conditions can become messy pretty fast.
* Checking for intricate contracts at every method call can be pretty slow.
* Checking everything beforehand is not always the simplest thing to do, at times, throwing an exception on failure just does a better job.
* It happened that removing the contract made the code do just what I wanted. It's easy to write unnecessary strict contracts.
* [Command Query Separation Principle](https://en.wikipedia.org/wiki/Command%E2%80%93query_separation) is great ! Having 'const' or 'pure' queries that don't change anything make writing contracts a lot simpler.
* Preconditions on queries are painful. When possible, returning a sensible 'null value' works better, nothing is worse than getting an error when trying to call a const query from the interactive debugger.
* Finally, the more immutable a class is, the simpler the invariant. With a lot of mutable fields, you might resort to have the invariant check that fields are synchronized as expected. If fields are immutable, this simply vanishes. 

## Phase 4 : DbC hangover

At the same time I discovered all these small subtleties about contracts, I fell upon Martin Fowler's book [Refactoring, improving the design of existing code](https://www.amazon.com/Refactoring-Improving-Design-Existing-Code/dp/0201485672/ref=sr_1_1?tag=pbourgau-20&amp;s=books&ie=UTF8&qid=1490074424&sr=1-1&keywords=refactoring+improving+the+design+of+existing+code) and started to use Unit Tests extensively. This lead me to the following conclusions :

* Tests are more efficient at producing quality software
* Contracts can be an hindrance when trying to do baby steps refactorings as described in Martin Fowler's book

On top of that, as DbC is not natively supported by languages, no documentation is generated, meaning that most of the time, the callers still have to look into the code. As a result, I was using contracts less and less often.

## Phase 5 : DbC Zen

Looking back, I might not be writing a lot of `asserts` in my code, but I am still thinking in terms of contracts all the time. In fact, there are a ton of ways to use DbC without writing assertions :

* Use as much immutability as possible. An immutable class does not need to check its invariant all the time, just throwing from the constructor if arguments are not valid is enough.
* Use conventions as much as possible, for example, constructor arguments should be set for all the life of the object (cf [Growing Object Oriented Software Guided by Tests](https://www.amazon.com/Growing-Object-Oriented-Software-Guided-Tests/dp/0321503627/ref=sr_1_1?tag=pbourgau-20&amp;s=books&ie=UTF8&qid=1490074450&sr=1-1&keywords=growing+object+oriented+software+guided+by+tests) which describes the different ways to inject something in an object)
* Looking back at my DbC assertions, most relate to null values. Again conventions work better ! At work, we simply forbid passing null values around. If something can be null, it means it's optional, Java has an `Optional<T>` class for just that (I'm pretty sure it is possible to do something even better with C++ templates). In this case, if the contract is broken, NullReferenceException will eventually be our assertion.
* Replace as many pre & post conditions with invariants on the callee, the arguments or the return objects as possible. It makes sense as it's just making sure we are using 'valid' objects everywhere. Again, if these objects are immutable, it makes the whole thing even simpler !
* To take further benefit of the invariant of immutable objects, introduce new types. For example, instead of changing an object's state through a command with associated involved contracts, split the class in 2 and make the method a query returning an immutable object, potentially making the initial class immutable as well. Remember, immutable classes mean almost no assertions !
* Use your language. Ex, instead of asserting that 2 lists remain of the same length, refactor to a list of pairs ! (I know that's an obvious example, but you get the point)
* If you are using a statically typed language, use types ! For example, I remember at one project I worked on, we had an bug involving a duration : somewhere in the code milliseconds got mistaken for seconds ... We fixed that by replacing the `integer` by `TimeSpan` all over the place. Again, that's so obvious !
* Eventually, when all else fails, or when it's just too much overhead, use the simple asserts provided by your language or common libraries.

To come back at the previous code section, this how it could be written without assertions :

```c++
class MovingMonkeyWrench
{
    const std::vector<Part> m_parts;
    
public:
    MovingMonkeyWrench() : m_parts(...) {}
    
    const std::vector<Part>& parts() const
    {
        return this->m_parts;
    }
    ...
};

class MonkeyWrench
{   
public:
    MovingMonkeyWrench start() const
    {
        return MovingMonkeyWrench();
    }
    ...
};
```

Details are omitted, but it's easy to see how shorter the code is.

## Conclusion

When applying all the techniques above, you'll see that cases for explicit assertions are rare. Less assertions also workarounds the issues coming from the poor support for DbC : no documentation and intricate cases.

In the end, assertions made my code more 'functional'. I'm not alone to have done the same journey, and if you are interested you should read Eric Evans' [DDD](https://www.amazon.com/Domain-Driven-Design-Tackling-Complexity-Software/dp/0321125215/ref=sr_1_1?tag=pbourgau-20&amp;s=books&ie=UTF8&qid=1490082811&sr=1-1&keywords=domain+driven+design) book where he presents things like immutable value objects and specification objects.
