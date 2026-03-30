---
layout: page
title: Tags
---

## All Tags

{%- for tag in site.tags -%}
<a href="#{{ tag[0] | slugify }}" class="tag">{{ tag[0] }}</a>
{%- endfor -%}

{% for tag in site.tags %}
<h2 id="{{ tag[0] | slugify }}">{{ tag[0] }}</h2>
<ul>
  {%- for post in tag[1] -%}
  <li><a href="{{ post.url }}">{{ post.title }}</a></li>
  {%- endfor -%}
</ul>
{% endfor %}
