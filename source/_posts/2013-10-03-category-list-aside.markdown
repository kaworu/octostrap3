---
layout: post
title: "category list aside"
date: 2013-10-03 23:27
comments: true
categories: octopress
---

The code for the awesome category list you can see in the `aside`
<a href="#" id="category-list-pointer">here</a>.

<script>
jQuery(document).ready(function ($) {
    $('#category-list-pointer').click(function (event) {
        event.preventDefault(); // don't follow href
        // XXX: ugly, should have an id.
        var $target = $('h3.panel-title:contains(Categories)').closest('.panel');
        $target.css({opacity: 0}).animate({opacity: 1}, 700);
    });
});
</script>

It will:

- display *all* your categories with a post counter (using Bootstrap's `badge`
  class)
- highlight when you're on the matching category page
- be installed in 3 minutes !

<!-- more -->

<h2>The Trick</h2>

OK, here it is:

{% include_code category_list.html %}

Put it in the `source/_includes/custom/asides` directory and then adapt your
`_config.yml` accordingly. As example, here is how it is done on this site:

{% codeblock _config.yml lang:yaml %}
# ...
# list each of the sidebar modules you want to include, in the order you want them to appear.
# To add custom asides, create files in /source/_includes/custom/asides/ and add them to the list like 'custom/asides/custom_aside_name.html'
default_asides: [
    asides/recent_posts.html,
    custom/asides/category_list.html
]

# Each layout uses the default asides, but they can have their own asides instead. Simply uncomment the lines below
# and add an array with the asides you want to use.
blog_index_asides: [
    asides/what_is_octostrap3.html,
    asides/recent_posts.html,
    custom/asides/category_list.html,
    asides/github.html
]
# post_asides:
# page_asides:
# ...
{% endcodeblock %}
