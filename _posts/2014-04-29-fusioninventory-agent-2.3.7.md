---
layout: post
title: FusionInventory agent 2.3.7
---

# FusionInventory Agent 2.3.7 release

Hello FusionInventory users,

The FusionInventory Agent maintainers are glad to announce the 2.3.7 release.

You can download it from the usual places:

* [the forge](http://forge.fusioninventory.org/projects/fusioninventory-agent/files) or [CPAN](https://metacpan.org/release/FusionInventory-Agent) for the source distribution
* [the forge](http://forge.fusioninventory.org/projects/fusioninventory-agent-windows-installer/files) for the windows distribution
* etc...

See [download instructions]({{ site.baseurl }}/documentation/agent/installation/) for details.

This release drops support for deprecated SNMP dictionary and SNMP models,
allowing a large code cleanup for network discovery and inventory, while
also providing better retrieval of firmware and serial numbers. It also fixes
multiple minor issues with local inventory, and allows to log executed commands
with debug level two or more. See the Changes file for details.

The subsequent 2.3.7.1 release only fixes a crash for BSD users in local
inventory.

We did our best to provide a solid release, please [contact us]({{ site.baseurl }}/resources/) if
you believe you find something unexpected.
