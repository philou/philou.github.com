---
layout: single-mailing-list
title: "Top 5 talks I attended at JavaOne 2016 (Part 2)"
date: 2016-09-28 20:02
comments: true
categories:
 - java
 - programming
 - clojure
keywords: "Java, JavaOne, JavaOne 2016, Programming, Software, Clojure, Clojure.spec"
description: "Summary of the best talks I had the chance to assist at JavaOne 2016"
---
This is my second post relating the talks I attended at JavaOne 2016. [Here](/top-5-talks-i-attented-at-java-one-2016-part-1/) is the beginning of the story. Here we go.

## Euphoria Despite the Despair

[Holly Cummins](https://twitter.com/holly_cummins)

Our jobs aren't always fun ... and that's in fact an issue ! Studies show that people who have fun at work are 31% more productive ! The talk was organized in 3 parts :

1. What is fun ?
2. How to remove the parts that are not fun ?
3. How to add even more fun ?

She defined what she called the funtinuum, which is that fun is a function of engagement and interaction. Basically, you won't have fun if you are doing nothing, or if no one cares about your work. That aligns well with [Daniel Pink's drivers of motivation](https://www.amazon.com/Drive-Surprising-Truth-About-Motivates/dp/1594484805/ref=sr_1_1?tag=pbourgau-20&amp;ie=UTF8&qid=1475123675&sr=8-1&keywords=daniel+pink+drive) : Autonomy, Mastery and Purpose.

If something is not fun, it's because it does not require engagement or interaction. It's either boring or no one cares, or both. If that's the case, it's probably some kind of waste in some sense ... Removing un-fun activities would mean removing waste. It's interesting to note how this sounds like [lean Muda](https://en.wikipedia.org/wiki/Muda_(Japanese_term)) ! She gave examples such as :

* automate stuff
* pair programming transforms criticism into collaboration (bonus: it gives excuse to skip meetings)
* go [#NoEstimates](https://twitter.com/search?q=%23NoEstimates) because estimating is painful and useless
* YAGNI defers useless things until they really add value
* Organize to skip meetings and other boring stuff
* ...

Last step is to add fun to the workplace. She warned that adding fun before removing the un-fun stuff would feel fake and would make things worse ...

<iframe src="//www.slideshare.net/slideshow/embed_code/key/DMpHQcMebTVGsz?startSlide=148" width="595" height="485" frameborder="0" marginwidth="0" marginheight="0" scrolling="no" style="border:1px solid #CCC; border-width:1px; margin-bottom:5px; max-width: 100%;" allowfullscreen> </iframe>

To add fun, she suggested using things like :

* gamification (there was actually another great talk about gamification)
* build a hacking contest instead of a security training
* Install a [Siren of Shame](https://sirenofshame.com/) for whoever breaks the build
* ...

Here are [the slides](http://www.slideshare.net/HollyCummins/software-developers-guide-to-fun-in-the-workplace-euphoria-despite-the-despair)

## Java 9: The Quest for Very Large Heaps

Bernard Traversat, Antoine Chambille

[![Slide of the memory regions in G1]({{site.url}}{{site.baseurl}}/imgs/2016-09-28-top-5-talks-i-attended-at-javaone-2016-part-2/java-9-gc-small.jpg)]({{site.url}}/imgs/2016-09-28-top-5-talks-i-attended-at-javaone-2016-part-2/java-9-gc.jpg)

This talk might not be of interest for all, but it is for us [at work](http://murex.com). It went through the improvement to come to Java 9's G1 garbage collector. To summarize, to scale to very large heaps, it will split the memory into regions. Objects should be allocated on different regions depending on their specificities, which might help to build NUMA aware applications. Having the heap split up in smaller chunks enables the GC to run in parallel, which can speed up the old generation GC by up to 50 times !

[Java 9 is scheduled for march 2017](http://www.java9countdown.xyz/)

## Agility and Robustness: Clojure + spec

[Stuart Halloway](https://twitter.com/stuarthalloway)

I haven't been touching Clojure for a while but I gave the language a try a few years ago. I had heard about Clojure spec but hadn't taken the time to look at it in details. As I understood it all, Spec is like some sort of [Design by Contract](https://en.wikipedia.org/wiki/Design_by_contract) on steroïds ! Clojure is not statically typed, but you can now assign spec metadata to values. A spec is roughly a predicate. By defining specs for the inputs and outputs of functions, it is possible to verify at runtime that the function is behaving correctly.

As did Bertrand Meyer in the classic [OOSC2](https://www.amazon.com/Object-Oriented-Software-Construction-Book-CD-ROM/dp/0136291554/ref=sr_1_1?tag=pbourgau-20&amp;ie=UTF8&qid=1475211259&sr=8-1&keywords=object+oriented+software+construction+meyer), who advised to use contracts during development only, Stuart explained that we should care about developer vs production time instead of compile vs runtime. From this point of view, it is not of great importance whether the compiler or the continuously running test suite finds an issue.

But specs are a lot more than predicates ! They can be used to :

* enable assertions at runtime
* generate documentation
* generate test cases
* generate precise call logs
* get precise error messages
* explore a function and see how it can be called

He went on to compare the virtues of Clojure spec with static typing (à la Java) and example based testing :

![Slide comparing Clojure spec with example based testing and static typing]({{site.url}}{{site.baseurl}}/imgs/2016-09-28-top-5-talks-i-attended-at-javaone-2016-part-2/clojure-spec.jpg)

Although I don't believe that generative testing can ever replace example based testing altogether, it certainly can help.

All in all, the presentation was insanely great and engaging. It made me seriously think of going into Clojure programming again !

Here are [the slides](https://t.co/0FBl2l473N) and the [the same talk at Strangeloop](https://www.youtube.com/watch?v=VNTQ-M_uSo8)

## Conclusion

Overall, JavaOne was great ! If I had the opportunity, I'd go back every year ! There was a lot of other great talks I did not write about in these 2 posts, for example :

* Development Horror Stories was a lot of fun, especially the winning story !
* Hacking Hiring was full of good advises
* Managing Open Source Contributions in Large Organizations was full of good ideas
* Increasing Code Quality with Gamification was very inspiring

## Edit 17 October 2016

I summarized 3 others JavaOne talks [here](/3-more-great-talks-from-javaone-2016/).
