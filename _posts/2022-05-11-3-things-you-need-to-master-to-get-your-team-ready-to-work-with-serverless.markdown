---
layout: single-mailing-list
title: 3 Things You Need to Master to Get Your Team Ready to Work With Serverless
date: "2022-05-19"
author: "Marco Troisi"
comments: true
categories:
- architecture
description: "This guest post by serverless expert Marco Troisi highlights 3 key skills for serverless development: Infrastructure-as-code, Event-Driven Architecture, and Solution Architecture Diagram. You will also learn what team-activities you can run with coachees to help them to master these 3 skills."
header:
  teaser: "/imgs/2022-05-11-3-things-you-need-to-master-to-get-your-team-ready-to-work-with-serverless/serverless-skills-teaser.jpg"
  og_image: "/imgs/2022-05-11-3-things-you-need-to-master-to-get-your-team-ready-to-work-with-serverless/serverless-skills-og.jpg"
variations:
- Infrastructure-as-code ensures consistency across environments. #infrastructureascode #serverless #architecture #technical #agileCoaching
- Infrastructure-as-code makes infrastructure reviewable by developers #infrastructureascode #serverless #architecture #technical #agileCoaching
- Infrastructure-as-code increases the speed of development #infrastructureascode #serverless #architecture #technical #agileCoaching
- How can you coach a team used to work with more traditional technologies and patterns towards full productivity and enjoyment of serverless development? #serverless #architecture #technical #agileCoaching
- What are the skills required for a team to succeed with serverless? #serverless #architecture #technical #agileCoaching
- You can make the infrastructure-as-code learning curve less steep and accelerate the process with code reviews. #infrastructureascode #serverless #architecture #technical #agileCoaching
- Infrastructure-as-Code enables you to increase the rate at which you develop your products and ship them to market. #infrastructureascode #serverless #architecture #technical #agileCoaching
- With Infrastructure-as-Code you remove a major dependency, namely the infrastructure “experts” #infrastructureascode #serverless #architecture #technical #agileCoaching
- Group activities such as a “lunch & learn” session can be very helpful to get your team up to speed with #infrastructureascode. Simply watch a video together and pause at various points to discuss. #serverless #architecture #technical #agileCoaching
- This video (https://www.youtube.com/watch?v=LaxH8GS8l3Q) is a great one to watch as a group to get into #infrastructureascode, and could easily stimulate a follow-up team exercise. #serverless #architecture #technical #agileCoaching
- A Solution Architecture diagram is a fantastically powerful way to bring about clarity and keep stakeholders aligned. #serverless #architecture #technical #agileCoaching
- Unless your job title is a Solution Architect, your diagram doesn’t need to be perfect or even pretty to look at #serverless #architecture #technical #agileCoaching
- The best way to learn how to draw Solution Architecture diagrams is to get your hands dirty. #serverless #architecture #technical #agileCoaching
- Get your team started with Solution Architecture Diagrams by finding a simple component that everyone is familiar with (e.g. the signup process), and start drawing a it out by highlighting the 3 areas mentioned above. #serverless #architecture #technical #agileCoaching
- Show your Solution Architecture Diagram to someone who is only marginally familiar with the system to get useful review.  #serverless #architecture #technical #agileCoaching
- Gradually introduce these 3 practices to a team that is starting with serverless: #infrastructureAsCode, #eventDriven architecture, Solution Architecture Diagrams. #serverless #architecture #technical #agileCoaching
---
_In this guest post, serverless expert Marco Troisi highlights 3 key skills to go serverless, and how, as coaches, we can help a team to learn them._ 

![Paper drawing of the work SKILLS with the S reusing the styles from the serverless icon, and the L being the lambda symbol. This post goes over some skills that are key to serverless development.]({{site.url}}/imgs/2022-05-11-3-things-you-need-to-master-to-get-your-team-ready-to-work-with-serverless/serverless-skills.jpg)

There are [many reasons](https://www.forbes.com/sites/forbestechcouncil/2021/11/04/four-reasons-you-should-consider-going-serverless/?sh=6e66de9e69cf) for wanting to adopt serverless technologies as part of your development lifecycle. From reduced costs to automated scalability to improved developer experience. 

Of course, this is not to say that serverless is a good fit for every use case. Your team or organisation may well have very good reasons for not adopting serverless. Increasingly, though, such organisations are the ones that are going to need to justify their decision, not the other way around.

Once you have established that serverless technologies would give your team an advantage as well as deliver a better product for your customers, you are now looking at a transition. 

**How can you coach a team used to work with more traditional technologies and patterns towards full productivity and enjoyment of serverless development?**

A few years ago, my team made the transition from a gigantic monolith to a 100% serverless architecture. During that process, I learned and observed **what skills are required for a team to succeed with serverless**.

The following 3 key steps will accelerate your transition to serverless technologies:

1. [Infrastructure-As-Code](#1-learn-infrastructure-as-code)
2. [Event-Driven Architecture](#2-understand-event-driven-architecture)
3. [Solution Architecture Diagrams](#3-appreciate-the-value-of-solution-architecture-diagrams)

## #1 Learn Infrastructure-As-Code

Infrastructure-as-Code (IaC) allows you to manage infrastructure (networks, virtual machines, databases, etc) through code rather than via manual processes.

By allowing developers to write, run, and maintain their infrastructure, you set yourself up for success as your team embarks on the serverless adoption journey.

![Picture made up of some code samples over a data-center. Infrastructure-as-code has become ubiquitous in our industry, and is actually a must-have for serverless development.]({{site.url}}/imgs/2022-05-11-3-things-you-need-to-master-to-get-your-team-ready-to-work-with-serverless/infra-as-code.jpg)

Here are 3 benefits of embracing Infrastructure-as-Code in your team:

### #1 It ensures consistency across environments

In an [interview](https://techbeacon.com/enterprise-it/infrastructure-code-engine-heart-devops), Boyd Hemphill, former director of evangelism at [StackEngine](https://www.oracle.com/corporate/acquisitions/stackengine/), describes Infrastructure-as-Code as follows:

> code should be written to describe the desired state of the new machine. That code should run on the machine to converge it to the desired state. The code should execute on a cadence to ensure the desired state of the machine over time, always bringing it back to convergence.

A solid Infrastructure-as-Code setup should reduce the unfortunate instances where code appears to work on a developer’s machine but everything breaks down as that code is pushed to production.

With Infrastructure-as-Code, the system and configuration required to run your application are clearly visible to everyone; everything is perfectly replicable across any number of environments, whether the developer’s machine, staging or production.

Of course, there may be slight differences in place. For example, the machines running your production workload may be more powerful than the ones used for local testing. Similarly, network conditions may vary and affect the outcomes. These are all real factors that need to be kept in mind, but they are also minor in the grand scheme of things. And they can be mitigated greatly by adopting serverless and cloud-based development (that is, developing and running your applications directly in the cloud rather than on a local machine).

### #2 It makes infrastructure reviewable by developers

Once infrastructure becomes part of the team’s development lifecycle, any code necessary to alter that infrastructure will need to be reviewed. The benefits of reviewing each other’s code are well known, so we don’t need to discuss them here. I do want to touch on a particular benefit of code reviews though: **learning**.  

Regardless of the framework that you choose to handle your Infrastructure-as-Code, there is going to be a bit of a learning curve. But **you can make this curve less steep and accelerate the process with code reviews**. All it takes is a team member who (more or less) knows what she’s doing. As other people get involved with the reviewing process, they will soon start to get a sense of what things look like. 

For example, let’s imagine that your team uses [AWS CloudFormation](https://aws.amazon.com/cloudformation/) as a framework; a team member creates a little PR that introduces a new Lambda. The title of the PR is *Lambda for processing payments*. The code introduced in the PR looks something like this:

```yaml
Resources:
  paymentLambda:
    Type: AWS::Lambda::Function
    Properties:
      Runtime: nodejs14.x
      Handler: src/handlers/payments.handler
      Code:
        S3Bucket: payment-lambda-bucket
        S3Key: function.zip
      Description: Payment processing Lambda
```

At this point, you have the context from the title of the PR, so you know at a high level what this code is trying to achieve. And even though you may not be completely sure of how the whole thing hangs together, you can definitely recognise some things in the YAML above. There is a `Type`, there is a `Runtime`, and there is a `Handler` which seems to point to the code that gets executed inside the Lambda.

Next time you’re asked to review someone else’s CloudFormation, you are much more familiar with it. Moreover, when the time comes for you to write some infrastructure code, it won’t be as intimidating. You can refer back to other people’s code and look for the elements and components that you need, with the necessary modifications.

### #3 It increases the speed of development

> In the “cloud age” of IT [...] changes can be made in minutes, if not seconds. Change management can exploit this speed, providing better reliability along with faster time to market. ~ *Kief Morris ([Infrastructure as Code](https://amzn.to/3uVgYUN))*
> 

**Infrastructure-as-Code enables you to increase the rate at which you develop your products and ship them to market.** There is both an organisational and a technical reason for this speed uptake.

Organisationally, as engineering teams own the capabilities necessary to make infrastructure changes, you have fewer blockers. Much like with the adoption of a [microservice architecture](https://marcotroisi.substack.com/p/how-microservices-can-help-your-team?s=w), **with Infrastructure-as-Code you remove a major dependency, namely the infrastructure “experts”**. A team can build a new feature or component from the ground up, define its infrastructure, and ensure their work is deployed and available to customers.

Technically, with Infrastructure-as-Code you get far more reliable systems. Since what’s in production is consistent with what’s been tested locally, and given that everything has gone through the standard review process, it is simply less likely for things to go wrong. Coupled with an effective [CICD](https://marcotroisi.substack.com/p/set-up-an-automated-pipeline-from?s=w) pipeline, you can ensure that changes are shipped consistently and bugs are caught and resolved quickly.

### Learning resources

If your team is on AWS, I highly recommend reading the [CDK Book](https://thecdkbook.com/) and watching [this video](https://m.youtube.com/watch?v=9As_ZIjUGmY). The ever-popular [Terraform](https://www.terraform.io/) is a solid alternative that supports other cloud providers too; [this video](https://m.youtube.com/watch?v=YcJ9IeukJL8) is a good place to start. **Group activities such as a “lunch & learn” session can be very helpful; the team could simply watch the video together and pause at various points to discuss.**

## #2 Understand Event-Driven Architecture

[![High level architecture diagram of an event-driven system on AWS. We can see how the Event Router is central to a serverless systems.]({{site.url}}/imgs/2022-05-11-3-things-you-need-to-master-to-get-your-team-ready-to-work-with-serverless/SEO-Diagram_Event-Driven-Architecture_Diagram.jpg)](https://d1.awsstatic.com/product-marketing/EventBridge/1-SEO-Diagram_Event-Driven-Architecture_Diagram.b3fbc18f8cd65e3af3ccb4845dce735b0b9e2c54.png)

_Source: [AWS](https://d1.awsstatic.com/product-marketing/EventBridge/1-SEO-Diagram_Event-Driven-Architecture_Diagram.b3fbc18f8cd65e3af3ccb4845dce735b0b9e2c54.png)_

[Event-Driven Architecture](https://aws.amazon.com/blogs/compute/getting-started-with-event-driven-architecture/?trk=global_employee_advocacy&sc_channel=sm&advocacy_source=everyonesocial&es_id=70fef3f411&es_id=550ad37344) is a model for designing your software. An event-driven system is one where events are at the core of the system, as opposed to requests and responses. 

Typically, an Event-Driven system consists of *event producers* that generate a stream of events, and *event consumers* that are listening to events coming in.

Amongst the [benefits of an Event-Driven Architecture](https://aws.amazon.com/blogs/compute/operating-lambda-understanding-event-driven-architecture-part-1/) is that it enables you to build loosely coupled applications that, if well designed, can be very resilient as well as deliver improved performance to the end-user.

Serverless has Event-Driven as part of its DNA. Serverless functions (like AWS Lambda) are on-demand compute services that run custom code in response to events. Events can be generated by your own application, by other cloud services (for example, most AWS services generate events), or by third-party services.

Event-Driven systems don't need to be too complex, to begin with. For example, AWS offers an extremely powerful, yet easy to use, service called [EventBridge](https://aws.amazon.com/eventbridge/). Many companies are using EventBridge along with Lambda to power Event-Driven applications that are highly performant.

### Learning resources

[Marcia Villalba](https://m.youtube.com/channel/UCSLIvjWJwLRQze9Pn4cectQ) from AWS has made several very useful [videos](https://www.youtube.com/playlist?list=PLGyRwGktEFqc4ujCIzIppLcESeWID8biA) about EventBridge. **[This video](https://www.youtube.com/watch?v=LaxH8GS8l3Q), in particular, I cannot recommend highly enough. It is also a great one to watch as a group, and could easily stimulate a follow-up team exercise.**

## #3 Appreciate the Value of Solution Architecture Diagrams

> a persuasive solution architecture diagram must be able to convey the business values to key stakeholders and the technical details to developers. ~ [*Tuan Lee](https://medium.com/@tuanvietle/a-simple-method-to-create-solution-architecture-diagrams-6a127b93a122), solution architect at [NashTech](https://nashtechglobal.com)*
> 

In my experience, **a Solution Architecture diagram is a fantastically powerful way to bring about clarity and keep stakeholders aligned**. 

![[AWS Reference Solution Architecture](https://d1.awsstatic.com/architecture-diagrams/ArchitectureDiagrams/high-performance-computing-on-aws-ra.pdf?did=wp_card&trk=wp_card) for High-Performance Computing]({{site.url}}/imgs/2022-05-11-3-things-you-need-to-master-to-get-your-team-ready-to-work-with-serverless/high-performance-computing-aws.jpg)

_Source: [AWS Reference Solution Architecture](https://d1.awsstatic.com/architecture-diagrams/ArchitectureDiagrams/high-performance-computing-on-aws-ra.pdf?did=wp_card&trk=wp_card) for High-Performance Computing_

Building a Solution Architecture diagram can be intimidating at first. One way to overcome this anxiety is to remember that, **unless your job title is a Solution Architect, your diagram doesn’t need to be perfect or even pretty to look at**. Most engineers will only ever design diagrams for internal use. 

There are 3 things that need to be highlighted by any useful Solution Architecture diagram:

1. Users
2. Technologies used
3. Flow of information

Start with the user: who is going to use this system/feature/component? Then, line up all the technological components used. Lastly, draw lines between them (and make notes to the side, if necessary) to bring attention to the flow of data and the sequence of actions.

You now have a perfectly useful Solution Architecture diagram that your colleagues can use as a point of reference when reviewing your work.

### Learning resources

**The best way to learn how to draw Solution Architecture diagrams is to get your hands dirty.**

Here’s a good team exercise: pick any diagramming software (draw.io, for example, is free; [this video](https://m.youtube.com/watch?v=Z0D96ZikMkc) gives you a quick introduction), **find a simple component that everyone is familiar with (e.g. the signup process), and start drawing it out by highlighting the 3 areas mentioned above.**

Lastly, **show the diagram to someone who is only marginally familiar with the system**; is the general idea clear to them? If not, what can the team do to make the diagram clearer? Feedback like this is priceless since the main purpose of a Solution Architecture diagram is to make a solution crystal clear to every stakeholder.

## BONUS: Get AWS Certified!

According to the [2021 Global Knowledge survey](https://www.globalknowledge.com/us-en/content/salary-report/it-skills-and-salary-report/), 80% of interviewed IT professionals have seen an increase in their job effectiveness, including improved quality of work, increased engagement, and faster job performance, as a result of obtaining an IT certification.

![Picture made up of small stones with graduation hats. AWS certifications can be a good learning path to get a team up to speed with serverless.]({{site.url}}/imgs/2022-05-11-3-things-you-need-to-master-to-get-your-team-ready-to-work-with-serverless/graduation.jpg)

IT certifications are not a guarantee of competence if taken in isolation, but they can be a cheap and effective way for companies to ensure a knowledge baseline among teams.

I recommend that anyone who is working in the cloud and adopting serverless get an AWS certification (you may want to look at equivalent GCP or Azure certifications if your company has [reasons](https://marcotroisi.substack.com/p/why-you-cant-afford-to-be-cloud-agnostic?s=w) not to go with AWS). 

A great place to start is the [AWS Developer Associate](https://aws.amazon.com/certification/certified-developer-associate/) certification; this certification assumes a couple of years of experience working with AWS, but you can study a little more to make up for the lack of practical experience. 

Other certifications exist and can be pursued, depending on the specific role. For example, the [Machine Learning](https://aws.amazon.com/certification/certified-machine-learning-specialty/?ch=sec&sec=rmg&d=1), [Database](https://aws.amazon.com/certification/certified-database-specialty/?ch=sec&sec=rmg&d=1), [Security](https://aws.amazon.com/certification/certified-security-specialty/?ch=sec&sec=rmg&d=1), and other “*specialty*” certifications are especially focused on those topics. 

More advanced certifications such as the [Solutions Architect Professional](https://aws.amazon.com/certification/certified-solutions-architect-professional/?ch=sec&sec=rmg&d=1) and the [DevOps Engineer Professional](https://aws.amazon.com/certification/certified-devops-engineer-professional/?ch=sec&sec=rmg&d=1) are also available to those who want to go above and beyond. They are more difficult to achieve, but obtaining them guarantees considerable knowledge in how to use and architect cloud applications.

## Conclusion

In this article, we have looked at 3 areas that you should encourage your team to invest in if you’re considering adopting serverless technologies:

1. Infrastructure-as-Code
2. Even-Driven Architecture
3. Solution Architecture diagrams

By starting small and avoiding overcomplicating your application, **you can gradually introduce these 3 practices.**

As you think about the next feature that you or your team are going to tackle:

- Draw a simple diagram outlining the various components and attach it to the ticket and any Pull Requests, for everyone to see.
- Think about whether there is a way to delegate actions to asynchronous events rather than leaving your end-user waiting for a response.
- Finally, look at [pre-made templates](https://aws.amazon.com/cloudformation/resources/templates/) so that all of your infrastructure is clearly defined (and reviewed) as code.

***Have you or your team recently adopted serverless technologies? What have you found useful and what challenges have you faced?***