---
layout: page
title: News
permalink: /news/
description: 
nav: true
nav_order: 5
pagination:
  enabled: false
  collection: news
  permalink: /news/page/:num/
  per_page: 6
  sort_field: date
  sort_reverse: true
---

<hr />

{% assign news_by_year = site.news | sort: 'date' | reverse | group_by_exp: "item", "item.date | date: '%Y'" %}

<!-- Pagination links -->
<div class="pagination-links">
  {% for year in news_by_year %}
    <a href="{{ site.baseurl }}">{{ year.name }}</a>
  {% endfor %}
</div>

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



{% include pagination_style.liquid %}
