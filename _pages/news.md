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
    {% for item in year_news.first.items%}
      {% include news_item.liquid %}
    {% endfor %}
  </div>
</div>


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
  color: #000000;
  transition: color 0.3s;
}

.pagination-links a:hover {
  color: #2698ba;
}

.pagination-links em {
  font-weight: bold;
  color: #2698ba;
}

.pagination-links .prev,
.pagination-links .next {
  font-weight: bold;
}

@media (prefers-color-scheme: light) {
  .pagination-links a,
  .pagination-links span,
  .pagination-links em {
    color: #000000 !important;
  }
}

@media (prefers-color-scheme: dark) {
  .pagination-links a,
  .pagination-links span,
  .pagination-links em {
    color: #ccc;
  }

  .pagination-links a:hover {
    color: #2698ba;
  }

  .pagination-links em {
    color: #2698ba;
  }
}
</style>





