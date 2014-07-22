---
layout: post
bootstrap_theme_url: http://bootswatch.com/flatly/bootstrap.min.css
title: "pick a theme for only one page"
date: 2013-10-02 23:19
comments: true
categories: octopress
---

<div data-hide-me="one-page-theme-pick" class="alert alert-info">
    <p>
      <span class="glyphicon glyphicon-info-sign"></span>
      The magic will only happen when you read the post :)
    </p>
</div>

As you can see on this page, it is possible to have a different theme for a
given page or post (this one is the mighty
[flatty](http://bootswatch.com/flatly/bootstrap.min.css))&nbsp;!

<!-- more -->

<script>
    jQuery(document).ready(function ($) {
        $('[data-hide-me="one-page-theme-pick"]').hide();
    });
</script>

<h2>The Trick</h2>

We will use a [front-matter variable](http://jekyllrb.com/docs/frontmatter/) to
select the theme to use. First, adapt `source/_includes/custom/head.html`:

{% codeblock source/_includes/custom/head.html %}
<!-- ... -->
{% raw %}
{% if page.bootstrap_theme_url %}
  <link href="{{ page.bootstrap_theme_url }}" rel="stylesheet" type="text/css">
{% else %}
  <link href="{{ root_url }}/assets/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link href="{{ root_url }}/assets/bootstrap/dist/css/bootstrap-theme.min.css" rel="stylesheet" type="text/css">
{% endif %}
{% endraw %}
<!-- ... -->
{% endcodeblock %}

Now, the Bootstrap theme will be choosen depending on
`page.bootstrap_theme_url`. As an example, here is the front of this page:

{% codeblock example front %}
---
layout: post
bootstrap_theme_url: http://bootswatch.com/flatly/bootstrap.min.css
title: "pick a theme for only one page"
comments: true
categories: octopress
---
{% endcodeblock %}
