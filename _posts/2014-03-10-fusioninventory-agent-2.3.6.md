---
layout: post
title: FusionInventory agent 2.3.6
---

# FusionInventory Agent 2.3.6 release

Hello FusionInventory users,

The FusionInventory Agent maintainers are glad to announce the 2.3.6 release.

You can download it from the usual places:

* [the forge](http://forge.fusioninventory.org/projects/fusioninventory-agent/files) or [CPAN](https://metacpan.org/release/FusionInventory-Agent) for the source distribution
* [the forge](http://forge.fusioninventory.org/projects/fusioninventory-agent-windows-installer/files) for the windows distribution
* etc...

See [download instructions]({{ site.baseurl }}/documentation/agent/installation/) for details.

This release fixes multiple minor issues with network discovery and inventory,
especially for SNMPv3 users. It also introduces a more explicit error message
when the agent is run without any task installed, as it often occurs when using
packages with each task distributed separatly. See the Changes file for
details.

We did our best to provide a solid release, please [contact us]({{ site.baseurl }}/resources/) if
you believe you find something unexpected.
