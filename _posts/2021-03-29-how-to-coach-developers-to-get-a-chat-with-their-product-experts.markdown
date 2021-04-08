---
layout: single-mailing-list
title: How to coach developers to get a chat with their product experts
date: 2021-04-01
comments: true
categories:
- coaching
- ddd
- bdd
- refactorging
- example mapping
description: "Getting these crucial chats with product experts is often a brain-teaser! Let's coach developers so they can trigger short, practical, immediate, and online Example-Mapping sessions. These structured conversations yield just-enough details about a user story to write automated acceptance tests."
header:
  teaser: "/imgs/2021-03-29-how-to-coach-developers-to-get-a-chat-with-their-product-experts/Collaboration Injection-teaser.jpg"
  og_image: "/imgs/2021-03-29-how-to-coach-developers-to-get-a-chat-with-their-product-experts/Collaboration Injection-og.jpg"
variations:
- Getting these crucial chats with product experts is often a brain-teaser! Let's inject a short #ExampleMapping session in a quick phone call. #BDD #DDD #ProductOwner
- Product experts are already busy on the other side of the product definition work. Let's inject a short #ExampleMapping session in a quick phone call. #BDD #DDD #ProductOwner #remote
- Product experts often forgot what it means to be new on their topic. Let's use #ExampleMapping to make their implicit knowledge explicit. #BDD #DDD #ProductOwner
- Product experts tend to underestimate the details that writing working software requires. #ExampleMapping helps us explicit testable user scenarios. #BDD #DDD #ProductOwner
- The 'specification' handover mindset is still pretty alive in the workplace... Let's inject a short #ExampleMapping session in a quick phone call. #BDD #DDD #ProductOwner #remote
- Direct phone calls are still the fastest way to get in touch with someone, and it's pretty straightforward to piggyback an #ExampleMapping session on a phone call. #BDD #DDD #ProductOwner #remote
- #ExampleMapping is excellent at hacking more collaboration between developers and product experts. #BDD #DDD #ProductOwner
- #ExampleMapping is a quick way to capture just-enough details for devs to build the right thing. #BDD #DDD #ProductOwner
- #ExampleMapping is quick, simple, easy to learn, and #remote friendly! Give it a try! #BDD #DDD #ProductOwner
- #ExampleMapping is perfect for injecting in a telephone call. #BDD #DDD #ProductOwner #remote
- Someone in the #ExampleMapping session is the notetaker. This person keeps track of the conversation by writing and arranging cards on the table. #BDD #DDD #ProductOwner
- How to practice #ExampleMapping with your team: 1. Find a user story that one of your coachees knows well. 2. Take 30 minutes. 3. Try #ExampleMapping. #BDD #DDD #ProductOwner #deliberatePractice
- Traditional #ExampleMapping needs everyone to be in the same room! This is yet another barrier to reach the product expert. Did you know #remote #ExampleMapping is easy? #BDD #DDD #ProductOwner
- It's effortless to run a #remote #ExampleMapping session [this online collaborative spreadsheet]({{site.url}}/imgs/2021-03-29-how-to-coach-developers-to-get-a-chat-with-their-product-experts/ExampleMappingTemplate.ods) template. #BDD #DDD #ProductOwner
- Next time you hear someone having troubles understanding what they are supposed to do: get them into trying #ExampleMapping with the product expert. #BDD #DDD #ProductOwner
---
_**Getting these crucial chats with product experts is often a brain-teaser!**_ _Let's show devs how to trigger short, practical, immediate Example-Mapping sessions_.

![Drawing of the work Collab. The C is a telephone handle, while 'ollab' is written on a syringe, injecting something in the telephone. Example-Mapping is short and lightweight enough to be done through any phone call with the product experts.]({{site.url}}/imgs/2021-03-29-how-to-coach-developers-to-get-a-chat-with-their-product-experts/Collaboration Injection.jpg)

> Unfortunately, the tools have taken over the meaning, and I need to chant, "The card is a token for an ongoing conversation" over and over. [George Paci [extremeprogramming@groups.io](https://groups.io/g/extremeprogramming/topic/what_has_changed_for_you_over/39418691?p=Created,,,200,1,0,0)]

> Engineers no longer can talk to users. [Slava Imeshev [extremeprogramming@groups.io](https://groups.io/g/extremeprogramming/topic/what_has_changed_for_you_over/39418691?p=Created,,,200,1,0,0)]

> What we did was wrong. - [Note: and so we had to] Rip out the wrong code and tests and start over with the right functional test. [Steve Gordon [extremeprogramming@groups.io](https://groups.io/g/extremeprogramming/topic/what_has_changed_for_you_over/39418691?p=Created,,,200,1,0,0)]

## Product experts are crucial... Yet unreachable!

Developers won't do an excellent job without first-hand domain knowledge. It is no coincidence if XP recommends an [onsite customer](http://www.extremeprogramming.org/rules/customer.html) or Scrum a dedicated [Product Owner](https://www.scrum.org/resources/what-is-a-product-owner).

When developers and product experts don't collaborate enough:

*   The team risks building the wrong stuff. As a result, devs will need to throw away a large chunk of work and rebuild it.
*   The team creates more bugs. In the end, everyone spends more time bug fixing and less time building new features.

In the long term, these problems erode trust and leave no time for more valuable topics.

Unfortunately, it's often tough to get the needed information from product experts!

*   First, **product experts are already busy on the other side of the product definition work.** Spending time with developers often takes a back seat.
*   Second, [being experts](https://medium.com/@cscalfani/why-experts-make-bad-teachers-ccaed2df029b), **they forgot what it means to be new on their topic**. They tend to omit many details, thinking these are obvious or that 'everybody knows this'. Unfortunately, developers, who are not product experts, need these details!
*   On top of that, they have no idea what programming is about. **Product experts tend to underestimate the details that writing working software requires.**

![Picture of a yellow and a blue question marks in heap of grey question marks. Programming is full of details and questions, and product experts or rarely aware of the amount of details needed to write working software]({{site.url}}/imgs/2021-03-29-how-to-coach-developers-to-get-a-chat-with-their-product-experts/knowledge.jpg)

*   Finally, **the 'specification' handover mindset is still pretty alive in the workplace**. Many product experts' job is to write detailed specifications for developers to execute.

## Example-Mapping injection!

Here is a recipe to get product experts involved in a conversation about a story.

Are you noticing collaboration issues between your coachees and the product experts? Here is what you can do:

1.  Find 1 or 2 team members who are suffering from a lack of collaboration with product experts.
2.  Make sure they are willing to experiment with you.
3.  Present and practice Example-Mapping with them
4.  Ask them to be on the lookout about situations that would need a product expert. Tell them to call your little group when they spot such a problem.
5.  As soon as this happens:
    1.  Call the domain expert as a group.
    2.  Tell him you are blocked.
    3.  Ask for an on-the-spot 15 minutes remote chat.
6.  If he cannot right now, schedule something with him as soon as possible.
7.  Use these 15 minutes to run an Example-Mapping session.
8.  Help to convert the notes from Example-Mapping to automated acceptance tests.
9.  Repeat until Example-Mapping becomes a habit

It's as simple as that! **Direct phone calls are still the fastest way to get in touch with someone**. It's like if bureaucracy makes us forget that! Fortunately, technical agile coaches are here to challenge the status quo 😉

## An Example-Mapping success story

![Picture of an opened book with drawings of a pirate and a ship getting out of the book. Here is a one of my success story with Example-Mapping.]({{site.url}}/imgs/2021-03-29-how-to-coach-developers-to-get-a-chat-with-their-product-experts/storytelling.jpg)

A few weeks ago, I worked with a team that wanted to collaborate more with the product experts. They had tried a different approach, but with mitigated results up to now.

For Example, I had helped them to run a [Big Picture Event Storming]({{site.url}}/misadventures-with-big-design-up-front/) a few months ago. The feedback from the different audiences showed the communication gap:

*   Developers had enjoyed the Event Storming. They said it had helped them to understand the domain a lot better
*   Product experts, though, estimated that they had not shared that much information!

This time, I paired with a developer to experiment around [Behavior Driven Development](https://en.wikipedia.org/wiki/Behavior-driven_development). We started the day by calling a product expert, and we ran a 30 minutes Example-Mapping session.

At the end of this experiment, they decided not to take 100% of BDD but to stick to Example-Mapping sessions! Here is the kind of feedback that we got from product people:

> I really liked behind included in the work, engineer and designer working together is still a pleasure.

> I already started to look at the domain from an engineering point of view in order to improve my design thinking.

**Example-Mapping is excellent at hacking more collaboration between developers and product experts.**

## What is Example-Mapping?

![Picture of a man writing 'workshop' on a whiteboard on the wall. Example-Mapping is a very lightweight conversation format to capture the details of a user story.]({{site.url}}/imgs/2021-03-29-how-to-coach-developers-to-get-a-chat-with-their-product-experts/workshop.jpg)

At this point, you must be wondering what Example-Mapping is? It's a structured conversation format that was invented by the [Cucumber team](https://cucumber.io/blog/bdd/example-mapping-introduction/). It's a way to capture the business rules and associated examples out of a story. 

> **It captures just-enough details for devs to build the right thing.**

It's then straightforward to convert Example-Mapping notes into automated acceptance tests. No more throwaway and rewrite, way less bug fixing... Example-Mapping is one step more towards calmer work!

In our situation, it also has many extra advantages:

*   **Sessions are quick.** There is no need to schedule a formal meeting.
*   **The format is simple.** We won't frighten the product expert.
*   **It's easy to learn.** We can master it in 1 or 2 hours max; we don't need to organize a long training.
*   **It's remote-friendly.** This makes **Example-Mapping perfect for injecting in a telephone call.**

### What does Example-Mapping look like

{% assign figure_path="/imgs/2021-03-29-how-to-coach-developers-to-get-a-chat-with-their-product-experts/example-mapping-cards.jpg" | absolute_url %}

{% assign figure_alt="Illustrative Example-Mapping cards in their typical layout. Example-Mapping is a format for quick and cheap, domain-heavy conversation. It's lightweight and informal enough to get the product expert in without having to organize a formal meeting." %}

{% capture figure_caption %}
Sample Example-Mapping cards on the introductory [post about Example-Mapping](https://cucumber.io/blog/2015/12/08/example-mapping-introduction), by [Matt Wynne](https://twitter.com/mattwynne?lang=fr)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

Example-Mapping uses colored cards to capture the details about user stories:

*   A yellow card for the title of the story
*   Blue cards for business rules
*   Green cards for example-scenarios associated with each business rule
*   Red cards for problems or unanswered questions

With this in mind, the group simply discusses the story and tries to find the rules and examples. Everyone should bring their unique point of view to make the exchange more valuable. **Someone in the group is the notetaker. This person keeps track of the conversation by writing and arranging cards on the table.**

That's almost all there is to know!

## How to coach Example-Mapping

Example-Mapping is straightforward, but it still needs a bit of practice to get used to. On top of that, you want the product expert to have an excellent first experience with it.

### First, learn how experts are doing.

There is a lot of existing material to learn Example-Mapping on the web. The Cucumber team created a webinar to teach Example-Mapping. The simplest thing to do is to watch it with your coachees and have a quick follow-up discussion.

You might also have a look at these other references, depending on your styles of learning:

*   [Cucumber's introductory blog post about Example-Mapping](https://cucumber.io/blog/bdd/example-mapping-introduction/)
*   [Another blog post](https://cucumber.io/blog/bdd/your-first-example-mapping-session/) from them
*   If you prefer to go in-depth, you might have a read at [BDD Books: Discovery](https://leanpub.com/bddbooks-discovery)
*   There is even [a free course on Pluralsight](https://www.pluralsight.com/courses/codemash-session-24), but I did not went through it

Would you instead give a short crash-course yourself? [Here is a presentation]({{site.url}}/imgs/2021-03-29-how-to-coach-developers-to-get-a-chat-with-their-product-experts/BDD and Example Mapping.pdf) made up by my colleague [Matthieu Tournemire](https://www.linkedin.com/in/matthieu-tournemire/). We've been using it successfully at Murex for a few years now.

{% assign figure_path="/imgs/2021-03-29-how-to-coach-developers-to-get-a-chat-with-their-product-experts/BDD and Example Mapping.jpeg" | absolute_url %}

{% assign figure_alt="The title slide of a presentation support for a crash course about Example-Mapping. You should be able to get through it with your coachees in less than 30 minutes." %}

{% capture figure_caption %}
By [Matthieu Tournemire](https://www.linkedin.com/in/matthieu-tournemire/) and [Philippe Bourgau]({{site.url}}), under [CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/), [Full Presentation]({{site.url}}/imgs/2021-03-29-how-to-coach-developers-to-get-a-chat-with-their-product-experts/BDD and Example Mapping.pdf)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

### Second, practice!

Your coachees should now have a clear idea about how an Example-Mapping session should go. Let's get them to practice a bit! **Find a user story that one of your coachees knows well and that the others don't. Take 30 minutes to try Example-Mapping on this story.** Park any question or blocking point on red cards.

Run as many sessions as needed for your coachees to feel really at ease with Example-Mapping. It won't take you more than 2 hours in total.

## Tools

Example-Mapping was first thought of as a co-localized activity. If you are all in the same room, all the material you need is a set of colored cards and a few sharpies.

Co-localized Example-Mapping is simple, but...

*   Sometimes, co-localization is not an option!
*   Even if you are all in the same building, **Example-Mapping needs everyone to be in the same room! This is yet another barrier to reach the product expert.**

**It's effortless to run an Example-Mapping remotely!** I don't know of a dedicated Example-Mapping online tool, but here workarounds:

*   **[An online collaborative spreadsheet]({{site.url}}/imgs/2021-03-29-how-to-coach-developers-to-get-a-chat-with-their-product-experts/ExampleMappingTemplate.ods) might be all that you are looking for. Here is a template you can reuse.** Fill any cell, and it will color according to the row's nature.

{% assign figure_path="/imgs/2021-03-29-how-to-coach-developers-to-get-a-chat-with-their-product-experts/ExampleMappingTemplate.jpg" | absolute_url %}

{% assign figure_alt="Screenshot of a spreadsheet that we can use as a simple Example-Mapping Online Tool. Simple tools have the advantages of being usable by everyone" %}

{% capture figure_caption %}
By [Philippe Bourgau]({{site.url}}), under [CC BY-SA 4.0](http://creativecommons.org/licenses/by-sa/4.0/), [full spreadsheet template]({{site.url}}/imgs/2021-03-29-how-to-coach-developers-to-get-a-chat-with-their-product-experts/ExampleMappingTemplate.ods)
{% endcapture %}

{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

*   An online whiteboard, like [Miro](https://miro.com/), works wonders to simulate cards.
*   Last, one of the significant advantages of using real cards and pen is that you can draw! A picture is worth a thousand words. It's not a surprise that drawings are great for capturing scenarios. If you have a device that lets you draw well enough, then, by all means, use it!

Don't forget to share the screen so that the product expert can see what is being captured. The above tools also enable collaborative editing. Once everyone is used to the format, it's better to share the link instead of the screen!

## Give it a try!

Keep your ears open when you are with your coachees. **Next time you hear someone having troubles understanding what they are supposed to do:**

*   "I don't understand the specs!"
*   "I have no specs!"
*   "I don't know how to test this story!"
*   "Jim (the product guy) is never available!"

**Try to get them into trying Example-Mapping with the product expert.**

There is more to Example-Mapping than what I quickly presented. For Example, you can also use it to...

*   Detect stories that are not ready.
*   Detect stories that are too big and split them.
*   Write and automate [Gherkin](https://cucumber.io/docs/gherkin/) scenarios.
*   ...

If you have questions about Example-Mapping, don't hesitate to ask! I'd also love to read how your own experience went: the comment section is yours.

----

Here are other posts that might interest you:

*   [Organization refactoring: Event Storming and DDD injection]({{site.url}}/organization-refactoring-event-storming-and-ddd-injection-part-1/). It presents a 'refactorging' technique to introduce Event-Storming after Example-Mapping
*   [5 Views to Capture the Outputs of an Event-Storming workshop]({{site.url}}/5-views-to-capture-the-outputs-of-an-event-storming-workshop/). It explains how to use Example-Mapping to capture the outputs of an Event-Storming workshop
*   [First rule of DDD is: let’s not talk about DDD]({{site.url}}/first-rule-of-ddd-is-lets-not-talk-about-ddd/). Fun infographics explaining that it's better to _do_ DDD instead of frightening people with it
*   [Event Storming lessons from Post-It haters]({{site.url}}/event-storming-lessons-from-post-it-haters/). A reflection about why stickies are so effective for group collaboration
