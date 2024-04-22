---
layout: page
title: News
permalink: /news/
description: A collection of news and announcements.
nav: true
nav_order: 4
display_categories: false
horizontal: false
---

{% if site.enable_news_categories and page.display_categories %}
  {% for category in page.display_categories %}
    {{ category }}

    {% assign categorized_news = site.news | where: "category", category %}
    {% assign sorted_news = categorized_news | sort: "date" | reverse %}
    {% if page.horizontal %}
      {% for item in sorted_news %}
        {% include news_item_horizontal.liquid %}
      {% endfor %}
    {% else %}
      {% for item in sorted_news %}
        {% include news_item.liquid %}
      {% endfor %}
    {% endif %}
  {% endfor %}
{% else %}

  {% assign sorted_news = site.news | sort: "date" | reverse %}

  {% if page.horizontal %}
    {% for item in sorted_news %}
      {% include news_item_horizontal.liquid %}
    {% endfor %}
  {% else %}
    {% for item in sorted_news %}
      {% include news_item.liquid %}
    {% endfor %}
  {% endif %}
{% endif %}



