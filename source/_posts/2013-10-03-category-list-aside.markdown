---
layout: post
title: "category list aside"
date: 2013-10-03 23:27
comments: true
categories: octopress
---

Here is the code for the awesome category list you can side in the `aside`.

{% include_code category_list.html %}

Put it in the `source/_includes/asides` directory and then adapt your
`_config.yml` accordingly. As example, here is how it is done on this site:

{% codeblock _config.yml lang:yaml %}
# ...
# list each of the sidebar modules you want to include, in the order you want them to appear.
# To add custom asides, create files in /source/_includes/custom/asides/ and add them to the list like 'custom/asides/custom_aside_name.html'
default_asides: [
    asides/recent_posts.html,
    asides/category_list.html
]

# Each layout uses the default asides, but they can have their own asides instead. Simply uncomment the lines below
# and add an array with the asides you want to use.
blog_index_asides: [
    asides/what_is_octostrap3.html,
    asides/recent_posts.html,
    asides/category_list.html,
    asides/github.html
]
# post_asides:
# page_asides:
# ...
{% endcodeblock %}
