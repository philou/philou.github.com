---
keywords: "code reviews, agile, version control, Reviews, everyone"
layout: single
title: "Reviews for everyone"
date: 2013-12-02 06:33
comments: true
categories:
 - code reviews
 - agile
 - version control
published: true
---
We are using [Scrum](http://www.scrum.org) at work. As an [eXtreme Programmer](http://www.extremeprogramming.org/) to the bones, I wanted more [collective code ownsership](http://www.extremeprogramming.org/rules/collective.html). We were already doing some [pair programming](http://en.wikipedia.org/wiki/Pair_programming) from time to time, but I thought it might be a good time to try public [code reviews](http://en.wikipedia.org/wiki/Code_review).

I have already been doing code reviews in other jobs, but the experience has been disappointing up till now for the following reasons :

* Even with review tools, they involved too much manual efforts
* I've been in jobs with reinforcing loops :
![Schema of a vicious circle : poor quality, bugs, not enough time, poor quality ... ]({{site.url}}{{site.baseurl}}/imgs/2013-12-02-reviews-for-everyone/graph.png)
In this kind of environment, even mandatory code reviews tend to become a useless "tick in the box" operation
* Often they are used as a control mechanism rather than a share tool

Public reviews, [as discribed by Karl Fogel in Producing Free Open Source Software](http://producingoss.com/en/setting-tone.html#code-review) on the other hand seem something great to encourage share and peer review. The principles are simple :

* All commits must be reviewed by at least one person
* Anyone can review anyone's code

At work, we are using [Perforce](http://www.perforce.com) and [Code Collaborator](http://smartbear.com/products/software-development/code-review/) as a review tool. We did not have the possibility to send an email at every perforce submit, and manually creating code collaborator reviews for every change is a chore. I spent an afternoon writing a small ruby script that polls perforce for new changes, and automaticaly creates reviews in Code Collaborator from these. I also added something to spot existing Jira ids in commit messages, to enlarge the existing review instead of creating a new one for every commit.

We are very pleased with the result, all the team is participating to the reviews. As with all good code reviews, it's helps :

* Spoting some bugs
* Spoting some possible design improvements
* Discussing the global design and architechure of our system
* Gathering coding standards
