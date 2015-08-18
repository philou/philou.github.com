---
layout: post
title: "Real Programmers Have Todo Lists"
date: 2015-04-20 05:42
comments: true
categories:
 - programming
keywords: "programming, todo list, effectiveness"
description: "An article describing why and how to use a todo list when programming"
---
Productive programmers maintain a todo list. No Exception.

{% img center /imgs/2015-04-20-real-programmers-have-todo-lists/programmer.jpg A programmer concentrating on his code %}

## Why is it so important

As programmers, here is the typical internal discussion we have all day long :

> \- Why the hell am I doing this again ?<br>
> ... hard thinking ...<br>
> \- Yes ! I remember now :<br>
> \- Encapsulate this field<br>
> \- In order to move it to another class<br>
> \- In order to move this other function there too<br>
> \- In order to be able to remove that other static variable<br>
> \- In order to refactor the login module<br>
> \- In order to remove the dependency between the custom search query generator and the login module<br>
> \- In order to refactor the query generator<br>
> \- In order to be able to optimize it<br>
> \- In order to speed up the whole website !

Phew, now that's a list ! A 9 frame stack, all in our heads, and that's only a simple example. Knowing that us humans usually have around 7 'registers' in our brains, this makes a lot of clutter to remember.

Maintaining all this in a todo list frees us some brainpower !

## What happens when you use a todo list

Quite a lot in fact :

{% img center /imgs/2015-04-20-real-programmers-have-todo-lists/check.gif A tick in a check box %}

- It's satisfying to check something as done !
- Our programming gets better, because we can fully concentrate on it
- We have a clear idea about what's done, what's still to be done, and why we are doing it
- We avoid getting lost in things that don't really need to be done
- We can make better choices about what to do, what to postpone, and what not to do
- We can make more accurate estimates about the time it will take to finish the job

In the end, all this makes you feel less stressed and more productive !

## How to do it

There are many ways to maintain a todo list. Which to choose is not as important as having one. Here are my 2 design principles for a todo list system :

* It goes in finer details than a typical bug tracking software
* It should help you to concentrate on the few items you can do in the coming hours

For example, I am now using a simple TODAY ... TOMORROW ... LATER ... scheme. I tend to avoid deep hierarchies as it gets in the way of my second principle. I like to keep DONE items visible to keep track of what I did for up to 1 day.

{% img center /imgs/2015-04-20-real-programmers-have-todo-lists/org-mode.jpg A screen shot of my org-mode todo list %}

Here is a list of tools you can use to set up a todo list :

- Any text editor using a simple format convention will do
- [Dropbox](http://www.dropbox.com) or any other synchronization tool can be helpful to access it from different places
- [Org Mode](http://orgmode.org/) of [Emacs](https://www.gnu.org/software/emacs/) has built-in support for todo lists. It's a simple text file, but with color highlighting and shortcuts
- [Google Keep](https://keep.google.com/) might do just fine for you
- [Google Docs](https://docs.google.com) can also be useful, especially if you need to share your todo list with others (when pair programming for example)
- [Trello](https://trello.com) is also a good one, it can even be used as a personal kanban board
- Any other todo list tool that suits you !

If you are not already using a todo list, start now and become more productive ! No excuse !

EDIT 2015-08-18 : [I am now using Personnal Kanban instead of TODO lists](/bye-bye-programmers-todo-list-hello-personnal-kanban-on-jira/).
