---
layout: post
title: "Why eXtreme Programming works ? (Lean Software Development part 2)"
date: 2014-08-29 07:03
comments: true
categories:
 - lean
 - agile
 - xp
keywords: "XP, eXtreme Programming, Lean, Lean software development, Agile software development, explanation"
description: "Using the lean principles, let's analyse the 12 XP core practices and explain why and how they work"
---
I've been programming for quite some time now, in different teams, using various methodologies. I also had the luck to do XP for at least 3 different projects. To me the conclusion is obvious, [XP](http://www.extremeprogramming.org/) delivers more. Even better, programmers working with XP seem to be happier. The only thing I've seen that works better than XP, is fine tunning it once the team has mastered the main principles.

{% img center /imgs/2014-09-11-whats-in-kent-becks-extreme-programming-lean-diet-lean-software-development-part-2/lean-extreme.jpg "An extreme diet pill bottle" %}

[XP was first put in place](http://en.wikipedia.org/wiki/Extreme_programming#History) at the Chrysler C3 project for SmallTalk performance issues. After being called for performance issues, [Kent Beck](http://www.threeriversinstitute.org/) discovered that these were only the tip of the iceberg, everything was going astray. As the expert in the room, people started to ask him how to organize. I remember reading some time ago that without having thought about it before, he gathered all the most efficient programming techniques he knew together into a new process. XP was born.

So the question is : what did Kent Beck put in XP so that it works so well ? Let's go through the Flow book and its 175 lean product development principles, to see if we get some explanations.

{% img center /imgs/2014-09-11-whats-in-kent-becks-extreme-programming-lean-diet-lean-software-development-part-2/circles.jpg Concentric circles featuring the 12 core xp practices" %}

Going through [the 12 core XP practices](http://c2.com/cgi/wiki?ExtremeProgrammingCorePractices), the main Scrum ceremonies and a few common additions, I'll try to explain why they work through the Flow book's principles.

## Whole Team

This is the same thing as Pizza Team, Feature team, Cross Functional Team. It just means put everyone involved in the creation of the product in the same room (On site customer, sales, product people, programmers, quality controllers, operation people ...).

Ref | The principle of ... | Summary | page
----|------|---------|------
B17 | Proximity | Proximity enables small batch sizes | 129
W12 | T-Shaped resources | Develop people who are deep in one area and broad in many | 155
W13 | Skill overlap | Cross-train resources at adjacent processes | 156
F24 | Alternate routes | Develop and maintain alternate routes around points of congestion | 201
F25 | Flexible resources | Use flexible resources to absord variation | 202
FF14 | Locality of feedback | Whenever possible, make the feedback local | 226
FF19 | Colocation | Colocation improves almost all aspects of communication | 230
FF23 | Overlapping measurement | To align behaviors, reward people for the work of others | 233
D7 | Alignment | There is more value created with overall alignment than local execellence | 252
D13 | Peer-level coordination | Tactical coordination should be local | 257
D18 | Response frequency | We can't respond faster than our (internal) response frequency | 261
D22 | Face-to-face communication | Exploit the speed and bandwidth of face-to-face communications | 263

## Planning Game

The work is split into user stories. The customer then estimates the business value of each story, before the programmers poker estimate the required work for them. The game is then to maximize the scheduled business value creation for the coming iteration (1 to 3 weeks).

Ref | The principle of ... | Summary | page
----|------|---------|------
E4 | Economic value-added | The value added by an activity is the change in the economic value of the work product | 32
E7 | Imperfection | Even imperfect answers improve decision making | 36
E9 | Continuous economic tradeoffs | Economic choices must be made continuously | 37
E10 | Perishability I | Many economic choices are more valuable when made quickly | 38
E14 | Market I | Ensure decision makers feel both cost and benefit | 42
E15 | Optimium decision timing | Every decision has its optimum economic timing | 44
Q10 | Queueing discipline | Queue cost is affected by the sequence in which we handle the jobs in the queue | 69
Q13 | Queue size control I | Don't control capacity utilization, control queue size | 75
Q14 | Queue size control II | Don't control the cycle time, control queue size | 76
V5 | Variability pooling | Overall variation decreases when uncorrelated random tasks are combined | 95
V6 | Short-term forcasting | Forecasting becomes exponentially easier at short time-horizons | 96
B18 | Run length | Short run lengths reduce queues | 130
B20 | Batch content | Sequence first that which adds value most cheaply | 131
W1 | WIP constraints | Constrain WIP to control cycle time and flow | 145
W3 |  global constraints  | Use global constraints for predictable and permanent bottlenecks | 147
W6 | Demand blocking | Block all demand when WIP reaches its upper limit | 151
W8 | Flexible requirements | Control WIP by shedding requirements | 152
W19 | Adaptive WIP constraints | Adjust WIP constraints as capacity changes | 162
F5 | Periodic resynchronization | Use a regular cadence to limit the accumulation of variance | 177
F7 | The cadence reliability | Use cadence to make waiting times predictable | 179
F9 | Cadenced meetings | Schedule frequent meetings using a predictable cadence | 180
F18 | The local priority | Priorities are inherently local | 196
FF10 | Agility I | We don't need long planning horizons when we have a short turning radius | 222
FF21 | Hurry-up-and-wait | Large queues make it hard to create urgency | 232
D4 | Opportunity | Adjust the plan for unplanned obstacles and opportunities | 249
D14 | Flexible plans | Use simple modular plans | 258

## Small Releases

Make a lot of small releases.

Ref | The principle of ... | Summary | page
----|------|---------|------
Q2 | Queueing waste | Queues are the root cause of the majority of economic waste in product development | 56
V8 | Repetition | Repetition reduces variation | 99
B1-8 | Batch size | Reducing batch size reduces cycle time, variability in flow, risk, overhead and accelerates feedback, while large batches reduces efficiency, lower motivation and urgency and cause exponential cost and schedule growth  | 112-117
F8 | Cadenced batch size enabling | Use a regular cadence to enable small batch size | 179
FF7 | Queue reduction by feedback | Fast feedback enables smaller queues | 220
FF8 | Fast-learning | Use fast feedback to make learning faster and more efficient | 220
FF11 | Batch size feedback | Small batches yield fast feedback | 223
FF20 | Empowerment by feedback | Fast feedback gives a sense of control | 231
FF21 | Hurry-up-and-wait | Large queues make it hard to create urgency | 232
D23 | Trust | Trust is built through experience | 264

## Customer Tests

The customer assists the programmers into writing automated use case tests.

Ref | The principle of ... | Summary | page
----|------|---------|------
V16 | Variability displacements | Move variability to the process stage where its cost is lowest | 107
B17 | Proximity | Proximity enables small batch sizes | 129
F30 | Flow conditioning | Reduce variability before a bottleneck | 208
FF7 | Queue reduction by feedback | Fast feedback enables smaller queues | 220
FF8 | Fast-learning | Use fast feedback to make learning faster and more efficient | 220
FF11 | Batch size feedback | Small batches yield fast feedback | 223
FF14 | Locality of feedback | Whenever possible, make the feedback local | 226
FF19 | Colocation | Colocation improves almost all aspects of communication | 230
FF20 | Empowerment by feedback | Fast feedback gives a sense of control | 231
D8 | Mission | Specify the end state, its purpose and the minimum possible constraints | 252
D16 | Early contact | Make early and meaningful contact with the problem | 259

## Collective Code Ownership

Every programmer is responsible to evolve and maintain all the source code, and not just his part.

Ref | The principle of ... | Summary | page
----|------|---------|------
Q7 | Queuing structure | Serve pooled demand with reliable high-capacity servers | 64
W12 | T-Shaped resources | Develop people who are deep in one area and broad in many | 155
F25 | Flexible resources | Use flexible resources to absord variation | 202
FF23 | Overlapping measurement | To align behaviors, reward people for the work of others | 233
D1 | Perishablility II | Decentralize control for problems and opportunities that age poorly | 246
D4 | Virtual centralization | Be able to quickly reorganize decentralized resources to create centralized power | 250
D5 | Inefficiency | The inefficiency of decentralization (as opposed to silos) can cost less than the value of faster reponse time | 251

## Coding Standards

All programmers agree on coding conventions for all the source code they write.

Ref | The principle of ... | Summary | page
----|------|---------|------
W12 | T-Shaped resources | Develop people who are deep in one area and broad in many | 155
F25 | Flexible resources | Use flexible resources to absord variation | 202

## Sustainable Pace

As the value created by a knowledge work does not increase linearly with the time spent, it's wiser to work a number of hours that both maximizes the work done while allowing the team to keep on going forever if needed.

Ref | The principle of ... | Summary | page
----|------|---------|------
E5 | Inactivity | Watch the work product, not the worker | 33
Q3 | Queueing capacity utilization | Capacity utilization increases queues exponentially | 59
B9 | Batch size death spiral | Large batches lead to even large batches | 118

## Metaphor

Whether an actual metaphor or an ubiquitous language, the idea is to build a shared customer oriented architecture and design of the system.

Ref | The principle of ... | Summary | page
----|------|---------|------
W12 | T-Shaped resources | Develop people who are deep in one area and broad in many | 155
F25 | Flexible resources | Use flexible resources to absord variation | 202

## Continuous Integration

All the code of all the team is merged, tested, packaged and deployed very frequently (many times per day)

Ref | The principle of ... | Summary | page
----|------|---------|------
Q2 | Queueing waste | Queues are the root cause of the majority fo economic waste in product development | 56
V8 | Repetition | Repetition reduces variation | 99
B1-8 | Batch size | Reducing batch size reduces cycle time, variability in flow, risk, overhead and accelerates feedback, while large batches reduces efficiency, lower motivation and urgency and cause exponential cost and schedule growth  | 112-117
B12 | Low transaction cost | Reducing the transaction cost per batch lowers overall costs | 123
B16 | Transport batches | The most important batch is the transport batch | 128
B19 | Infrastructure | Good infrastructure enables small batches | 130
F29 | Resource centralization | Correctly managed, centralized resources can reduce queues | 206
FF7 | Queue reduction by feedback | Fast feedback enables smaller queues | 220
FF11 | Batch size feedback | Small batches yield fast feedback | 223
FF16 | Multiple control loops | Embed fast control loops inside slow loops | 228
FF21 | Hurry-up-and-wait | Large queues make it hard to create urgency | 232

## Test Driven Development

Programmers write failing tests (both customer and unit tests) before actual real code

Ref | The principle of ... | Summary | page
----|------|---------|------
V15 | Iteration speed | it is usually better to improve iteration speed than defect rate | 106
V16 | Variability displacements | move variability to the process stage where its cost is lowest | 107
B1-8 | Batch size | Reducing batch size reduces cycle time, variability in flow, risk, overhead and accelerates feedback, while large batches reduces efficiency, lower motivation and urgency and cause exponential cost and schedule growth  | 112-117
F30 | Flow conditioning | Reduce variability before a bottleneck | 208
FF7 | Queue reduction by feedback | Fast feedback enables smaller queues | 220
FF8 | The fast-learning principle | Use fast feedback to make learning faster and more efficient | 220
FF11 | The batch size principle of feedback | Small batches yield fast feedback | 223
FF14 | The locality principle of feedback | Whenever possible, make the feedback local | 226
FF16 | The principle of multiple control loops | Embed fast control loops inside slow loops | 228
FF20 | The empowerment principle of feedback | Fast feedback gives a sense of control | 231

## Refactoring

Programmers improve the design of the system continuously, meaning in very frequent baby steps. This removes the need for a big design up front.

Ref | The principle of ... | Summary | page
----|------|---------|------
E13 | The first decision rule principle | Use decision rules to decentralize economic control | 41
V9 | The reuse principle | Reuse reduces variability | 100
B9 | The batch size death spiral principle | Large batches lead to even large batches | 118
B19 | The infrastructure principle | Good infrastructure enables small batches | 130
F28 | The principle of preplanned flexibility | For fast responses, preplan and invest in flexibility | 205
D12 | The second agility principle | Develop the ability to quickly shift focus | 255

## Simple Design

Do the simplest thing that could possibly work. No need to write things that don't add business value yet. (Note that simple does not mean easy)

Ref | The principle of ... | Summary | page
----|------|---------|------
E19 | Insurance | Don't pay more for insurance than the expected loss | 49
V12 | Variability consequences | Reducing consequences is usually the best way to reduce the cost of variability | 103
B9 | Batch size death spiral | Large batches lead to even large batches | 118
B15 | Fluidity | Loose coupling between product subsystems enables small batches | 126
W12 | T-Shaped resources | Develop people who are deep in one area and broad in many | 155
F25 | Flexible resources | Use flexible resources to absorb variation | 202
D12 | Agility II | Develop the ability to quickly shift focus | 255

## Pair Programming

Programmers sit at the same computer in pairs to write code. One write the code, and the other comments. The keyboard changes hands very frequently.

Ref | The principle of ... | Summary | page
----|------|---------|------
B13 | Batch size diseconomies | Batch size reduction saves much more than you think | 124
B21 | Batch size I | Reduce the batch size before you attack bottlenecks | 133
W12 | T-Shaped resources | Develop people who are deep in one area and broad in many | 155
W13 | Skill overlap | Cross-train resources at adjacent processes | 156
F25 | Flexible resources | Use flexible resources to absord variation | 202
F30 | Flow conditioning | Reduce variability before a bottleneck | 208
FF14 | Locality of feedback | Whenever possible, make the feedback local | 226
FF16 | Multiple control loops | Embed fast control loops inside slow loops | 228
FF19 | Colocation | Colocation improves almost all aspects of communication | 230
FF20 | Empowerment by feedback | Fast feedback gives a sense of control | 231
D13 | Peer-level coordination | Tactical coordination should be local | 257
D22 | Face-to-face communication | Exploit the speed and bandwidth of face-to-face communications | 263

## Spikes

Programmers conduct time boxed experiment to gain insights

Ref | The principle of ... | Summary | page
----|------|---------|------
V2 | Asymmetric payoffs | Payoff asymmetries enable variability to create economic value | 88
V7 | Small experiments | Many small experiments produce less variation than one big one | 98

## Slack Time

Keep some buffer time at the end of the iteration where team members can either close the remaining stories or work on improvements.

Ref | The principle of ... | Summary | page
----|------|---------|------
V11 | Buffer | Buffers trade money for variability reduction | 101
B9 | Batch size death spiral | Large batches lead to even large batches | 118
B19 | Infrastructure | Good infrastructure enables small batches | 130
F6 | Ccadence capacity margin | Provide sufficient capacity margin to enable cadence | 178
D12 | Agility II | Develop the ability to quickly shift focus | 255
D15 | Tactical reserves | Decentralize a portion of reserves | 258

## Daily Stand Up Meeting

The whole team starts every working day by a quick synchronization meeting

Ref | The principle of ... | Summary | page
----|------|---------|------
B3 | Batch size feedback | Reducing batch size accelerate feedback | 113
W12 | T-Shaped resources | Develop people who are deep in one area and broad in many | 155
W20 | Expansion control | Prevent uncontrolled expansion of work | 163
F5 | Periodic resynchronization | Use a regular cadence to limit the accumulation of variance | 177
F9 | Cadenced meetings | Schedule frequent meetings using a predictable cadence | 180

## Retrospective meeting

At the end of every iteration, the team meets for a retrospective, discussing what they did in order to improve

Ref | The principle of ... | Summary | page
----|------|---------|------
B9 | Batch size death spiral | Large batches lead to even large batches | 118
B19 | Infrastructure | Good infrastructure enables small batches | 130
F9 | Cadenced meetings | Schedule frequent meetings using a predictable cadence | 180
FF8 | Fast-learning | Use fast feedback to make learning faster and more efficient | 220
FF20 | Empowerment by feedback | Fast feedback gives a sense of control | 231
D21 | Regenerative initiative | Cultivating initiative enables us to use initiative | 263

## Demos

At the end of every iteration, the team demonstrates what it did to the customer

Ref | The principle of ... | Summary | page
----|------|---------|------
E14 | Market I | Ensure decision makers feel both cost and benefit | 42
B3 | Batch size feedback | Reducing batch size accelerate feedback | 113
B9 | Batch size death spiral | Large batches lead to even large batches | 118
F9 | Cadenced meetings | Schedule frequent meetings using a predictable cadence | 180
FF7 | Queue reduction by feedback | Fast feedback enables smaller queues | 220
FF8 | Fast-learning | Use fast feedback to make learning faster and more efficient | 220
FF20 | Empowerment by feedback | Fast feedback gives a sense of control | 231
FF21 | Hurry-up-and-wait | Large queues make it hard to create urgency | 232
FF23 | Overlapping measurement | To align behaviors, reward people for the work of others | 233
D23 | Trust | Trust is built through experience | 264

## Visual Whiteboard

Display the stories of the current sprint on the wall in a 3 columns whiteboard (TODO, DOING, DONE)

Ref | The principle of ... | Summary | page
----|------|---------|------
W23 | Visual WIP | Make WIP continuously visible | 166
F27 | Local transparency | Make tasks and resources reciprocally visible at adjacent processes | 204
D17 | Decentralized information | For decentralized decisions, disseminate key information widely | 260

## Conclusion

Whaoo that's a lot ! I did not expect to find so many principles underlying XP (I even removed principles that were not self explanatory). For the XP practitioner that I am, writing this blog post helped me to deepen understanding of it. As XPers know, XP is quite opiniated, it's both a strength and a weakness if you try to apply it outside of its zone of comfort. This explains why some lean subjects are simply not addressed by XP.

To summarize, here is where XP hits the ground :

- In spite of its image of 'a process for nerdy programmers' XP turns out to be a quite evolved lean method !
- XP anihilates batch size and feedback time
- Pair programming is well explained

And here is where to look at when you'll need to upgrade XP

- Better tradeoffs might be found with a real quantitative economical framework
- Synchronization principles might help working with other teams

Kent Beck could not have read the Flow book when he invented XP, but it seems he just had a bit of advance on the rest of us ...

This was part 2 of my [suite of article about Lean Software Development](/the-flow-book-summary-lean-software-development_part_1/), Part 1 was [The Flow book summary](/the-flow-book-summary-lean-software-development_part_1/), Part 3 will be [How to measure your speed with your business value ?](/how-to-measure-your-speed-with-your-business-value-lean-software-development-part-3/)
