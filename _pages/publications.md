---
layout: page
permalink: /publications/
title: Publications
description: 
categories: [one, two, three, four, five, six]
category_map: ["Mixed Traffic Control and Coordination", "Traffic Simulation and Reconstruction", "Traffic Prediction, Estimation, and Analysis", "Autonomous Driving, Planning, and Control", "Air Mobility", "Reinforcement Learning Applications"]
nav: true
nav_order: 4
---

<div class="publications">
{% for category in page.categories %}
  {% assign key = page.category_map[forloop.index0] %}
  <h2 class="category"></h2>
  <p class="category_div">{{ key }}</p>
  
  {% bibliography -f papers -q @*[category={{ category }}]* %}
{% endfor %}
</div>


