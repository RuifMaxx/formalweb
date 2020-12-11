---
layout: page
title: Links
description: 没有链接的博客是孤独的
keywords: 友情链接, links
comments: true
menu: 链接
permalink: /links/
---

> 会添加我喜欢的博客。

> life

<ul>
{% for link in site.data.links %}
  {% if link.src == 'life' %}
  <li><a href="{{ link.url }}" target="_blank">{{ link.name}}</a></li>
  {% endif %}
{% endfor %}
</ul>

> learning

<ul>
{% for link in site.data.links %}
  {% if link.src == 'www' %}
  <li><a href="{{ link.url }}" target="_blank">{{ link.name}}</a></li>
  {% endif %}
{% endfor %}
</ul>
