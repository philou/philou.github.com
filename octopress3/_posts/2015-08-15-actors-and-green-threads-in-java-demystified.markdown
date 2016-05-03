---
layout: post
title: "Actors and Green Threads in Java Demystified"
date: 2015-08-15 13:17
comments: true
categories:
 - programming
 - java
 - concurrency
keywords: "Java, Programming, Concurrency, Multithreading, Actors, Threads, Green Threads, Light Threads, Performance"
description: "Description of a prototype of actors and green threads in the Java programming language"
---
After finishing my [concurrency-kata](https://github.com/philou/concurrency-kata), one of the things that most surprised me, is how simple it was to prototype the [Actor Model](https://en.wikipedia.org/wiki/Actor_model) in Java using [Green Threads](https://en.wikipedia.org/wiki/Green_threads).

## The Code

First, here is the base class for all actors.

```java
public class Actor implements Runnable {
    private final ExecutorService threadPool;
    private final ConcurrentLinkedQueue<Runnable> mailbox = new ConcurrentLinkedQueue<>();
    private boolean stoped;

    public Actor(ExecutorService threadPool) {
        this.threadPool = threadPool;
    }

    public void run() {
        if (stoped) {
            return;
        }

        Runnable nextMessage = mailbox.poll();
        if (nextMessage != null) {
            nextMessage.run();
        }
        submitContinuation();
    }

    public void start() {
        submitContinuation();
    }

    protected void stop() {
        stoped = true;
    }

    protected void send(Runnable runnable) {
        mailbox.add(runnable);
    }

    private void submitContinuation() {
        threadPool.submit(this);
    }
}

```

As you can see, I simply used Runnable as the type of the messages.

The Actor itself is Runnable, meaning that it can be submitted to the thread pool. When executed :

1. it tries to handle a message from the mailbox if there is one.
2. It then re-submits the actor itself

This ensures that only one thread is executing messages on an actor at a given time, and it also avoids spawning new thread for every new actor.

As an example, here is how I used this to make an actor of an existing InProcessChatRoom class.

```java
public interface ChatRoom {
    void broadcast(Output client, String message);
    ...
}
```

```java
public class InProcessChatRoom implements ChatRoom {
	...
}
```

```java
public class ChatRoomActor extends Actor implements ChatRoom {

    private final ChatRoom realChatroom;

    public ChatRoomActor(ChatRoom realChatroom, ExecutorService threadPool) {
        super(threadPool);
        this.realChatroom = realChatroom;
        start();
    }

    @Override
    public void broadcast(final Output client, final String message) {
        send(new Runnable() {
            @Override
            public void run() {
                realChatroom.broadcast(client, message);
            }
        });
    }
    ...
}
```
ChatRoomActor is in fact some kind of proxy to use from other actors to send messages to the chat room.

As with any implementation of the Actors Model, the neet thing is the separation of threading and logic. That makes it so much simpler ! (You can get more detail about the complexity I am talking about by taking a look at the [concurrency-kata](https://github.com/philou/concurrency-kata))

## Performances

Here is a performance summary of this implementation compared to others on a "throughput vs clients" benchmark of the style "Enter while others are talking"

[{% img center https://raw.githubusercontent.com/philou/concurrency-kata/master/enter-while-others-are-talking.png Result graphs of benchmark enter while others are talking %}](https://github.com/philou/concurrency-kata)

Results can be disappointing compared to other implementations but the example itself is a bit misleading. The chatroom does exclusively message passing, there is not much computation to parallelize, in a different setting, the results would have been completely different.


## Limitations

As you can see, this implementation is just a quick prototype, nothing production ready. Here are the main limitations I can think of right now :

* It uses [Busy Waiting](https://en.wikipedia.org/wiki/Busy_waiting) for the next message, meaning that it consumes unnecessary resources, and that more important messages to other Actors might be delayed
* Usually, actor messages are selected on their type rather than on their order of arrival, this is not the case here
* The usage of the Runnable interface as base message type, though handy, opens the door to inter-thread calls that might violate the model altogether
* There is absolutely no support of out of process actors until the messages are Serializable

## Going Further

I started this [concurrency-kata](https://github.com/philou/concurrency-kata) as a training material about concurrency for colleagues at [work](http://www.murex.com). In the spirit of the coding kata, it's a git repo you can walk, explore and experiment with.

So if you want to learn more about different models of concurrency, you are welcome to have a look at the How-To section in the [README](https://github.com/philou/concurrency-kata) file.

On my part, although it was a lot more work than I would have guessed at the beginning, I barely scratch the surface of the subject ! I could now :

* extract the [CSP](https://fr.wikipedia.org/wiki/Communicating_sequential_processes) or Actor implementation and make them more robust
* practice and present the whole kata as a 2 hours live coding session
* prepare a hands-on training about concurrency

So, if you are willing to do any of the above you are welcome to contribute !