---
layout: single-mailing-list
title: "How to subscribe to an ActionCable channel on a specific page with custom data ?"
date: 2017-02-23 05:25
comments: true
categories:
  - rails
  - javascript
  - action-cable
keywords: "Rails, Javascript, Coffeescript, ActionCable, Page Specific Javascript"
description: "An explanation of how I plugged ActionCable channel subscriptions at load time of specific pages in a Rails app"
---
In my spare time, I'm writing a [Planning Poker App](https://github.com/philou/planning-poker). As a reminder, planning poker is a group estimation technique designed to eliminate influence bias. Participants keeps their estimates secret until everyone unveils them at the same time (See [Wikipedia](https://en.wikipedia.org/wiki/Planning_poker) for more details).

The driving idea behind my app is for team members to connect together and share a view of the current vote happening in their team. Each team has an animator, who is responsible to start new votes. This is the aspect I've been working on during the last few days. I want all team members to be notified that a new vote started by displaying a countdown on their page.

I am building the app with [Rails 5](http://rubyonrails.org/) but I did not have a clear idea of what technology to use to build this feature. After some googling, I found that ActionCable provides just the kind of broadcasting I am looking for (Have a look at the [ActionCable Rails guide](http://edgeguides.rubyonrails.org/action_cable_overview.html) for more details).

## A Specific Page

The Rails guide is pretty clear, as usual I would say, but all the examples show subscriptions at any page load. As explained above, I only want participants to subscribe to their own team's votes : until they have joined a team, it is not possible to subscribe to a particular channel.

As my app is currently behaving, once identified, participants get to a specific team page. I wanted to use this page as the starting point to my subscription. After some more googling about page specific JavaScript in Rails, I found [this page](http://brandonhilkert.com/blog/organizing-javascript-in-rails-application-with-turbolinks/) from Brandon Hilkert that explains how to do this cleanly. The idea is to add the controller and action names to the body tag, and to filter out js code at page load. This is what I ended up doing :

First, I adapted the app layout to keep track of the controller and action names in the HTML body :
``` html
<!-- app/layouts/application.html.erb -->
<!DOCTYPE html>
<html>
  ...
  <body class="<%= controller_name %> <%= action_name %>">
    ...
  </body>
</html>
```

Then I replaced the default channel subscription with a function :
``` coffeescript
# app/assets/javascripts/channels/team.coffee
window.App.Channels ||= {}
window.App.Channels.Team ||= {}

App.Channels.Team.subscribe = ->
  App.cable.subscriptions.create "TeamChannel",
    received: (data) ->
      # Do something with this data
```

As a reminder, here is what the server side channel would look like :
``` ruby
class TeamChannel < ApplicationCable::Channel
  def subscribed
    stream_from "team_channel"
  end
end
```

Finally, I called this subscribe function from some page specific Javascript :
``` coffeescript
# app/assets/team_members.coffee
$(document).on "turbolinks:load", ->
  return unless $(".team_members.show").length > 0

  App.Channels.Team.subscribe()
```

That's it. By playing around in your browser's js console, you should be able to test it.

## Custom Data

That's just half of the story. The code above subscribes on a specific page, but it does not specify any particular team channel to subscribe to. This means that all participants would receive notifications from all teams !

In his article about unobtrusive JavaScript in Rails, Brandon Hilkert also suggests using HTML data attributes to pass parameters to the a JavaScript button event handler. There's no button in our case, but we can still use the same technique. Let's add data specific attributes to the HTML body.

To subscribe to specific team channel, the plan is to add the team name to the HTML body tag through a data attribute, then to capture and use this team name when subscribing.

Again, let's enhance the layout :
``` html
<!-- app/layouts/application.html.erb -->
<!DOCTYPE html>
<html>
  ...
  <body class="<%= controller_name %> <%= action_name %>" <%= yield :extra_body_attributes %> >
    ...
  </body>
</html>
```

I had to adapt my views. In the team members show view (the one doing the subscription), I added an extra data attribute for the team name :

``` html
<!-- app/views/team_members/show.html.erb -->
<% provide(:extra_body_attributes, raw("data-team-name=\"#{@team.name}\"")) %>

...
```

With this done, it is possible to capture the team name from the page load event and feed it to the subscribe method :
``` coffeescript
# app/assets/team_members.coffee
$(document).on "turbolinks:load", ->
  return unless $(".team_members.show").length > 0

  App.Channels.Team.subscribe($('body').data('team-name'))
```

I then used the team name to subscribe to a specific channel :
``` coffeescript
# app/assets/javascripts/channels/team.coffee
window.App.Channels ||= {}
window.App.Channels.Team ||= {}

App.Channels.Team.subscribe = (teamName) ->
  App.cable.subscriptions.create {channel: "TeamChannel", team_name: teamName},
    received: (data) ->
      # Do something with this data
```

The last piece is to actually start a specific channel :
``` ruby
class TeamChannel < ApplicationCable::Channel
  def subscribed
    stream_from "team_channel_#{params[:team_name]}"
  end
end
```

Same as before, hack a bit with your browser's console, you should be able to check that it's working.

## Last thoughts

This is not exhaustive, depending on your situation, there might be other things you'll need to do, like unsubscriptions for example.

I'd also like to give a word of feedback about ActionCable after this first look at it. Overall, it worked great both in development and production. Everything seemed to work almost out of the box ... Except testing : I did not manage to write robust unit tests around it. There is [pull request](https://github.com/rails/rails/pull/23211) for that that should be merged in Rails 5.~ sometimes soon. For the moment, I'm sticking to large scale cucumber tests.
