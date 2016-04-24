# Jekyll::Paginate::Categories

Default pagination generator for Jekyll Categories.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'jekyll-paginate-categories'
```

And then execute:

```bash
bundle
```

Or install it yourself as:

```bash
gem install jekyll-paginate-categories
```

## Usage

### Config example

Example of `/_config.yml` file:

```yaml
# Pagination
paginate: 1
paginate_path: "/p/:num/"

paginate_category_basepath: '/c/:name/'
paginate_category_layout: 'category-test.html'

# Plugins
gems :
  - jekyll-paginate
  - jekyll-paginate-categories
```

### Layout example

Example of `/_layouts/categories.html` file:

```html
---
layout: default
---

<!-- Category title -->
<h1>Category: {{ page.category }}</h1>

<!-- This loops through the paginated posts -->
{% for post in paginator.posts %}
  <article>
    <header>
      <h1><a href="{{ post.url | prepend: site.baseurl }}">{{ post.title }}</a></h1>
    </header>
    <div class="entry-content">
      {{ post.excerpt }}
    </div>
  </article>
{% endfor %}

<!-- Pagination links -->
<div class="pagination">
  {% if paginator.previous_page %}
    <a href="{{ paginator.previous_page_path }}" class="previous">Previous</a>
  {% else %}
    <span class="previous">Previous</span>
  {% endif %}
  <span class="page_number">Page: {{ paginator.page }} of {{ paginator.total_pages }}</span>
  {% if paginator.next_page %}
    <a href="{{ paginator.next_page_path }}" class="next">Next</a>
  {% else %}
    <span class="next">Next</span>
  {% endif %}
</div>
```

## Credits

Inspired by this [Nicolas Carlo's gist](https://gist.github.com/nicoespeon/9964343) for Jekyll 1.5.1.

## Contributing

Note: I'm not a Ruby developper, so feel free to improve my code by submiting a [Github Pull Request](https://github.com/jguyomard/jekyll-paginate-categories/pulls).

You are invited to contribute new features, fixes or updates to this plugin, through a [Github Pull Request](https://github.com/jguyomard/jekyll-paginate-categories/pulls).

## Licence

MIT.
