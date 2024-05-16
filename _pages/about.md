---
layout: about
title: About
permalink: /
subtitle: 

profile:
  align: right
  image: mk.jpg
  image_circular: false 
  more_info: Min H. Kao Building
  more_info_address: 1520 Middle Drive
  more_info_city: Knoxville, TN 37996, USA

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

Welcome to the Fluidic City Lab within the [Min H. Kao Department of Electrical Engineering and Computer Science](https://www.eecs.utk.edu/) at the [University of Tennessee, Knoxville](https://www.utk.edu/)! We are a highly interdisciplinary team passionate about shaping future urban environments through the advancement of human mobility. Our current focus lies in the integration of increasing autonomy into the mobility system and its impact on the built environment and urban inhabitants. We draw research methods and tools from machine learning/reinforcement learning, robotics, multi-agent systems, human-computer interaction, and transportation engineering.

<hr />
<h3 class="utk-gray-changing">News</h3>

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
