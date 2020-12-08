---
layout: page
title: Cattery
permalink: /cattery/
---

## Draft
{% for draft in site.draft %}
  <h2>
    <a href="{{ draft.url }}">
      {{ draft.name }} - {{ draft.position }}
    </a>
  </h2>
  <p>{{ draft.content | markdownify }}</p>
{% endfor %}

