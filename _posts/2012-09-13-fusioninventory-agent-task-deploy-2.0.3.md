---
layout: post
title: FusionInventory agent task-deploy 2.0.3
categories: news
lang: en
---

Hello FusionInventory users,

The FusionInventory Agent Task Deploy maintainers are glad to announce the 2.0.3 release.

This task allows the agent to perform software installation on its host.

If the P2P option is turned on, the agent will looks for peer in its network. The network range size will be limited at 255 machines.

You can download the archive from [the forge](http://forge.fusioninventory.org/attachments/download/725/FusionInventory-Agent-Task-Deploy-2.0.3.tar.gz)
or directly from [the CPAN](https://metacpan.org/release/FusionInventory-Agent-Task-Deploy)

## This release changelog

* Don't give up if download failed, but retry 5 times in a row
* Fix P2P on Linux
* Add directoryExists and directoryMissing test


We did our best to provide a solid release, please [contact us]({{ site.baseurl }}/resources/) is you believe you find something unexpected.
