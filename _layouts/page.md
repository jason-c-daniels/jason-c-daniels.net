---
layout: default
---
<article class="post">
  <header class="post-header">
    <h1 class="post-title">{{ page.title }}</h1>
    <p class="post-meta">
        <time datetime="{{ page.date | date_to_xmlschema }}" itemprop="datePublished">{{ page.date | date: "%b %-d, %Y" }}</time>
        {% if page.author %}
           • <span itemprop="author" itemscope itemtype="https://schema.org/Person"><span itemprop="name">{{ page.author }}</span></span>
        {% endif %}
        {% if page.updated %}
           • Last updated: <time datetime="{{ page.updated | date_to_xmlschema }}" itemprop="dateUpdated">{{ page.updated | date: "%b %-d, %Y" }}</time>
        {% endif %}
    </p>
  </header>

  <div class="post-content">
    {{ content }}
  </div>

</article>
