---
layout: post
title: Website migration
---

Last week, FusionInventory.org website was migrated from
[Wordpress](http://www.wordpress.com) to [Ikiwiki](http://www.ikiwiki.info).

## Why

A few years ago, we decided to use [DITA
XML](http://en.wikipedia.org/wiki/Darwin_Information_Typing_Architecture) for
documentation and
[Wordpress](http://www.wordpress.org) for the Website. DITA is too
complicated for us
without major advantages (tool chain, hard to translate, require an XML
editor).
Wordpress is a great product, but we only used it to publish
static page from time to
time.

## Ikiwiki

So we decided to change the situation to provide an up-to-date
[documentation]({{ site.baseurl }}/documentation.html)
directly on the website. For this, we are very happy with Ikiwiki:

* We can maintain the documentation directly with Git and a text editor
* Anyone can update documentation/* pages from the Web without any
special account
* The [Markdown syntax](ikiwiki/formatting) is simple enough
* Tools like [pandoc](http://johnmacfarlane.net/pandoc/) exist in order to
convert or generate Markdown
from different formats (HTML, ODT, DOC, etc).

The website is hosted at [Branchable.com](http://www.branchable.com/).

## We are looking for people willing to help us for the documentation

* You made a tutorial for your company and want to share it.
* You want to fix some issues with the current documentation.
* You are a translator.

Please [contact us]({{ site.baseurl }}/resources/resources.html).
