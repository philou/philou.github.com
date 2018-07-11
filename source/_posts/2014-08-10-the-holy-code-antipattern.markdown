---
layout: post
title: "The Holy Code Antipattern"
date: 2014-08-10 08:42
comments: true
categories:
 - code
 - antipattern
 - management
keywords: "code, antipattern, management, refactoring, domain driven design"
description: "Here is the description of an anti pattern (something not to do) that occurs when programmers are forbidden to change some specific part of the code"
---
As I've encountered this situation in different disguise in different companies, I now assume it's a widely applied antipattern.

### Context

A team of programmers inherits a piece of code from one of their bosses. They find it really difficult to maintain : it is difficult to understand, fix, and change.

### The Antipattern

![A picture from the Monty Python's Holy Grail movie featuring the holy hand grenade of antioch]({{site.url}}/imgs/2014-08-10-the-holy-code-antipattern/grenade.jpg)

As this piece of code seems too complex to be maintained by a team of simple programmers, as the boss, just forbid them :

* to refactor any part of it
* to rewrite it from scratch
* to use something else instead

### Consequences

* This often limits the number of bugs that appear in this library, but ...
* It slows down development, because of the micro management required to enforce this pattern
* It frustrates programmers, and it is likely that the best ones will leave
* It prevents better design
* Even worse, in the long run, it prevents great domain driven design to emerge from merciless refactoring
* In the end, it makes the whole organization less performant

### Examples

* Your boss wrote something a few years ago, if the domain is more or less complex, the resulting code *is* complicated. The subject eventually got the reputation of being 'touchy'. Your boss is the only person who effectively manages to change anything in there. He's a bit afraid that by trying to improve it, the whole thing might just break down and become a bug nest. So, now that he has some authority, he forbids anyone to touch it. If a change is finally required, he'll micro manage it !

* Your big boss spent some over time on writing an uber-meta-generic-engine to solve ~~the universe and~~ everything. After seeing many developpers fixing the same kind of bugs over and over, he decides that it's time to remove the dust from his compiler and that he starts building something that should solve the root cause of all these. In the spirit of the [second system effect](http://en.wikipedia.org/wiki/Second-system_effect), he adds all bells and whistle to his beloved project, trying to incorporate a solution to every different issue he has seen during the last decade. This code grows and grows in total isolation of any real working software. When he eventually thinks it is ready, he justs drops the whole thing to your team, that is now responsible to integrate and use this thing in the running system. He's micro managing the whole thing, and you don't have any choice but to comply and succeed. This usually generates gazillions of bugs, makes projects really late and ruins the developpers' lives.

### Alternatives

* Use collective code ownership so that knowledge about the code is shared by design
* Trust programmers to design and architecture the system
* Use constant refactoring to let tailor made domain driven designs emerge from the system
