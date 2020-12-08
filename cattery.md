---
layout: page
title: Draft
permalink: /cattery/
---


{% for draft in site.draft %}
   <h1>
     <a href="{{ draft.url }}">{{ draft.title }}</a>
   </h1>
   <div class="entry">
         {{ draft.excerpt }}
   </div>
   <a href="{{ draft.url }}" class="read-more">Read More</a>
{% endfor %}

