---
layout: news_year
title: News
permalink: /news/
description: 
nav: true
nav_order: 2
---

<hr />

<br>

<div class="news">
  <div class="grid">
    {% assign years = site.news | map: 'year' | uniq | sort %}
    {% assign current_year = years | last %}
    {% if page.url contains '/news/' and page.url != '/news/' %}
      {% assign current_year = page.url | split: '/' | last | remove: '/' %}
    {% endif %}

    {% assign posts = site.news | where: "year", current_year %}
    {% assign sorted_posts = posts | sort: 'date' | reverse %}
    {% for item in sorted_posts %}
      {% include news_item.liquid %}
    {% endfor %}
  </div>
</div>
<!-- 
<!-- Pagination links -->
<div class="pagination-links">
  {% assign current_index = years | index_of: current_year %}
  {% assign previous_year = years[current_index | minus: 1] %}
  {% assign next_year = years[current_index | plus: 1] %}

  {% if previous_year %}
    <a href="{{ site.baseurl }}/news/{{ previous_year }}/">&laquo; {{ previous_year }}</a>
  {% else %}
    <span>&laquo; Previous</span>
  {% endif %}

  {% for year in years reversed %}
    {% if year == current_year %}
      <em>{{ year }}</em>
    {% else %}
      <a href="{{ site.baseurl }}/news/{{ year }}/">{{ year }}</a>
    {% endif %}
  {% endfor %}

  {% if next_year %}
    <a href="{{ site.baseurl }}/news/{{ next_year }}/">{{ next_year }} &raquo;</a>
  {% else %}
    <span>Next &raquo;</span>
  {% endif %}
</div>

{% include pagination_style.liquid %} -->
