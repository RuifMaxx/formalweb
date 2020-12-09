---
layout: page
title:  Cattery
---

{% for mao in site.mao %}
   <h1>
     <a href="{{ mao.url }}">{{ mao.title }}</a>
   </h1>
   <div class="entry">
         {{ mao.excerpt }}
   </div>
   <a href="{{ mao.url }}" class="read-more">Read More</a>
{% endfor %}

{% for draft in site.draft %}
   <h1>
     <a href="{{ draft.url }}">{{ draft.title }}</a>
   </h1>
   <div class="entry">
         {{ draft.excerpt }}
   </div>
   <a href="{{ draft.url }}" class="read-more">Read More</a>
{% endfor %}

