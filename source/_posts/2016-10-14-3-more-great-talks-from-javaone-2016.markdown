---
layout: post
title: "3 More Great Talks From JavaOne 2016"
date: 2016-10-14 04:05
comments: true
categories:
 - java
 - programming
 - performance
 - open-source
keywords: "Java, JavaOne, JavaOne 2016, Programming, Software, Flame graphs, performance, Gamification, Open Source"
description: "3 more summaries of JavaOne talks. Open Source, Flame Graphs and Gamification"
---
After the top [5 talks I attended at JavaOne](/top-5-talks-i-attented-at-java-one-2016-part-1/) here are more !

## Managing Open Source Contributions in Large Organizations

[James Ward](http://www.jamesward.com/presos)

This talk was very interesting for companies or organizations that want to use Open Source in some way without ignoring the risks.

After an introduction listing the benefits of contributing to open source, James explained the associated risks :

* Security (evil contributions or information leaks)
* Quality (bad contributions, increased maintenance or showing a bad image)
* Legal (responsibility in case of patent infringing contribution, ownership of a contribution, licenses)

He then explained that there are 3 ways to deal with the issue :

 Strategy | Description | Pros | Cons | Popularity | Examples |
----------|-------------|------|------|------------|----------|
 Do nothing | Devs just contribute without saying it | Easy, Gets it done | Need to stay under the radar, Risks for all parties are ignores | +++++ | Most open source code on [Github](https://github.com) is shared in this manner |
 Join a foundation | Joining an existing open source foundation, with a framework | Everything out of the box (infra, governance), builds trust | Rules can be heavy, Ownership is given to the foundation | +++ | [Linkedin](https://www.linkedin.com/) put [Kafka](https://kafka.apache.org/) in the [Apache Foundation](https://www.apache.org/) |
 Build tools | Use your own tools to mitigate the main risks associated with the 'Do nothing' strategy | Built on top of Github, Keep control, Keeps things easy | Need to develop, test and operate the tools | + | Demo of a tool plugged into Github to enforce a contributor license agreement for anyone pushing a pull request |

[![Slide with a Github capture for Contributor License Agreement]({{site.url}}/imgs/2016-10-14-3-more-great-talks-from-javaone-2016/CLA-small.jpg)]({{site.url}}/imgs/2016-10-14-3-more-great-talks-from-javaone-2016/CLA.jpg)

The 'build tools' strategy looks promising, even if it is not yet widely used !

Here are [the talk](https://www.youtube.com/watch?v=X71HrW6vC_0) and [the slides](http://presos.jamesward.com/managing_open_source_contributions_in_large_orgs/index.html#/) on the authors website.

## Java Performance Analysis in Linux with Flame Graphs

[Brendan Gregg](http://www.brendangregg.com/)

This is what a flame graph looks like :

[![An example of a Java flame graph]({{site.url}}/imgs/2016-10-14-3-more-great-talks-from-javaone-2016/flamegraph.png)](http://www.brendangregg.com/FlameGraphs/cpu-mixedmode-vertx.svg)

Technically, it's just an SVG with some Javascript. It shows the performance big picture. It aggregates data from Linux and JVM profilers. Vertically, you can see the call stacks in your system. The larger a block, the more time is taken inside a function (or in a sub call). The top border is where the CPU time is actually taken. If you want to speed up your system, speed up the wider zones at the top of the graph.

At [Netflix](https://www.netflix.com), the speaker is a performance engineer, and his job is to build tools to help other teams discover performance issues. This is how they use Flame Graphs :

* Compare 2 flame graphs at different times to see what changed
* Do a [canary release](http://martinfowler.com/bliki/CanaryRelease.html) and compare the new flame graph before finishing the deployment
* Taking continuous flame graphs on running services helps identify JVM behavior like JIT or GC
* They use different color themes to highlight different things
* They also use them to identify CPU cache misses

By the way, I also thought this was a great example of using an innovative visualization to manage tons of data.

I could find neither the video nor the slides of the talk, but I managed to find a lot of [others talks about Flame Graphs](https://www.google.fr/search?safe=active&client=ubuntu&espv=2&biw=1600&bih=810&tbm=vid&q=Flame+Graphs&oq=Flame+Graphs&gs_l=serp.3...1396.1396.0.1616.1.1.0.0.0.0.59.59.1.1.0....0...1c.1.64.serp..0.0.0.z-3ygDHx4-Q), as well as extra material on [the speaker's homepage](http://www.brendangregg.com/flamegraphs.html).

## Increasing Code Quality with Gamification

[Alexander Chatzizacharias](https://twitter.com/alex90_ch)

You might be wondering why we should care about gamification ?

* Worldwide 11.2 billion hours are spent playing every week !
* People love to play because it makes them feel awesome
* Games are good teachers
* At work we are the ones who need to make others successful
* But only 32% of workers are engaged in their work !

Games rely on 4 main dynamics :

* Competition (be very careful of closed economics which can be very bad for teams)
* Peer pressure (Public stats push teams and individual to conform to the norm)
* Progression (regular recognition of new skills is motivating)
* Rewards (Badges, Level ups, Monkey Money, real money ...)

He went on to demonstrate two games that are based on Jenkins and Sonar that aim at better code quality :

* One mobile app developed during a 24h Hackathon at CGI which might be open sourced at some point
* Another one called 'Dev Cube' created at an university, where you get to decorate you virtual cubicle

[![The speaker demoing his code quality game]({{site.url}}/imgs/2016-10-14-3-more-great-talks-from-javaone-2016/quincy-adams.jpg)](https://www.youtube.com/watch?v=hfT2_HxOQdk)

At the end of the talk, he gave the following recommendations :

* Understand the needs of all to respond to everyone's personal goals
* Don't assign things to do, that's not fun, give rewards instead
* Keep managers out of the picture
* To keep it going, you need regular improvements, special events and new rules
* KISS !

Playing at work might not be unproductive in the end !

The same [talk given at NLJug](https://www.youtube.com/watch?v=hfT2_HxOQdk), unfortunately, it's in Dutch. English slides are [here](https://static.rainfocus.com/oracle/oow16/sess/14625567983370011wPS/ppt/increasing%20code%20quality%20with%20gamification.pdf) though.
