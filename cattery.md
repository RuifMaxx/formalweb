---
layout: page
permalink: /cattery/
---

{% for draft in site.draft %}
  <h1>
    <a href="{{ draft.url }}">
      {{ draft.name }} - {{ draft.position }}
    </a>
  </h1>
  <p>{{ draft.content | markdownify }}</p>
{% endfor %}

