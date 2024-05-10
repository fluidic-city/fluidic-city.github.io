---
layout: page
permalink: /code_and_data/
title: Code # & Data
description: #        162734094666116204451550489258706332389620674135Code repositories related to publications # Datasets released from the lab and Repositories related to publications.
nav: true
nav_order: 6
---

<!-- Github users disabled -->
<!-- ## GitHub users -->

{% if site.data.repositories.github_users %}

<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% for user in site.data.repositories.github_users %}
    {% include repository/repo_user.liquid username=user %}
  {% endfor %}
</div>

---

{% if site.repo_trophies.enabled %}
{% for user in site.data.repositories.github_users %}
{% if site.data.repositories.github_users.size > 1 %}

  <h4>{{ user }}</h4>
  {% endif %}
  <div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% include repository/repo_trophies.liquid username=user %}
  </div>

---

{% endfor %}
{% endif %}
{% endif %}

<!-- Image -->
<div class="row">
  <div class="col-sm mt-3 mt-md-0">
    {% include figure.liquid loading="eager" path="assets/img/fun_jungle.png" title="example image" class="img-fluid rounded z-depth-1" %}
  </div>
</div>

<!-- <hr />
## Datasets
 - [Beacon: A Naturalistic Driving Dataset During Blackouts for Traffic Reconstruction and Control Benchmarking](https://drive.google.com/drive/) -->

<hr />
<h2 class='utk-gray-changing'>GitHub Repositories</h2>

{% if site.data.repositories.github_repos %}

<div class="repositories d-flex flex-wrap flex-md-row flex-column justify-content-between align-items-center">
  {% for repo in site.data.repositories.github_repos %}
    {% include repository/repo.liquid repository=repo %}
  {% endfor %}
</div>
{% endif %}
