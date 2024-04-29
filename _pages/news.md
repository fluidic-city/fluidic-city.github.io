---
layout: page
title: News
permalink: /news/
description: A collection of news and announcements.
nav: true
nav_order: 5
pagination:
  enabled: true
  permalink: /news/:num/
  collection: news
  per_page: 12
  sort_field: date
  sort_reverse: true
  trail:
    before: 1
    after: 3
---

<div class="news">
  <div class="grid">
    {% for item in paginator.posts %}
      <a href="{{ item.url | relative_url }}">
        {% include news_item.liquid %}
      </a>
    {% endfor %}
  </div>
</div>

<!-- Pagination links -->
{% if paginator.total_pages > 1 %}
  <div class="pagination-links">
    {% if paginator.previous_page %}
      <a href="{{ paginator.previous_page_path | relative_url }}">&laquo; Prev</a>
    {% else %}
      <span class="disabled">&laquo; Prev</span>
    {% endif %}

    {% for page in (1..paginator.total_pages) %}
      {% if page == paginator.page %}
        <span class="current-page">{{ page }}</span>
      {% else %}
        <a href="{{ site.baseurl }}/news/{{ page }}/">{{ page }}</a>
      {% endif %}
    {% endfor %}

    {% if paginator.next_page %}
      <a href="{{ paginator.next_page_path | relative_url }}">Next &raquo;</a>
    {% else %}
      <span class="disabled">Next &raquo;</span>
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
.pagination-links span {
  padding: 5px 10px;
  margin: 0 3px;
  font-size: 16px;
  text-decoration: none;
  color: #333;
  background-color: #f5f5f5;
  border-radius: 4px;
}

.pagination-links a:hover {
  background-color: #e0e0e0;
}

.pagination-links .current-page {
  font-weight: bold;
  background-color: #333;
  color: #fff;
}

.pagination-links .disabled {
  color: #999;
  pointer-events: none;
}
</style>




<!-- ---
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
    before: 1 # The number of links before the current page
    after: 3  # The number of links after the current page

# News item does not write individual pages (the md files themselves do..) news_item writes the news page.
---

<div class="news">
  {% assign sorted_news = site.news | sort: "date" | reverse %}
  <div class="grid">
    {% for item in sorted_news %}
      {% include news_item.liquid %}
    {% endfor %}
  </div>
</div> 
   -->


