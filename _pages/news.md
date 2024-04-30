---
layout: page
title: News
permalink: /news/
description: A collection of news and announcements.
nav: true
nav_order: 5
pagination:
  enabled: true
  permalink: /news/:path/
  collection: news
  per_page: 8
  sort_field: date
  sort_reverse: true
  trail:
    before: 1
    after: 3
---

<div class="news">
  <div class="grid">
    {% for item in paginator.posts %}
      {% include news_item.liquid %}
    {% endfor %}
  </div>
</div>

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
      {% elsif page == 1 %}
        <a href="{{ paginator.first_page_path | relative_url }}">{{ page }}</a>
      {% else %}
        <a href="{{ site.paginate_path | relative_url | replace: ':num', page }}">{{ page }}</a>
      {% endif %}
    {% endfor %}

    {% if paginator.next_page %}
      <a href="{{ paginator.next_page_path | relative_url }}">Next &raquo;</a>
    {% else %}
      <span>Next &raquo;</span>
    {% endif %}
  </div>
{% endif %}

<style>
.pagination-links {
  display: flex;
  justify-content: center;
  margin-top: 20px;
}

.pagination-links a,
.pagination-links span,
.pagination-links em {
  padding: 10px 15px;
  margin: 0 5px;
  font-size: 18px;
  text-decoration: none;
  color: #333;
  background-color: #f5f5f5;
  border-radius: 4px;
}

.pagination-links a:hover {
  background-color: #e0e0e0;
}

.pagination-links em {
  font-weight: bold;
  background-color: #333;
  color: #fff;
}
</style>
