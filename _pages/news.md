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

<!-- Pagination links -->
<div class="pagination-links">
  {% for year in news_by_year %}
    <a href="{{ site.baseurl }}/news/{{ year.name }}/">{{ year.name }}</a>
  {% endfor %}
</div>

<div class="news">
  <div class="grid">
    {% assign current_year = news_by_year.first.name %}
    {% assign year_news = news_by_year | where: "name", current_year %}
    {% for item in year_news.first.items %}
      {% include news_item.liquid %}
    {% endfor %}
  </div>
</div>


{% include pagination_style.liquid %}





