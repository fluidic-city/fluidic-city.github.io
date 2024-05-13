---
layout: about
title: About
permalink: /
subtitle: 

profile:
  align: right
  image: mk.jpg
  image_circular: false 
  more_info: >
    <p>Min Kao Building</p>
    
news: false # includes a list of news items
selected_papers: false # includes a list of papers marked as "selected={true}"
social: false # includes social icons at the bottom of the page
# pagination:
#   enabled: false
#   collection: news
#   permalink: /:num/
#   per_page: 9
#   sort_field: date
#   sort_reverse: true
---

Lorem ipsum dolor sit amet, consectetur `highlight`, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea [link](/al-folio/publications/) consequat. Duis aute irure `another highlight` in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum 

<br />
<hr />
<h3 class="utk-gray-changing">Latest News</h3>

{% assign news_items = site.news | sort: 'date' | reverse %}

<div class="news">
  <div class="grid">
    {% for item in news_items %}
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
