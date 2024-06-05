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

<!-- Year links -->
<div class="year-links">
  {% for year in news_by_year %}
    <a href="{{ site.baseurl }}/news/year/{{ year.name }}">{{ year.name }}</a>
  {% endfor %}
</div>

{% for item in paginator.posts %}
  {% include news_item.liquid %}
{% endfor %}

{% include pagination_style.liquid %}
