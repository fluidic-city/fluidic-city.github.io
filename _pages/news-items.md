---
layout: null
---

{% assign news_items = site.news | sort: 'date' | reverse %}
{% assign items_per_page = 9 %}
{% assign current_page = page.page | default: 1 | plus: 0 %}
{% assign offset = (current_page | minus: 1) * items_per_page %}
{% assign limit = items_per_page %}

{% for item in news_items offset: offset limit: limit %}
  {% include news_item.liquid %}
{% endfor %}
