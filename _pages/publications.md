---
layout: page
permalink: /publications/
title: Publications
description: 
nav: true
nav_order: 3
---

<style>
  .year-container {
    position: relative;
  }

  .year-container .date {
    position: absolute;
    top: 0;
    right: 0;
    font-size: 0.75em;
    color: #888;
  }
</style>

<div class="publications">

{% for year in site.data.publications | group_by: 'year' | sort: 'name' | reverse %}
  <div class="year-container">
    <h2 id="{{ year.name }}">{{ year.name }}</h2>
    <span class="date">{{ year.items.size }}</span>
    
  </div>
{% endfor %}

</div>
