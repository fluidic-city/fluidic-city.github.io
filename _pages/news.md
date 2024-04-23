---
layout: page
title: News
permalink: /news/
description: A collection of news and announcements.
nav: true
nav_order: 4
# News item does not write individual pages (the md files themselves do..) news_item writes the news page.
---

<div class="news">
  {% assign sorted_news = site.news | sort: "date" | reverse%}
  <!-- {% assign sorted_news = site.news | sort: "importance" %} -->
  <div class="grid">
    {% for item in sorted_news %}
      {% include news_item.liquid %}
    {% endfor %}
  </div>
</div>
  


