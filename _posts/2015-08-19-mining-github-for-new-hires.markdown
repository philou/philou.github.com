---
layout: single-mailing-list
title: "Mining GitHub For New Hires"
date: 2015-08-19 05:30
comments: true
categories:
 - programming
 - ruby
 - hiring
 - github
keywords: "Hiring, Github Hiring, Github Mining, Software Engineer"
description: "A quick explanation about how we mined github in an attempt to hire an experienced software engineer"
---
## In search of an experienced software engineer

We have been trying to hire such a profile for the last year ... The position is hopefully filled now. During that year, we have tried to mine [github](https://github.com/) for candidates. Here is how we did it.

![Github's banner]({{site.url}}{{site.baseurl}}/imgs/2015-08-19-mining-github-for-new-hires/github.png)

Software engineers, especially experienced, are known to be hard to find. Over the past months, we had steadily been improving our hiring process :

* By regularly rewriting and optimizing our job post
* By posting it on Twitter
* By defining a precise interview template

We went from very few applications to :

* More applications
* More experienced candidates
* Regular interviews
* Effective interviews

Unfortunately, we were still not interviewing candidates as skilled as we would have liked to. We were convinced that we were offering a great job : the project is very interesting, and the team is a dream to work in.

## How could we reach more great devs ?

Someday, I played with [github](https://github.com/)'s Rest Api and I managed to write a short ruby script that finds the contributors to a given project that are living near Paris (France).

```ruby
require 'rubygems'
require 'rest_client'
require 'json'

RestClient.proxy = "http://proxy:3128"

def github_get(resource)
  JSON.parse(RestClient.get("https://api.github.com#{resource}", params: {
                              access_token: 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
                              per_page: 200}))
end

repo = ARGV[0]


puts "searching for #{repo} contributors in France"


contributors = github_get("/repos/#{repo}/contributors")
logins_locations = contributors.map do |user|
  begin
    login = user['login']
    location = github_get("/users/#{login}")['location']
    {login: login, location: location}
  rescue Exception => e
    puts "could not see details of #{login} #{e}"
    {login: login }
  end
end


puts "Here are all the contributors"
puts logins_locations
french_contributors = logins_locations.select do |login_location|
  location = login_location[:location]
  location != nil and
    (location.downcase.include?('france') or
     location.downcase.include?('paris'))
end

puts "----------------------------"
puts "Here are all the frenchcontributors"
puts french_contributors
```

## What's next ?

We eventually filled the position before following our github experiment. We might continue some day though ! Here is a list of improvements I thought of :

* Gather a list of projects that overlap with what we are building
* Search for repositories using some keyword or regular expression
* List github users that contributed to such projects, that live near us and that know java
* Use more complex algorithms to find best candidates ([Algorithmic Recruitment With GitHub](http://www.hackdiary.com/2010/02/10/algorithmic-recruitment-with-github/))
* Spend more time socializing on GitHub ([The Complete Guide To Recruiting And Sourcing Candidates On GitHub](http://www.sourcecon.com/news/2014/01/21/the-complete-guide-to-recruiting-and-sourcing-candidates-on-github/))

It really looks like if software is eating recruitment ...
