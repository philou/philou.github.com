---
layout: post
title: "Top 5 talks I attended at JavaOne 2016 (Part 1)"
date: 2016-09-28 19:20
comments: true
categories:
 - java
 - programming
keywords: "Java, JavaOne, JavaOne 2016, Programming, Software"
description: "Summary of the best talks I had the chance to assist at JavaOne 2016"
---
With a few other colleagues, I had the chance to be sent to San Francisco last week to attend the [JavaOne 2016](https://www.oracle.com/javaone/index.html) conferences by my [company](http://www.murex.com).

[{% img center /imgs/2016-09-28-top-5-talks-i-attented-at-javaone-2016-part-1/exhibition-hall-small.jpg Photo of the JavaOne exhibition hall %}](/imgs/2016-09-28-top-5-talks-i-attented-at-javaone-2016-part-1/exhibition-hall.jpg)

Here is super short list of the conferences I attended which I found really interesting

## Preventing errors before they happen

[Werner Dietl](https://ece.uwaterloo.ca/~wdietl/) & [Michael Ernst](https://homes.cs.washington.edu/~mernst/)

Since Java 6, it is possible to pass custom annotation processors to javac. Since Java 8, it is possible to add annotations to types. The guys behind the [Checker Framework](http://checkerframework.org) used this to create custom pluggable type systems for your Java programs. These type systems enforce properties on your program, and will emit warnings or errors at compile time otherwise.

Here are a few example :

* declare ```@Immutable MyObject myObject``` to make sure that myObject won't be muted
* declare ```@NonNull MyObject myObject``` to make sure that myObject is never null

[{% img center /imgs/2016-09-28-top-5-talks-i-attented-at-javaone-2016-part-1/type-systems-small.jpg Architecture of the type checker %}](/imgs/2016-09-28-top-5-talks-i-attented-at-javaone-2016-part-1/type-systems.jpg)

Under the hood, the compiler behaves as if ```@Immutable MyObject``` and ```MyObject``` where completely separate types, and it knows and tracks specific ways of converting between the two. The framework provides a simple API to define your own type systems. They did a live demo showing how to quickly define things like ```@Regex String```, ```@Encrypted String``` or ```@Untainted String``` (which forbids user input strings to avoid SQL injections).

The talk was really interesting, the framework seems lightweight and to integrate well with the typical tool stack. I definitely will give it a try the next time I have a bit of slack time.

Here are [the slides](http://types.cs.washington.edu/checker-framework/2016-javaone/2016-09-19%20CF%20@%20JavaOne.pdf) and a [previous session of the presentation](https://www.youtube.com/watch?v=kb6nz85jbuQ)

## Keeping Your CI/CD Pipeline as Fast as It Needs to Be

[Abraham Marin-Perez](https://twitter.com/abrahammarin?lang=fr)

Continuous Delivery and Microservices are what you need to do, aren't they ? Well, when actually trying to setup a CI / CD pipeline for all your code, things quickly get complicated pretty fast ! The speaker presented how to deal with this complexity by using metrics from your VCS and build servers to draw an annotated graph of your build pipeline.

[{% img center /imgs/2016-09-28-top-5-talks-i-attented-at-javaone-2016-part-1/build-pipeline-small.jpg Graph of the build pipeline %}](/imgs/2016-09-28-top-5-talks-i-attented-at-javaone-2016-part-1/build-pipeline.jpg)

* He used the build time to set the size of every node : the longer, the larger
* The color for the change rate : the more often it was built the warmer the color

It was then possible to determine other metrics such as :

* the impact time of every node : build time + build time of all the dependencies
* the weighted impact time : impact time * change rate
* the overall average impact time : sum of all the weighted impact times
* the overall max impact time : max of all the impact times

Using this and your SLAs it is possible to define policies for your build times such as "the max build time should not be more than X". If you want to speed up your build, you can set a target build time and analyzing the graph should help you to understand what architecture changes you need to make to your system in order to meet this build time (this sounds a lot like [Toyota's Improvement Kata](http://www-personal.umich.edu/~mrother/The_Improvement_Kata.html) ...)

I loved this talk ! I found the speaker captivating, he presented novel ideas which is not always the case.

Here are [the slides](http://www.slideshare.net/AbrahamMarinPerez/keeping-your-cicd-pipeline-as-fast-as-it-needs-to-be), and [the same presentation at Devoxx UK](https://www.youtube.com/watch?v=8JxoKJng_eQ).

## To Be Continued

I promised 5, and that's only 2 talks ! Stay tuned, I'll write about the 3 others in the coming weeks.
