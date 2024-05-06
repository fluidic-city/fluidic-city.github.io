---
layout: about
title: About
permalink: /
subtitle: 

profile:
  align: right
  image: hero_pic.jpg
  image_circular: false 
#   more_info: >
#     <p>555 your office number</p>
news: false # includes a list of news items
selected_papers: false # includes a list of papers marked as "selected={true}"
social: false # includes social icons at the bottom of the page
---

Lorem ipsum dolor sit amet, consectetur `highlight`, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea [link](/al-folio/publications/) consequat. Duis aute irure `another highlight` in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum 

Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui [another link](/al-folio/publications/).

<br />
<br />
<hr />
<h3 class="utk-gray-changing">Latest News</h3>

{% assign news_items = site.news | sort: 'date' | reverse %}
{% assign items_per_page = 5 %}
{% assign total_pages = news_items.size | divided_by: items_per_page | plus: 1 %}
{% if page.url contains '?page=' %}
  {% assign url_parts = page.url | split: '?page=' %}
  {% assign current_page = url_parts[1] | plus: 0 %}
{% else %}
  {% assign current_page = 1 %}
{% endif %}

<h1> {{ current_page }} </h1>
<h1> {{ total_pages }} </h1>

<div class="news">
  <div class="grid">
    {% for item in news_items limit: items_per_page offset: (current_page | minus: 1) * items_per_page %}
      {% include news_item.liquid %}
    {% endfor %}
  </div>
</div>


<!-- Pagination links -->
{% if total_pages > 1 %}
  <div class="pagination-links">
    {% if current_page > 1 %}
      <a href="#" onclick="goToPage({{ current_page | minus: 1 }}); return false;">&laquo; Prev</a>
    {% else %}
      <span>&laquo; Prev</span>
    {% endif %}
    {% for page in (1..total_pages) %}
      {% if page == current_page %}
        <em>{{ page }}</em>
      {% else %}
        <a href="#" onclick="goToPage({{ page }}); return false;">{{ page }}</a>
      {% endif %}
    {% endfor %}
    {% if current_page < total_pages %}
      <a href="#" onclick="goToPage({{ current_page | plus: 1 }}); return false;">Next &raquo;</a>
    {% else %}
      <span>Next &raquo;</span>
    {% endif %}
  </div>
{% endif %}

<script>
  var currentPage = parseInt(localStorage.getItem('currentPage')) || {{ current_page }};
  localStorage.setItem('currentPage', currentPage);

  function goToPage(page) {
    currentPage = page;
    localStorage.setItem('currentPage', currentPage);
    window.location.href = window.location.pathname + '?page=' + currentPage;
  }
</script>

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