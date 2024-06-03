---
layout: page
title: News
permalink: /news/
description: 
nav: true
nav_order: 5
pagination:
  enabled: true
  collection: news
  permalink: /news/page/:num/
  per_page: 6
  sort_field: date
  sort_reverse: true
---

<hr />

{% assign news_by_year = site.news | sort: 'date' | reverse | group_by_exp: "item", "item.date | date: '%Y'" %}
{% for year in news_by_year %}
  <h2 id="{{ year.name }}">{{ year.name }}</h2>
  <div class="news">
    <div class="grid">
      {% for item in year.items %}
        {% include news_item.liquid %}
      {% endfor %}
    </div>
  </div>
{% endfor %}

<!-- Pagination links -->
<div class="pagination-links">
  {% for page in paginator.pages %}
    {% assign news_by_year = page.items | sort: 'date' | reverse | group_by_exp: "item", "item.date | date: '%Y'" %}
    {% for year in news_by_year %}
      <a href="{{ site.baseurl }}/news/{{ year.name }}/">{{ year.name }}</a>
    {% endfor %}
  {% endfor %}
</div>

{% include pagination_style.liquid %}
