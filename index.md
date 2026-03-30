---
layout: page
title: Home
---

## Welcome to Math Blog

This is a Jekyll theme designed for mathematics blogs, featuring:

- **Math Rendering**: MathJax or KaTeX support
- **Interactive Tools**: SageCell, GeoGebra, Mermaid diagrams
- **Slide Decks**: Marp and Reveal.js support

## Recent Posts

{% for post in site.posts limit:500 %}
- [{{ post.title }}]({{ post.url }}) <small>({{ post.date | date: "%Y-%m-%d" }})</small>
{% endfor %}

## About

This theme is open source. Check out the [GitHub repository](https://github.com/a-boy/jekyll-theme-mathfan) for more information.
