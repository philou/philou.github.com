---
layout: page
title: "Planning Poker"
date: 2017-06-06 06:06
comments: true
sharing: true
footer: true
description: "Rational and usage documentation for an open source planning poker web app"
keywords: "Agile, Software, Planning Poker, Poker Estimation, Remote, Remote Teams"
---
[Try it now](https://philous-planning-poker.herokuapp.com/) | [View on github](https://github.com/philou/planning-poker) | [Download .zip](https://github.com/philou/planning-poker/archive/master.zip) | [The author](http://philippe.bourgau.net)

Effective [Planning Poker](https://en.wikipedia.org/wiki/Planning_poker) sessions for remote teams.

[![Screenshot of the tool](../imgs/planning-poker/screenshot.jpg)](https://philous-planning-poker.herokuapp.com/)

## Why

During my career as a software engineer, I am more and more working in teams that span over many places. At the same time, I am a great proponent of the agile way which favor co-located teams.

I am convinced that teams can be both remote *and* agile. Provided they have the correct tools.

This app enables remote teams to run effective [poker planning](https://en.wikipedia.org/wiki/Planning_poker) sessions. Without it, they would use a video conference to share their estimates through the camera. With this app, a phone call is enough.

In the long run, it could improve the estimation experience for both remote and co-located teams :

* It could warn of a "risky" or "unlikely" estimations, by analyzing the distribution
* It help to do "Risk" estimations, which have 2 axes (likelihood and criticality)

## Tutorial

To do a remote planning poker session, you'll all need 3 things :

* an internet connection
* be together in a voice teleconference
* know what [poker estimation technique](https://en.wikipedia.org/wiki/Planning_poker)

Once this is ready, you should all go to [https://philous-planning-poker.herokuapp.com/](https://philous-planning-poker.herokuapp.com/).

1. Type in your team name and pseudo, and enter your team space. The first to enter becomes the animator for the team.
2. Discuss together about what you are going to estimate.
3. The animator starts a vote.
4. Everyone estimates the task in [story points](https://www.mountaingoatsoftware.com/blog/what-are-story-points).
5. At the end of the vote, you should all see the distribution of the estimates.
6. Discuss the results. 
7. At any moment, the animator can start a new vote.

[//]: # (Here is a video demonstrating how the different contributors interact : TODO video)

## FAQ

> What if no one is the animator ?

You must have entered a team space that is already used and which already has an animator. Pick another team name to fix that.

> I entered my team name and pseudo, but it seems I am alone !

You must have used a different team name. The tool is case sensitive, be sure to use exactly the same team name.

## Open Source

The tool is open source, under the [Apache License 2.0](https://www.apache.org/licenses/LICENSE-2.0). Among other things, this means that :

* you can install it on your own server and run your own instance
* you can contribute improvement to it

Check the [source code on Github](https://github.com/philou/planning-poker) to learn how to do this.

## Limitations

Here are the main current limitations of the tool :

* The animator is the first person in the team to log in, once someone is animator for a team, he cannot back out of this role
* Each vote lasts for 30 seconds, even if everyone has voted
* The only form of authentication are the team and persons names, this can lead to conflicts
* The tool is not built to scale, new teams and contributors pill up in a Postgres DB but are not garbage collected.
* The main instance runs on a free [Heroku](https://www.heroku.com/) app

Anyone could fix these if needed.

## Feedback is welcome

I'd appreciate your feedback about this tool. Whether

* to tell me what you think of it
* to explain what you'd need before to start using it
* to ask any question

Leave a comment !