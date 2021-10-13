---
layout: single
title: FusionInventory agent 2.2.7
---

Hello FusionInventory users,

The FusionInventory Agent maintainers are glad to announce the 2.2.7 release.

You can download the archive from [the forge](http://forge.fusioninventory.org/attachments/download/867/FusionInventory-Agent-2.2.7.tar.gz)
or directly from [the CPAN](https://metacpan.org/release/FusionInventory-Agent)

## This release changelog

### General:

* additional hack for LG screens [[!bug 1848]]
* additional model for ACER screens hack [[!bug 1840]]
* fix directory creation error handling with older File::Path versions [[!bug 1817]]
* fix initial delay randomness [[!bug 1809]]
* fix spurious null character in decoded strings [[!bug 1837]]

### Windows:

* fix missing bios release information on some machines [[!bug 1820]], [[!bug 1825]]

We did our best to provide a solid release, please [contact us]({{ site.baseurl }}/resources/) is you believe you find something unexpected.

The prebuilt and Windows installer archive will be generated as soon as the
FusionInventory-Agent-Task-Network distribution is released.

## Update

Packages have been finally generated, including the last Deploy and Network bug fix releases.

Please read the [agent installation]({{ site.baseurl }}/documentation/agent/installation/)
page for further informations.
