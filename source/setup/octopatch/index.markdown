---
layout: page
navbar: Setup
title: "Patching Octopress plugins"
updated: 2013-10-02 21:01:22
comments: true
sharing: true
footer: true
---

<div class="alert alert-warning">
    <span class="glyphicon glyphicon-warning-sign"></span>
    <strong>Attention !</strong><br>
    <ol>
      <li>
        Patching plugins can make upgrades difficult (if you want to to upgrade
        Octopress at all). It is not required and you can skip this step and go
        straight to
        <a href="{{ root_url }}/setup/pick-a-theme">the next part of this guide</a>.
      <li>
        If you don't know how <strong>diff(1)</strong> and
        <strong>patch(1)</strong> works, it is probably better that you avoid
        patching at all.
    </ol>
</div>


<h2>Introduction</h2>

There are a few parts where we can improve Bootstrap's integration into
Octopress. I wish there was another way than patching the plugins, but it is
the only way as long as they output markup and don't delegate formatting to the
theme.

<div class="alert alert-info">
    <p>
      <span class="glyphicon glyphicon-info-sign"></span>
      Theses patches were tested against the latest version of Octopress
      master's branch at the time of writting (01 Sept 2014):<br>
      commit <strong>6bd719fd96a0d03318ef25c1b3cd79abe0e4525b</strong>
    </p>
</div>


<h2>Use Bootstrap's panels for code</h2>

Both the `codeblock` and `include_code` liquid tags have been styled in this
theme so their header looks a lot like Bootstrap's
[panels](http://getbootstrap.com/components/#panels). However, they don't
actually output Bootstrap's classes. The default is fine as long as you're using
the default Bootstrap theme (as this blog) or no theme at all. Here are the two
versions (check the markup):

not patched:

<figure class="code"><figcaption><span>fancy title </span></figcaption><div class="highlight"><table><tbody><tr><td class="gutter"><pre class="line-numbers"><span class="line-number">1</span></pre></td><td class="code"><pre><code class="ruby"><span class="line"><span class="mi">10</span><span class="o">.</span><span class="n">times</span> <span class="p">{</span> <span class="nb">print</span> <span class="s2">"Hello World !"</span> <span class="p">}</span>
</span></code></pre></td></tr></tbody></table></div></figure>

patched:

{% codeblock fancy title lang:ruby %}
10.times { print "Hello World !" }
{% endcodeblock %}

If you want to use another boostrap theme than the default theme, it would be
better to have theses plugins output the Bootstrap's `panel` classes so they
can be style by your theme.  Here are two patches, the first is for the
`code_block` plugin and the second for the `include_code` plugin.

{% include_code code-block-with-bs-panel.patch %}
{% include_code include-code-with-bs-panel.patch %}


<h2>Use Bootstrap's labels for categories</h2>

This patch will improve how categories are displayed (at the end of a post and
in the Archives page). By default, Octopress output the categories as a list of
links separated by commas, for example:

<a href="#">fruits</a>,
<a href="#">vegetables</a>,
<a href="#">mushrooms</a>

One of Bootstrap's components are
[labels](http://getbootstrap.com/components/#labels) and they're perfect for
the job. The patch will turn them into this:

<span class="label label-primary">fruits</span>
<span class="label label-primary">vegetables</span>
<span class="label label-primary">mushrooms</span>

And here it is:

{% include_code category-with-bs-label.patch %}

<ul class="pager">
    <li class="previous"><a href="{{ root_url }}/setup/install">&laquo; Installation</a></li>
    <li class="next"><a href="{{ root_url }}/setup/pick-a-theme">Pick a Bootstrap theme &raquo;</a></li>
</ul>
