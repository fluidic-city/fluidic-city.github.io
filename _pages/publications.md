---
layout: page
permalink: /publications/
title: Publications
description: 
years: [Preprint, 2024, 2023, 2022, 2021, 2020, 2019, 2018, 2017] 
nav: true
nav_order: 4
---

<div class="publications">

<hr /> 
{%- for y in page.years %}
  <h2 class="year">{{y}}</h2>
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}
</div>



