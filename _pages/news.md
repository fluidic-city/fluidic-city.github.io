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
  


