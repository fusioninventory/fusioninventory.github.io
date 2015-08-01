---
layout: page
title: How to edit this wiki
---

# How to edit this wiki

The wiki is Ikiwiki. It uses [Markdown syntax](ikiwiki/formatting).

## From HTTP

You can edit the documentation/* pages by yourself, there is no need to register.
You can use an existing account for GMail, Wordpress, etc.

## From Git (advanced)

This site is hosted by [Branchable](http://www.branchable.com).

## Version Control

This site is version controlled using [Git](http://git-scm.com/). Anyone can access its anonymous git repository:

    $ git clone git://fusioninventory.org/

Users with configured ssh keys can modify the git repository:

    git clone ssh://b-fusioninventory@fusioninventory.org/ fusioninventory.org

## How to publish a new (admin only)

    $ git clone git://fusioninventory.org/
    $ cd fusioninventory.org
    $ ./create-post this_is_my_news
    $ git add news/...
    $ git commit -m "this a great news"
    $ git push

# Directory structure

## documentation/

### documentation/references/

Files in these directory are directly generated from the git repositories of the agent by a script.
