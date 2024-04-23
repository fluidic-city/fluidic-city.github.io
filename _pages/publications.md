---
layout: page
permalink: /publications/
title: Publications
description: 
nav: true
nav_order: 3
---

<!-- _pages/publications.md -->
<div class="publications">

{% bibliography %}

</div>

<!-- Group by year and print years-->
{% assign years = site.publications | map: 'year' | uniq %}
{% for year in years %}
  <h2>{{ year }}</h2>
  <ul>
    {% for publication in site.publications %}
      {% if publication.year == year %}
        <li>
          <strong>{{ publication.title }}</strong>
          <br>
          {{ publication.authors }}
          <br>
          <em>{{ publication.journal }}</em>
          <br>
          <a href="{{ publication.url }}">[PDF]</a>
        </li>
      {% endif %}
    {% endfor %}
  </ul>
{% endfor %}