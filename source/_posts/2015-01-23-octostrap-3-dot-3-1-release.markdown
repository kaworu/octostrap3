---
layout: post
title: "Octostrap 3.3.1 release"
date: 2015-01-23 10:49:08 +0100
comments: true
categories: 
---

Trying to keep up to date with
[Twitter Bootstrap](http://blog.getbootstrap.com/2015/01/19/bootstrap-3-3-2-released/),
[here is a release for the 3.3.2 version](https://github.com/kAworu/octostrap3/releases/tag/v3.3.1).
As usual a lot of good stuff happened, here is a quick summary.

The "ordinal" issue
===================
**Octostrap3** is just an Octopress theme. Sadly, Octopress does not let the
theme handle all the HTML generation and rendering (that's why we have to
[patch Octopress]({{ root_url }}/setup/octopatch) for some features). The
latest issue is the date formating, which has already been discussed at length
[here](https://github.com/kAworu/octostrap3/commit/a719bb0bef43a212efd09c74ce07e4e35153635f)
and
[here](https://github.com/kAworu/octostrap3/issues/41).

Long story short you only need to fix the **date\_format** configuration (in
your *\_config.yml* file) to something that
[strftime()](http://www.ruby-doc.org/core-2.2.0/Time.html#method-i-strftime)
can handle. For example, this blog use `%a %e %b %Y, %l:%M %p`.

Open Graph Protocol
===================
Thanks to [Dmitry Verkhoturov](https://github.com/paskal), **Octostrap3** now
support [the Open Graph Protocol](http://opengraphprotocol.org/). This allow a
better integration with Facebook and some others social medias (using the
Open Graph tags). See the
[commit's comment](https://github.com/kAworu/octostrap3/commit/f8ab42916cbb26e59ccc3f1ba1afd415a58e01f2) 
to fully take advantage of it.

a10y
====
**Octostrap3** is in the process of improving Accessibility. Various small
changes have been already made and it is still in progress. You can check and
contribute to improve a10y by following / commenting on
[this issue](https://github.com/kAworu/octostrap3/issues/38), we'd love to hear
about you !

Fixes
=====
As usual, various bug fixes and small improvements here and there :)

Enjoy !
