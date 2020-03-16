---
layout: single-mailing-list
title: "RIP mes-courses.fr"
date: 2014-06-27 06:33
comments: true
categories:
 - side project
 - mes-courses
 - lessons-learned
keywords: "side project, lessons learned, boostrapping, open source, lean Start-up"
description: "Obituary to a failed side project, with what I learned and what I gained"
---
Rest In Peace [mes-courses.fr](https://dl.dropboxusercontent.com/u/206938/mes-courses.fr/archives/index.html). Here is what it looked like :

![Screen shot of the home page of mes-courses.fr]({{site.url}}{{site.baseurl}}/imgs/2014-06-27-rip-mes-courses-dot-fr/screenshot.png)

I wanted to create a really fast on-line grocery front-end, where people could shop for the week in only 5 minutes. It supported shopping recipes instead of individual items but I also envisioned to allow automatic menus recommendations, and automatic item preference selection. I started 4 years ago, and this is my last doing on the subject :). If you're thinking about starting your own side project, this post is for you.

### Here are the lessons I learned

* As a professional programmer, I largely underestimated the non programming time required for a serious side project. It represents more than half the time you'll spend on your project (marketing, discussing with people, mock ups and prototypes)
* When I started, I kind of estimated the time it would take me to build a first prototype. Again I ridiculously underestimated this :
  * because of the previous point
  * because on a side project, you'll be on your own to handle any infra issue
  * because you don't have 8 hours per day to spend to your project (As a professional developer, dad of 2, I only managed to get 10 to 15 hours per week)
* [A small project does not require as much infrastructure as a big one](/programming-as-an-exponential-problem/). I lost some time doing things as I do when working on projects with more than 100K lines of code. So next time :
  * I'll stick to end to end cucumber tests for as long as possible
  * I'll use an economical framework like described in [Donald G. Reinertsen's Flow book](http://www.amazon.fr/The-Principles-Product-Development-Flow/dp/1935401009) to prioritize improvements vs features
* Eventually, what killed me was that I could not go around the "experiment -> adapt" loop fast enough. The project was just too big for my time
  * I'll try to select a subject a project that suits my constraints of time and money
  * This will be one of the first hypotheses that I'm willing to verify
  * Web marketing and HTML design are more important than coding skills to run experiments : I'm learning both
* Scrapping is a time hog. I won't start any side project involving scrapping anymore.
* Using on-line services always saved me a lot of time. They are a lot more reliable than anything I could setup. Mainly, this was :
  * Mailing services
  * Cloud deployment
* Go the standard way. Again, anytime I did something a bit weird, it turned out to cost me some time
  * Use standard open source software, stick to the latest version
  * Use standard and wide spread technology
* Automated testing and deployment saved me some time from the start. Especially with the small amount of time that I could spend on my project, it was really easy to forget details and to make mistakes.
  * [Here](https://github.com/philou/mes-courses/blob/master/lib/mes_courses/deployment.rb) is the [Heroku](https://www.heroku.com/) deployment script I used to test and deploy in a single shell call
  * And [here](https://github.com/philou/mes-courses/blob/master/lib/mes_courses/utils/scheduled_tasks.rb) is a Heroku workaround to run some cron tasks weekly, this allowed me to run some scrapping tests every week on Heroku
* It took all my time ! Next time I start a side project, I'll be prepared to
  * Spend all my free time on it (my time was divided between day-job, family, side project)
  * Spend all my learning time (books, on-line trainings ...) for it
  * Choose something that I am passionate about !
  * Choose a different kind of project to fit my constraints
    * Joining an existing open source project would let me focus on technical work at my own pace
    * Volunteer for a not for profit project might be less time intensive while allowing some fulfilment
* I did my project alone, and it was hard to keep my motivation high on the long run. Next time :
  * I'll join someone else
  * I'll [time box my project](/my-own-side-project-best-practices-after-reading-the-side-project-book/) before a pivot or starting something completely different
* I did not manage to get anything done before I settled a regular daily rhythm. I used to work from 5:30am to 7:30am, I first tried in the evening, but after a day's work, I was too tired to be really productive.
* When I could afford it, paying for things or services really saved me some time. I'm thinking of
  * A fast computer
  * Some paying on-line services

It is sure that doing a side project seriously is a heavy time investment, but there's also a lot of benefits !

![Side projects are important blackboard]({{site.url}}{{site.baseurl}}/imgs/2014-06-27-rip-mes-courses-dot-fr/side-projects-are-important.gif)

### Here is what I gained

* Real experience with new technologies. For me, this included
  * Ruby on Rails
  * Coffeescript
  * HTML scrapping
  * Dev-ops practices with Heroku
  * Web design with HTML and CSS
* I also learned a lot of non technical skills in which I was completely inexperienced
  * Web marketing
  * Blogging
  * Mailing
* Trying to bootstrap a for profit side project is like running a micro company, it's a good opportunity to understand how a company is ran. This can help you to become a better professional during your day-job.
* Having control on everything is a good situation to use Lean techniques.
  * [Lean Start-up](http://www.amazon.com/The-Lean-Startup-Entrepreneurs-Continuous/dp/0307887898/ref=sr_1_1?tag=pbourgau-20&amp;ie=UTF8&qid=1404024050&sr=8-1&keywords=lean+startup)
  * [Lean product development (Donald G. Reinertsen)](http://www.amazon.com/The-Principles-Product-Development-Flow/dp/1935401009/ref=sr_1_1?tag=pbourgau-20&amp;ie=UTF8&qid=1404024094&sr=8-1&keywords=reinersten)
* Failing allowed me to actually understand Lean Start up ! The ideas are easy to understand in theory, the practice is a very different thing. It should help me for my next project.
* Resolving real problems on my own was a very good source for valuable blog articles.
* I collaborated with very clever people on open source libraries
  * By fixing some bugs in some libraries I was using
  * By releasing some parts of my code as open source libraries

Next time, I hope I'll get more euros as well !

You've got nothing to loose from trying ! Just do it. Give yourself 1 year to get some small success, and then continue or repeat with something else !
