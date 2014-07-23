---
layout: post
title: "Octostrap 3.2.0 release"
date: 2014-07-23 14:51:10 +0200
comments: true
categories: 
---

As usual, [new Twitter Bootstrap][twbs3.2] release means new **Octostrap3**
release. This time **Octostrap3** also bring some new stuff in, thanks to
various contributors.

CDN friendly
============
Those who prefer to use a CDN instead of hosting assets like Twitter Bootstrap
and jQuery should be able to do so only by modifying "custom" files in the
theme. CSS are loaded from `source/_includes/custom/head.html` while Javascript
are loaded from `source/_includes/custom/after_footer.html` (with the notable
exception of jQuery which is in `source/_includes/custom/head.html`).

Line numbers in gist and code blocks
====================================
Before 3.2.0, **Octostrap3** was hidding line numbers because [Octopress does
not support the documented lineos option][octopress-gh-issue-1485]. [As
correctly pointed out][gh-issue-25] by **shidarin** <q>Octopress is blogging
for hackers</q> so displaying line numbers should be the default. If you don't
want the line numbers you'll find in `sass/custom/_syntax.scss` how to hide
them.

Structured metadata
===================
Thanks to [Dmitry Verkhoturov](https://github.com/paskal) Octostrap has now
[schema.org](http://schema.org/) semantic markup for Blog and Blog Posting. If
you want to improve it for your static pages you would have to do it yourself
though, since the types you might use really depends on the content of your
site.


That's it for today, enjoy !

[twbs3.2]: http://blog.getbootstrap.com/2014/06/26/bootstrap-3-2-0-released/
[octopress-gh-issue-1485]: https://github.com/imathis/octopress/pull/1485
[gh-issue-25]: https://github.com/kAworu/octostrap3/issues/25
