---
layout: post
title: Cattery
description: 住在Wiki里面的猫
keywords: 猫窝, Cattery
comments: false
menu: Cattery
permalink: /wiki/
---

> MAO的房间

<ul class="listing">
{% for wiki in site.wiki %}
{% if wiki.title != "Wiki Template" and wiki.topmost == true %}
<li class="listing-item"><h3 href="{{ site.url }}{{ wiki.url }}"><span class="top-most-flag">[Top most]</span>{{ wiki.title }}</h3></li>
{% endif %}
{% endfor %}
{% for wiki in site.wiki %}
{% if wiki.title != "Wiki Template" and wiki.topmost != true %}
<li class="listing-item"><h3 href="{{ site.url }}{{ wiki.url }}">{{ wiki.title }}<span style="font-size:12px;color:red;font-style:italic;">{%if wiki.layout == 'mindmap' %}  mindmap{% endif %}</span></h3></li>
{% endif %}
{% endfor %}
</ul>
