---
layout: single-mailing-list
title: "Don't stick to TDD's Red-Green-Refactor loop to the letter"
date: 2017-06-28 15:52
comments: true
categories:
 - testing
 - software
 - agile
 - tdd
keywords: "TDD, Test Driven Development, Red-Green-Refactor, Feedback loop, Software, Unit testing, automated testing, refactoring"
description: "Different variations over the TDD loop and how they can be useful"
---
As long as you are writing your tests before your code and doing regular refactoring, you are doing [TDD](https://en.wikipedia.org/wiki/Test-driven_development) !

The Red - Green - Refactor loop is useful to introduce TDD to new developers. Different loops can be more effective in real world situation.

The Red - Green - Refactor loop is not a dogma !

[![The famous red, green, refactor TDD loop]({{site.url}}{{site.baseurl}}/imgs/2017-06-28-dont-stick-to-tdds-red-green-refactor-loop-to-the-letter/red-green-refactor.jpg)](http://www.natpryce.com/)

## Refactor - Red - Green

When I work on a story, I very often keep a TODO list next to my desk. I use it to keep track of the next steps, the edge cases to test, the code smells and refactorings to do.

When I get to the end of the story, all that remains of this list is a few refactorings. Very often, I don't do them !

With the feature working, doing these refactorings feels like violation of [YAGNI](https://en.wikipedia.org/wiki/You_aren%27t_gonna_need_it). Next time we'll have to work on this part of the code, we'll have a story to serve as guide to which refactorings to do.

The same thing is effective at the unit test scale. It's easier to refactor when you know the test you want to add. Refactor to make this test easy to write !

Here is an example with [Fizz Buzz](https://en.wikipedia.org/wiki/Fizz_buzz)

```java
static int fizzBuzz(int number) {
   return number;
}

@Test public void
it_is_1_for_1() {
   assertThat(fizzBuzz(1)).isEqualTo(1);
}

@Test public void
it_is_2_for_2() {
   assertThat(fizzBuzz(2)).isEqualTo(2);
}
```

Here is the test I'd like to add. 

```java
@Test public void
it_is_Fizz_for_3() {
   assertThat(fizzBuzz(3)).isEqualTo("Fizz");
}
```

Unfortunately, fizzBuzz needs to return a String instead of an integer for it to compile. That's when I would refactor before adding the new test.

```java
static String fizzBuzz(int number) {
   return Integer.toString(number);
}

@Test public void
it_is_1_for_1() {
   assertThat(fizzBuzz(1)).isEqualTo("1");
}

@Test public void
it_is_2_for_2() {
   assertThat(fizzBuzz(2)).isEqualTo("2");
}
```

In the end, this loop is very like the classic TDD loop :

```
red-green-refactor-red-green-refactor-red-green-refactor.............
..........refactor-red-green-refactor-red-green-refactor-red-green...
```

A bit more YAGNI, that's all.

## Red - Better Red - Green - Refactor

A few weeks ago, [I wrote about error messages in unit tests](/speed-up-the-tdd-feedback-loop-with-better-assertion-messages/). To summarize, extra work on error messages reduces the testing feedback loop.

We can translate this focus on error messages into an extra TDD step. Whatever the TDD loop you are using, you can add this step after the Red step.

## ~~Red~~ - Green - Refactor - Red - Green

Sometimes, it makes sense to refactor before fixing the test. The idea is to rely on the existing tests to prepare the code to fix the new test in one line.

Let's take our Fizz Buzz example again. Imagine we finished the kata, when we decide to tweak the rules and try Fizz Buzz Bang. We should now print Bang on multiples of 7.

Here is our starting point :

```java
static String fizzBuzz(int number) {
   if (multipleOf(number, 3)) {
      return "Fizz";
   }
   if (multipleOf(number, 5)) {
      return "Buzz";
   }
   if (multipleOf(number, 3*5)) {
      return "FizzBuzz";
   }   
   return Integer.toString(number);
}

...

@Test public void
it_is_Bang_for_7() {
   assertThat(fizzBuzz(7)).isEqualTo("Bang");
}
```

I could go through all the hoops, 7, 14, then 3*7, 5*7 and finally 3*5*7 ... By now, I should know the music though !

What I would do in this case is :

*   first to comment the new failing test to get back to green
*   refactor the code to prepare for the new code
*   uncomment the failing test
*   fix it

In our example, here is the refactoring I would do

```java
static String fizzBuzz(int number) {
   String result = "";
   result += multipleWord(number, 3, "Fizz");
   result += multipleWord(number, 5, "Buzz");
   if (result.isEmpty()) {
      result = Integer.toString(number);
   }
   return result;
}

private static String multipleWord(int number, int multiple, String word) {
   if (multipleOf(number, multiple)) {
      return word;
   }
   return "";
}

...

//@Test public void
//it_is_Bang_for_7() {
//   assertThat(fizzBuzz(7)).isEqualTo("Bang");
//}
```

From there, fixing the test is dead simple.

In practice I find this loop very useful. At local scale as we saw but it's also a great way to refactor your architecture at larger scale.

One downsize is that if you are not careful, it might lead to over-engineering. Be warned, keep an eye on that !

Last caveat : not all TDD interviewers like this technique ...

## Don't obsess

It's not because you are not following the Red Green Refactor loop to the letter that you are not doing TDD.

An interesting point is that these variations to the TDD loop are combinable ! Experienced TDD practitioners can jump from one to the other without even noticing.

[This paper](https://blog.acolyer.org/2017/06/13/a-dissection-of-the-test-driven-development-process-does-it-really-matter-to-test-first-or-test-last/) argues that as long as you write the tests along (before or after) the code, you get the same benefit. That's not going to make me stop writing my tests first, but it is interesting. That would mean that even a Code - Test - Refactor loop would be ok if it is fast enough !
