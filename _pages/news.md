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
  <div class="pagination">
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


