---
layout: page
permalink: /publications/
title: Publications
description: 
category_map:
  one: "Mixed Traffic Control and Coordination"
  two: "Traffic Simulation and Reconstruction"
  three: "Traffic Prediction, Estimation, and Analysis"
  four: "Autonomous Driving, Planning, and Control"
  five: "Air Mobility"
  six: "Reinforcement Learning Applications" 
nav: true
nav_order: 4
---

<div class="publications">
<hr /> 
{%- for category in page.categories %}
  {% assign key = nil %}
  {% for map_key, map_value in page.category_map %}
    {% if map_value == category %}
      {% assign key = map_key %}
    {% endif %}
  {% endfor %}

  {% if key %}
    <h2 class="category">{{ key }}</h2>
    {% bibliography -f papers -q @*[category={{key}}]* %}
  {% endif %}
{% endfor %}
</div>


