---
layout: post
title: "Bye Bye Programmer's TODO List, Hello Personnal Kanban on Jira"
date: 2015-08-17 05:46
comments: true
categories:
 - programming
 - kanban
 - selforganizing
 - jira
 - personal-productivity
keywords: "Personnal Kanban, Jira, Kanban, Work In Progress Limit, TODO-List, Organization, Self Organization"
description: "Why I moved from todo lists to personnal kanban, and how I did it using JIRA"
---
EDIT 2017-03-03 : This article is old, I am now using an [improved Jira Personnal Kanban](/my-ultimate-jira-personal-kanban/).


Not long ago, I wrote that [Real Programmers have TODO lists](/real-programmers-have-todo-lists/) ... I was wrong, I now work without a TODO list ! So either I'm not a real programmer anymore, or I'm actually using TODO List v.2.0. Read on !

## Motivations

My work has become quite varied lately. On top of programming and pairing, I am also doing quite some coaching within the team. For the whole Murex programmers community, I'm organizing [Coding Dojos](https://github.com/murex/murex-coding-dojo), [Brown Bag Lunches](http://www.brownbaglunch.fr/) and Technical Talk Video Sessions. Finaly, like all of us, I have to cope with my share of organization overhead.

Multitasking was starting to kill me. I was feeling exhausted at the end of the day, with the certainty that I was not getting much done ...

## Personnal Kanban To The Rescue

[Kanban](https://en.wikipedia.org/wiki/Kanban) is a method to organize your work relying on [Work In Progress limits](http://www.personalkanban.com/pk/featured/why-limit-work-in-progress/#sthash.QFI0D8l5.dpbs) : it minimizes multitasking and encourages prioritization.

As its name suggests it, [Personal Kanban](http://personalkanban.com) is simply applying Kanban to your own tasks. It turns out that :

* My team tasks are already in [JIRA](https://www.atlassian.com/software/jira)
* Some guys have already tried to [use JIRA as a todo list](https://jira.atlassian.com/browse/JRA-13472)
* JIRA supports Kanban boards with WIP limits and all

## The Kanban Board

In our team, [TAYARA Bilal](http://bilal.eltayara.net) had already experimented the approach and asked to JIRA admins to create us a custom project for our todo lists. I piggybacked on it and created my own kanban board. Here is what it looks like.

{% img center /imgs/2015-08-17-bye-bye-programmers-todo-list-hello-personnal-kanban-on-jira/board.png Screenshot of the full JIRA board %}

### Mixing Project Stories And Personnal Tasks

JIRA allows creating a kanban board that spans many projects ! You can simply choose multiple projects when you setup the board for the first time, or you can edit your board filter like this :

```sql
project in (POPIMDB, POPABTODO) ...
```

This makes it possible to see *all* of my work at a glance on the same board.

### Work In Progress Limit

{% img center /imgs/2015-08-17-bye-bye-programmers-todo-list-hello-personnal-kanban-on-jira/wip.png Zoom on the wip constraints of the JIRA column %}

JIRA allows WIP limits, warning me with a red background when I am multitasking or when I am getting late on my tasks

### Color Conventions

{% img center /imgs/2015-08-17-bye-bye-programmers-todo-list-hello-personnal-kanban-on-jira/color-cards.png Different colors of JIRA cards %}

JIRA makes it possible to assign different colors to cards, for example

* Red for tasks that are due soon
* orange for cards that are due some time
* light brown for project stories
* green for other programming tasks
* blue for other tasks

### Swimlanes

{% img center /imgs/2015-08-17-bye-bye-programmers-todo-list-hello-personnal-kanban-on-jira/swimlanes.png Closup on a JIRA swimlane %}

JIRA has swimlanes, separating project from personal tasks

### Reports

An extra bonus with JIRA Kanban board is that they have reports ! Here is my cumulative flow diagram for my first week of usage :

{% img center /imgs/2015-08-17-bye-bye-programmers-todo-list-hello-personnal-kanban-on-jira/cumulative-flow.png A screenshot of the JIRA cumulative flow diagram %}

### Configuration

Here is the JQL query I used to configure it this way.

```sql
-- board filter
project in (POPIMDB, POPABTODO) AND (Assignee = pbourgau OR Co-Assignees in (pbourgau) OR mentors in (pbourgau)) AND (status != CLOSED OR updated >= -1d) ORDER BY Rank ASC

-- Swimlanes
priority = "1-Very High" -- Expedite
project in ("POP IMDB") and (labels not in (SLACK) OR labels is EMPTY) -- IMDB Stories
-- and a blank filter for Other Tasks

-- Card Colours
duedate <= 7d or priority = "1-Very High" -- red
duedate is not EMPTY -- orange
labels in (SLACK) -- green
type = Task -- blue
-- and an empty filter for light brown
```

## The End Result

By setting a WIP limit of 3 on the "In Progress" column, the following naturally happened :

* Once I have started a programming task, I now defer any other activity in the TODO column until I am finished. (HINT: If you get invited to meetings all the time, lock your agenda with 'Unbookable' days when you start programming)
* It actually pushed me into finishing the [concurrency-kata](https://github.com/philou/concurrency-kata) training I had started long ago.

I also set a high WIP limit (around 10) on the TODO column, this way, I get a kind of warning that next time I finish a programming task, I should take some time off to prune the column.

The overall result is that I do lot less multitasking. I get the feeling of doing steadier, more efficient work.

If you are suffering from multitasking and decide to give it a try, I'd love to read about your experience !