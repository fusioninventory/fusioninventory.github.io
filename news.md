---
layout: page
lang: en
title: Lastest news
---

{% include nav.html %}

<ul>
  {% for post in site.posts %}
    {% if post.lang == "en" %}
      <li style="list-style-type: none;">
        <h2><a href="{{ post.url }}"><i class="fas fa-sign-in-alt text-primary"></i> {{ post.title }}</a></h2>
        <span style="font-size: 12px; color: grey;"><i>The {{ post.date  | date: "%-d %B %Y" }}</i></span>
        {{ post.excerpt }}
      </li>
    {% endif %}
  {% endfor %}
</ul>
