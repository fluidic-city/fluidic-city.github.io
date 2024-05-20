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
{% for key, category in page.category_map %}
  <h2 class="category">{{ key }}</h2>
  
{% endfor %}
</div>


