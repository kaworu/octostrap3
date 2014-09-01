---
layout: page
navbar: Setup
title: "Installation"
updated: 2013-10-02 19:51
comments: true
sharing: true
footer: true
---

<div class="alert alert-info">
<p>
    <span class="glyphicon glyphicon-info-sign"></span>
    <strong>Octostrap3</strong> aim to be compatible with Octopress 2.0
    (<a href="https://github.com/imathis/octopress">
    master branch</a> on GitHub), the same version that is documented at
    <a href="http://octopress.org">octopress.org</a>. There is no support for
    other Octopress version at the moment.
</div>
You can install **Octostrap3** like any other Octopress theme. Here is how to
do it in a few steps:

<h2>Octopress Installation</h2>

If you have not installed Octopress yet, check the
[setup page](http://octopress.org/docs/setup/). For a quick test (and this
example) you can just clone the
[GitHub repository](https://github.com/imathis/octopress):

    % git clone https://github.com/imathis/octopress.git

<h2>Theme installation</h2>

Installing is straightforward, just clone the theme and run `rake install`:

    % git clone https://github.com/kAworu/octostrap3.git .themes/octostrap3
    % rake "install[octostrap3]"

And that's it ! You can start blogging if the default theme suits you or
continue this setup guid for more awesome customizations :)

<ul class="pager">
    <li class="next"><a href="{{ root_url }}/setup/octopatch">make Octopress plugins output Bootstrap classes &raquo;</a></li>
</ul>
