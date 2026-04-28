---
layout: page
title: Tags
permalink: /tags/
---

{% assign all_tags = "" | split: "" %}
{% for post in site.posts %}
  {% for tag in post.tags %}
    {% assign all_tags = all_tags | push: tag %}
  {% endfor %}
{% endfor %}
{% assign sorted_tags = all_tags | uniq | sort %}

{% for tag in sorted_tags %}
  {% assign tag_posts = site.posts | where_exp: "post", "post.tags contains tag" %}
  <div style="margin-bottom: 1ch;">
    <a href="{{ site.baseurl }}/tags/{{ tag | slugify }}/">{{ tag | upcase }}</a>
    <span style="opacity:.6;">({{ tag_posts.size }})</span>
  </div>
{% endfor %}
