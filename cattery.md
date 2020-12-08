---
layout: page
permalink: /cattery/
---
# draft

{% for draft in site.draft %}
  <h3>
    <a href="{{ draft.url }}">
      {{ draft.name }} - {{ draft.position }}
    </a>
  </h3>
  <p>{{ draft.content | markdownify }}</p>
{% endfor %}

