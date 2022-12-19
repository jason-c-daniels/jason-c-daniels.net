<!DOCTYPE html>
<html lang="en">

  {% include head.html %}

  <body>

    {% include header.html %}

    <div class="page-content">
      <div class="wrapper">
        <h1>{{ page.title }}</h1>

        {% unless content == '' %}
          {{ content | markdownify }}
        {% endunless %}
        <p/><p/>
        {% for post in site.categories[page.category] %}
          <span class="post-meta">{{ post.date | date: "%b %-d, %Y" }}</span>
          <h2><a href="{{ post.url }}">{{ post.title }}</a></h2>
          {{ post.excerpt }}
        {% endfor %}

      </div>
    </div>

    {% include footer.html %}

  </body>

</html>



