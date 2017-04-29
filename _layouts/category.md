---
layout: default
---
<h1>B</h1>

{% unless page.content == '' %}
  <p>{{ page.content }}</p>
{% endunless %}

{% for post in site.categories.[page.category] %}
  <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
  {{ post.excerpt }}
{% endfor %}