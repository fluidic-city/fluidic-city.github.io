---
layout: page
permalink: /publications/
title: Publications
description: 
categories: [one, two, three, four, five, six]
category_map: ["Mixed Traffic Control and Coordination", "Traffic Simulation and Reconstruction", "Traffic Prediction, Estimation, and Analysis", "Autonomous Driving, Planning, and Control", "Reinforcement Learning Applications"]
nav: true
nav_order: 5
---

<div class="publications">
{% for category in page.categories %}
  {% assign key = page.category_map[forloop.index0] %}
  <hr />
  <p class="category_name">{{ key }}</p>
  
  {% bibliography -f papers -q @*[category={{ category }}]* %}

  {% unless forloop.last %}
    <br>
  {% endunless %}
{% endfor %}
</div>


