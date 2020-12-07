---
layout: single
title: Philippe's guide to avoiding mocks
permalink: /how-to-avoid-mocks/
comments: false
author_profile: false
toc: true
classes: wide
header:
  overlay_color: "#333"
---
{% assign event_storming_posts = site.categories["how-to-avoid-mocks-series"] %}

{% for post in event_storming_posts reversed %}

# {{ post.title }}
{{ post.content | liquify | markdownify }}

{% endfor %}
