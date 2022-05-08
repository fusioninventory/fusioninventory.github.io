---
layout: single
title: FusionInventory agent 2.3.5
---

Hello FusionInventory users,

The FusionInventory Agent maintainers are glad to announce the 2.3.5 release.

You can download it from the usual places:

* [the forge](http://forge.fusioninventory.org/projects/fusioninventory-agent/files) or [CPAN](https://metacpan.org/release/FusionInventory-Agent) for the source distribution
* [the forge](http://forge.fusioninventory.org/projects/fusioninventory-agent-windows-installer/files) for the windows distribution
* etc...

See [download instructions](https://documentation.fusioninventory.org/%20FusionInventory_agent/%20%20%20Installation/windows/) for details.

This release fixes a bug in AD environment on Windows: enumeration of local
users and local groups was taking too much time, leading to a timeout issue. It
also fixes somes issues with RAID controllers under Linux, and add support for
modern MegaRAID controllers. For network inventory, the work to get rid of SNMP
models dependency have been continued, and should gives better results in this
case.

Due to a last-minute issue in release process, a 2.3.5.1 version has also been
released immediatly, but it only fix a minor issue for inventory task on AIX.

We did our best to provide a solid release, please [contact us]({{ site.baseurl }}/resources/) if
you believe you find something unexpected.
