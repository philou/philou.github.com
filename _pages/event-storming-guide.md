---
layout: single
title: Philippe's Event Storming Guide
permalink: /event-storming-guide/
comments: false
author_profile: false
toc: true
classes: wide
header:
  overlay_color: "#333"
---
{% assign event_storming_posts = site.categories["squash-BDUF-with-event-storming-series"] %}

{% for post in event_storming_posts reversed %}

<h1>{{ post.title }}</h1>
{{ post.content | liquify | markdownify }}

{% endfor %}
