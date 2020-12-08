---
layout: page
permalink: /cattery/
---

##Draft

{% for draft in site.draft %}
  <h4>
    <a href="{{ draft.url }}">
      {{ draft.name }} - {{ draft.position }}
    </a>
  </h4>
  <p>{{ draft.content | markdownify }}</p>
{% endfor %}

