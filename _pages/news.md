---
layout: page
title: News
permalink: /news/
description: A collection of news and announcements.
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


<style>
.pagination-links {
  display: flex;
  justify-content: center;
  align-items: center;
  margin-top: 20px;
}

.pagination-links a,
.pagination-links span,
.pagination-links em {
  padding: 5px 10px;
  margin: 0 5px;
  font-size: 18px;
  text-decoration: none;
  color: #333;
  transition: color 0.3s;
}

.pagination-links a:hover {
  color: #00ffff;
}

.pagination-links em {
  font-weight: bold;
  color: #00ffff;
}

.pagination-links .prev,
.pagination-links .next {
  font-weight: bold;
}

@media (prefers-color-scheme: dark) {
  .pagination-links a,
  .pagination-links span,
  .pagination-links em {
    color: #ccc;
  }

  .pagination-links a:hover {
    color: #00ffff;
  }

  .pagination-links em {
    color: #00ffff;
  }
}
</style>



