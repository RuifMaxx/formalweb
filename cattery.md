---
layout: page
title: Cattery
permalink: /cattery/
---

  <h2> Draft  <h2> 

{% for draft in site.draft %}
   <h4>
     <a href="{{ draft.url }}">
       {{ draft.name }} - {{ draft.position }}
     </a>
   </h4>
   <div class="entry">
         {{ draft.excerpt }}
   </div>
   <a href="{{ draft.url }}" class="read-more">Read More</a>
   <p>{{ 22 | markdownify }}</p>
{% endfor %}

