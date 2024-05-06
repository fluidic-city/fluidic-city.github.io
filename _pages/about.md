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

Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui [another link](/al-folio/publications/).

<br />
<br />
<hr />
<h3 class="utk-gray-changing">Latest News</h3>


{% assign news_items = site.news | sort: 'date' | reverse %}
{% assign items_per_page = 9 %}
{% assign total_pages = news_items.size | divided_by: items_per_page | plus: 1 %}
{% assign current_page = page.url | remove: '/page' | remove: '/' | plus: 1 | default: 1 %}

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
      <a href="javascript:void(0);" onclick="goToPage({{ current_page | minus: 1 }})">&laquo; Prev</a>
    {% else %}
      <span>&laquo; Prev</span>
    {% endif %}

    {% for page in (1..total_pages) %}
      {% if page == current_page %}
        <em>{{ page }}</em>
      {% else %}
        <a href="javascript:void(0);" onclick="goToPage({{ page }})">{{ page }}</a>
      {% endif %}
    {% endfor %}

    {% if current_page < total_pages %}
      <a href="javascript:void(0);" onclick="goToPage({{ current_page | plus: 1 }})">Next &raquo;</a>
    {% else %}
      <span>Next &raquo;</span>
    {% endif %}
  </div>
{% endif %}

<script>
function goToPage(pageNumber) {
  // Calculate the offset based on the page number
  var itemsPerPage = {{ items_per_page }};
  var offset = (pageNumber - 1) * itemsPerPage;

  // Make an AJAX request to fetch the news items for the selected page
  fetch('{{ site.baseurl }}/news-items?offset=' + offset + '&limit=' + itemsPerPage)
    .then(response => response.text())
    .then(data => {
      // Update the news items container with the fetched data
      document.querySelector('.news .grid').innerHTML = data;
    });
}

function showNewsItem(url) {
  // Make an AJAX request to fetch the content of the selected news item
  fetch('{{ site.baseurl }}' + url)
    .then(response => response.text())
    .then(data => {
      // Display the news item content in a modal or a designated area on the page
      // You can use a library like Bootstrap or create your own modal implementation
      // Example using a simple alert:
      alert(data);
    });
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