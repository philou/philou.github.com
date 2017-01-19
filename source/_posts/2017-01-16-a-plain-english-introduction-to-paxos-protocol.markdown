---
layout: post
title: "A Plain English Introduction To Paxos Protocol"
date: 2017-01-16 08:20
comments: true
categories:
 - software
 - distributed systems
keywords: "Paxos, Distributed Systems, English Paxos, Story, Paxos Story, Paxos Protocol"
description: "An illustration of the Paxos protocol through the story of 3 brothers and sisters trying to agree on the price at which to sell their inherited house"
---
A few weeks ago, I had to have a look at the distributed consensus protocol [Paxos](https://en.wikipedia.org/wiki/Paxos_%28computer_science%29). Even though I know its purpose and I've built and used distributed systems and databases in the past, Paxos remains mind boggling at first !

## The hard way

The best overall description I found is [this answer by Vineet Gupta on Quora](https://www.quora.com/Distributed-Systems-What-is-a-simple-explanation-of-the-Paxos-algorithm). After turning my head around it for a while, I finally gained the instinctive understanding which comes when you 'get' something.

As a way to both help others to understand Paxos faster and to burn all this in my own memory, I though it would he a good idea to illustrate it as a story (I was inspired by [A plain English introduction to CAP Theorem](http://ksat.me/a-plain-english-introduction-to-cap-theorem/) which I found really instructive; I also later discovered that the [original Paxos paper](https://www.microsoft.com/en-us/research/wp-content/uploads/2016/12/The-Part-Time-Parliament.pdf) itself related the protocol using the metaphor of a parliament).

{% img center /imgs/2017-01-16-a-plain-english-introduction-to-paxos-protocol/greek.jpg A drawing of an ancient Greek hero typing at a computer %}

## Once upon a time ...

... there were 3 brothers and sisters, Kath, Joe & Tom, living happily. They lived far away, and it was not easy for them to meet and spend some time together. Neither did they have phone or internet, for this was a long time ago. All they had to discuss and share news was good old mail ...

Unfortunately, one day, the worst happened : their parents die. All 3 are informed by a letter from the notary, telling them that they need to sell the family house in order to pay for their inherited debts. It also advises to use Paxos to agree on a price (Note : I never said the story was going to be chronologically sound !).

## The happy end

As the oldest in the family, Kath decides to take things in hand, and starts the whole thing. She knows Paxos consists of 2 phases : 'prepare' and 'accept'.

### Prepare Phase

Kath sends a signed and dated price value proposal to her brothers, by mail.

Joe and Tom both receive the letter from Kath, they think the price is fair. In order to send their agreements back to Kath, they make a copy of the proposition, mark it as agreed, date it, sign it, and send it back.

### Accept Phase

Joe lives a bit further away from Kath than Tom does, so correspondence between Kath and Tom is usually faster. Kath indeed receives the agreement from Tom first, she knows she can go on with the protocol straight away, because Paxos relies on majority, and not unanimity. In his letter, Tom agreed to the same price she proposed, so she just picks this one as the final price to agree on.

She sends new letters, called accept letters this time, to her brothers to finalize the agreement. In these letters, she specifies the price that they are agreeing on, plus the date at which it was first suggested (see Prepare Phase). When Tom and Joe receive the accept letter, they simply need to check that the time and price of the proposal to make sure it is what they agreed on, before sending back their final accept letter.

At the time when Kath receives the accept letters from her brothers, everyone knows that the price has been agreed.

[{% img center /imgs/2017-01-16-a-plain-english-introduction-to-paxos-protocol/grimm-brothers.jpg Cover of the book "The Fairy Tales of the Grimm Brothers" %}](https://www.taschen.com/pages/en/catalogue/children/all/06787/facts.the_fairy_tales_of_the_brothers_grimm.htm)

### After

She then informs the notary on the agreed price. This one sends an information letter to the Kath, Tom & Joe. The house is sold pretty quickly, leaving the family out of financial problems for the rest of their lives ...

## Shit happens

That story went unexpectedly well ! Let's see different variations about what would happen in real life.

### Joe is particularly slow to answer

Joe has never been good at paperwork ... he's always out partying and having fun, and he does not want to bother answering letters. When Joe receives the prepare letter from Kath, he does not reply straightaway but leaves it on his desk to handle later. Meanwhile, Tom answers as soon as he got the letter. As mentioned before, Paxos relies on majority, as soon as Kath gets Tom's answer, she can continue to the next phase. In fact, the accept phase also relies on majority, so she can continue to the end of the protocol if Tom continues to answer.

In this case, Joe would receive the accept letter before he sent his answer to the prepare letter, and would know that the consensus is moving on without him. He can try to catch up or not, but the consensus can be reach without him.

### Tom wants to speed things up by becoming the master

Tom has always been the hurried brother. He does not like when things linger forever but prefers things to be done quickly. As soon as he receives the letter from the notary, he starts waiting impatiently for the prepare letter from his sister. Kath, on her part, takes a lot of time to settle on a price. Not knowing what is going on, Tom decides to take action, and to takes on the master role : he sends his own copies of the prepare letters. While these letters are in the mail, Kath finally settles on a price, and sends hers.

Joe gets Tom's proposal first. Thinking that it's a change in the plan, he responds straight away by signing the proposal and taking a copy for himself. The following day, he receives Kath's proposal ! He's a bit surprised, but hopefully, Paxos tells him exactly what to do in this situation. By agreeing to Tom's proposal, he made a promise to stick to it whatever happens later. Here the date on Kath's proposal is later than on Tom's, so Joe is going to answer to Kath that he agrees but to to Tom's proposal, of which he'll join a copy.

After receiving the Joe's agreement on his proposal, Tom has the majority, and should be able to end the protocol.

What about Kath ?

She should have received Tom's proposal, and rejected it, because she had already proposed a later value. That will not prevent Tom to reach a consensus.

She should have received Joe's agreement to Tom's proposal. The same way, she might as well have received Tom's agreement to his own proposal as an answer to hers. She'd get the majority of agreements, so she might then want to push on. For the accept letter, she must pick a value that has been accepted, in this case, it's Tom's proposed value ! Everything ends as expected as she'll reach the same price as Tom.

### Tom wants a higher price an becomes the master

Imagine Tom is obsessed about money ! When he receives Kath's proposal, he's outraged ! Believing the house has a lot more value than the proposed price, he sets on to act as a master in Paxos and sends his own proposal letters to his brother and sister.

Unfortunately, when they receive his proposal, they have already agreed to Kath's older proposal, so they send him back a copy of it as an agreement. Having received agreements to Kath's value only, he cannot push forward his value. Whether he continues his Paxos or not does not really matter, as he would reach the same value as Kath would.

### River flood split between brothers and Kath

[{% img center /imgs/2017-01-16-a-plain-english-introduction-to-paxos-protocol/fairytale-map.jpg A drawing of a fairy tale map with a wide river in the middle %}](http://riniwuzhere.deviantart.com/art/Fairytale-Map-of-Wurzburg-393850325)

There's a wide river that separates Kath from Joe and Tom. While they were trying to reach consensus, the river flood, cutting all communication between the brothers and their sister. Kath might abort the consensus as she won't be able to get answers from the majority. On their side, Joe or Tom can takeover the consensus, take on the master role, and still reach a price, as they form a majority. As soon as the river would settle, the messages would arrive to both parties, eventually informing Kath that a price was accepted.

### Lots of others

You can imagine zillions of ways in which the consensus between Kath, Joe and Tom could go wrong. For example :

* Mail is so slow that Kath sends new proposals
* One letter gets lost and arrives after Kath made a new proposal
* Kath is struck by a lightning

Go ahead and execute Paxos step by step on all of them, you'll see that whatever happens, Kath, Joe and Tom will reach a price.

## More Formally

Now that you have an instinctive understanding of Paxos, I encourage you to read out [the full explanation I found on Quora](https://www.quora.com/Distributed-Systems-What-is-a-simple-explanation-of-the-Paxos-algorithm). Here is a extract with the protocol part :

> ### Protocol Steps:
>
> #### 1) Prepare Phase:
>
> * A node chooses to become the Leader and selects a sequence number x and value v to create a proposal P1(x, v). It sends this proposal to the acceptors and waits till a majority responds.
>
> * An Acceptor on receiving the proposal P1(x, v1) does the following:
>
>   * If this is the first proposal to which the Acceptor is going to agree, reply ‘agree’ – this is now a promise that the Acceptor would reject all future proposal requests < x
>   * If there are already proposals to which the Acceptor has agreed:
> compare x to the highest seq number proposal it has already agreed to, say P2(y, v2)
>     * If x < y, reply ‘reject’ along with y
>     * If x > y, reply ‘agree’ along with P2(y, v2)

> #### 2) Accept Phase
>
> * If a majority of Acceptors fail to reply or reply ‘reject’, the Leader abandons the proposal and may start again.
>
> * If a majority of Acceptors reply ‘agree’, the Leader will also receive the values of proposals they have already accepted. The Leader picks any of these values (or if no values have been accepted yet, uses its own) and sends a ‘accept request’ message with the proposal number and value.
>
> * When an Acceptor receives a ‘accept request’ message, it sends an ‘accept’ only if the following two conditions are met, otherwise it sends a ‘reject’:
>   * Value is same as any of the previously accepted proposals
>   * Seq number is the highest proposal number the Acceptor has agreed to
>
> * If the Leader does not receive an ‘accept’ message from a majority, abandon the proposal and start again. However if the Leader does receive an ‘accept’ from a majority, the protocol can be considered terminated. As an optimization, the Leader may send ‘commit’ to the other nodes.

And here are the key concepts to map my story to this formal description of Paxos.

| Story | Paxos
|-------|-------
| proposal letter (and copy of) | P(x,v)
| Date (and time) | sequence number
<br/>

At the time of slow mail based communication, using the date and time down to the second is enough to build up unique sequence numbers. In our current time of digital messages, it's another story, typical Paxos implementation assigns a different and disjoint infinite set of integers for every participant, it does not exactly follow 'time', but it's enough for the algorithm to work.
