---
layout: null
---

{% assign news_items = site.news | sort: 'date' | reverse %}
{% assign offset = page.offset | default: 0 | plus: 0 %}
{% assign limit = page.limit | default: 9 | plus: 0 %}

{% for item in news_items offset: offset limit: limit %}
  {% include news_item.liquid %}
{% endfor %}
