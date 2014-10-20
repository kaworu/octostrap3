---
layout: post
title: "GitHub page"
date: 2013-11-23 14:39
comments: true
categories: octopress github
---

{% img no-border pull-right /images/GitHub-Mark.png GitHub logo %}

There is [a new "GitHub Page"]({{ root_url }}/github-page-example) kinda like
the GitHub sidebar, but with more extensive informations.

It has been based on [this one][1] but modified in order to ouput bootstrap
classes (and also use the GitHub account information from octopress config). As
such, it can be used with any octopress/boostrap3 theme (and only a very few
modifications are needed to "untie" it from octopress).

If it suits you, the page's source (as all this blog's code) can be found
[here][2]. In addition to Bootstrap3 & jQuery, you'll need `strftime.js`.

Kudo to Jean Pierre for the idea :)

[1]: http://carlboettiger.info/software.html
[2]: https://github.com/kAworu/octostrap3/blob/gh-pages-src/source/github-page-example/index.html
