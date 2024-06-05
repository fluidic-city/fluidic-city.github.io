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
  permalink: /page/:num/
  per_page: 6
  sort_field: date
  sort_reverse: true
---

<hr />
<!-- Pagination links -->
{% if paginator.total_pages > 1 %}
  <div class="pagination-links">
    {% if paginator.previous_page %}
      <a href="{{ paginator.previous_page_path | relative_url }}">&laquo; Prev</a>
    {% else %}
      <span>&laquo; Prev</span>
    {% endif %}

    {% for page in (1..paginator.total_pages) %}
      {% if page == paginator.page %}
        <em>{{ page }}</em>
      {% else %}
        {% if page == 1 %}
          <a href="{{ site.baseurl }}/news/index.html">{{ page }}</a>
        {% else %}
          <a href="{{ site.baseurl }}/news/page/{{ page }}/">{{ page }}</a>
        {% endif %}
      {% endif %}
    {% endfor %}


    {% if paginator.next_page %}
      <a href="{{ paginator.next_page_path | relative_url }}">Next &raquo;</a>
    {% else %}
      <span>Next &raquo;</span>
    {% endif %}
  </div>
{% endif %}

<div class="news">
  <div class="grid">
    {% for item in paginator.posts %}
      {% include news_item.liquid %}
    {% endfor %}
  </div>
</div>


{% include pagination_style.liquid %}
