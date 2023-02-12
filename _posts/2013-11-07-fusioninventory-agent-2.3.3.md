---
layout: post
title: FusionInventory agent 2.3.3
categories: news
lang: en
---

Hello FusionInventory users,

The FusionInventory Agent maintainers are glad to announce the 2.3.3 release.

You can download it from the usual places:

* [the forge](http://forge.fusioninventory.org/projects/fusioninventory-agent/files) or [CPAN](https://metacpan.org/release/FusionInventory-Agent) for the source archive
* [the forge](http://forge.fusioninventory.org/projects/fusioninventory-agent-windows-installer/files) for the windows archive
* etc...

See [download instructions](https://documentation.fusioninventory.org/%20FusionInventory_agent/%20%20%20Installation/windows/) for details.

This release fix some bugs in network inventory with some specific devices
(timeout issues, crashes with multiple vlans), and a bug in local inventory on
Windows 64bits (missing 32bits softwares). It also provides a new feature,
backported from future 2.4 version, which is better device identification in
network discovery (more details in a future news).

We did our best to provide a solid release, please [contact us]({{ site.baseurl }}/resources/) is
you believe you find something unexpected.
