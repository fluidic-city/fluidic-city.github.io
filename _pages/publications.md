---
layout: page
permalink: /publications/
title: Publications
description: 
years: [Preprint, 2024, 2023, 2022, 2021, 2020] 
nav: true
nav_order: 4
---

<!-- Image -->
<div class="row">
  <!-- Empty column on the left -->
  <div class="col-1"></div>

  <div class="col-10 mt-3 mt-md-0">
    {% include figure.liquid loading="eager" path="assets/img/comics/writing.png" title="example image" class="img-fluid rounded z-depth-1" style="width: 500px !important;" %}
  </div>

  <!-- Empty column on the right -->
  <div class="col-1"></div>
</div>

<div class="publications">
{%- for y in page.years %}
  <!-- <h2 class="year">{{y}}</h2> -->
  {% bibliography -f papers -q @*[year={{y}}]* %}
{% endfor %}
</div>



