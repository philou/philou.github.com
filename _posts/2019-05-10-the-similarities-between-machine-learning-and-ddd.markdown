---
layout: single
title: "The Similarities between Machine Learning and DDD"
date: 2019-06-13
comments: true
categories:
 - ddd
 - machine learning
 - event storming
 - data driven
description: "During a data science project, we discovered that DDD (Domain Driven Design) concepts are useful for machine learning. The Ubiquitous Language makes communication easier. Identifying Bounded Contexts, Entities and Values help with code evolvability. Event Storming gets things started quickly."
header:
   teaser: /imgs/2019-05-10-the-similarities-between-machine-learning-and-ddd/machine-learning-ddd-teaser.jpeg
   og_image: /imgs/2019-05-10-the-similarities-between-machine-learning-and-ddd/machine-learning-ddd-og.jpeg
---
_We discovered that [DDD](https://en.wikipedia.org/wiki/Domain-driven_design) concepts like Event Storming, Bounded Contexts, Ubiquitous Language, Entities and Values are useful in machine learning projects._

![Drawing of a split brain, 1 side biologic the other electronic, with DDD appearing on it. DDD can contribute a lot to Machine learning.]({{site.url}}/imgs/2019-05-10-the-similarities-between-machine-learning-and-ddd/machine-learning-ddd.jpeg)

## Story of Ismail's internship

A few months ago, had the chance to welcome [Ismail](https://twitter.com/ismailham91)  as a [Machine Learning](https://en.wikipedia.org/wiki/Machine_learning) intern. He worked on finding end-to-end tests that are most likely to fail given a commit. (Full story coming soon, so [stay tuned](http://eepurl.com/dxKE95) 😀)

Even if [I had already played a bit with machine learning](/how-i-got-my-feet-wet-with-machine-learning-with-the-first-20-hours/), I'm still a newbie on the matter. As I watched Ismail work, connections between DDD ([Domain Driven Design](https://en.wikipedia.org/wiki/Domain-driven_design)) and machine learning became obvious.

## Flow of Machine Learning

Before I dig into the similarities with DDD, let me illustrate the flow of machine learning.

![A schema with: Define what you want to predict -> Understand the domain -> Extract the data and prototype a model -> Run the learning model -> Study the results -> Find ideas for improvements -> Repeat...]({{site.url}}/imgs/2019-05-10-the-similarities-between-machine-learning-and-ddd/machine-learning-flow.jpeg)

## Similarities with DDD

From the schema above, we can see that once we have decided on our goal, the next step is to understand the domain. But any further improvement also starts by digging deeper into the domain... Exactly what DDD advocates to build software systems.

> 💡 Like DDD, Machine Learning relies on understanding the domain.

Here are selection fo DDD concepts that should be useful to machine learning.

### Ubiquitous Language

The [ubiquitous language](https://martinfowler.com/bliki/UbiquitousLanguage.html) is a dictionary of all the key concepts in the domain. It should improve communication between the data scientists and the domain experts. It should become easier for the data scientist to understand what the domain expert says. In return, it should be easier for the later to understand and give feedback about the models.

### Bounded Contexts

Large domains are too big to be manageable. It's a good practice to identify sub-domains that we call [bounded contexts](https://martinfowler.com/bliki/BoundedContext.html).

DDD taught us that factorizing code between bounded context can be dangerous. Here is an example. An order in the shipping context will not share much with the same order in the shopping cart context. Handling both of these in the same code creates maintenance problems.

![Schema showing extraction from data]({{site.url}}/imgs/2019-05-10-the-similarities-between-machine-learning-and-ddd/extraction.png)

Data Science involves some code too, especially some data extraction code. Following the DDD principles, we should not try to factorize data extraction code that target different contexts... even if they start from the same source!

The main benefit is to make the extraction code easier to evolve and refactor.

### Entities and Values

A key phase of machine learning is feature engineering. This is modeling the data on which the model will run.

DDD suggests modeling data within a bounded context using [Entities and Values](https://en.wikipedia.org/wiki/Domain-driven_design#Building_blocks) that map the underlying sub-domain. The code gains independence from any other concern, in particular technical infrastructure. As a result, it should be more stable and easier to evolve over time.

Suppose we model features like we would model Entities and Values. We can expect features to be more stable and easier to evolve over time as well. In particular, it should be easier to completely substitute the data source for a new one.

## Start with Event Storming!

{% assign figure_path="/imgs/2019-05-10-the-similarities-between-machine-learning-and-ddd/event-storming.jpg" | absolute_url %}
    
{% assign figure_alt="Photo of an event storming. This workshop grew out of the DDD community and is an accelerator to share knowledge between domain and technical experts. As technical experts, Data Scientist should benefit from it too!" %}
    
{% capture figure_caption %}
Photo from [Mathias Verraes](https://twitter.com/mathiasverraes)'s [blog](http://verraes.net/2013/08/facilitating-event-storming/)
{% endcapture %}
    
{% include figure image_path=figure_path alt=figure_alt caption=figure_caption %}

Next time I start something similar, I'll start by an [Event Storming](https://www.eventstorming.com/). It's a collaborative and exploratory design workshop that emerged from the DDD community.

> 💡 I'll start my next machine learning project by an Event Storming workshop.

It's great at creating shared understanding on the domain in record time. This should get data scientists started in 1 or 2 days instead of weeks. A better start means a more sustainable pace throughout all the project.

With this shared understanding, Event Storming helps to [build the Ubiquitous Language](/5-views-to-capture-the-outputs-of-an-event-storming-workshop/).

Finally, we can [use Event Storming to identify bounded contexts](/drafting-a-functional-architecture-vision-with-ddd-event-storming-part-1/). Within bounded contexts, it should be easy to model features as entities.

Running an Event Storming workshop is no rocket science. I wrote [a series of blog post where I explain how to use Event Storming to identify the above artifacts](/misadventures-with-big-design-up-front/).

## Open question

In our case, we had to extract the data from systems that had not been built with DDD in mind. This resulted in very involved extraction code.

In contrast, the data stored by systems built with DDD in mind is more aligned with the domain. Would it be simpler to do machine learning on such systems?