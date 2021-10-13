---
layout: single
title: FusionInventory agent 2.3.3
---

Hello FusionInventory users,

The FusionInventory Agent maintainers are glad to announce the 2.3.3 release.

The archive is available either on the [the forge](http://forge.fusioninventory.org/attachments/download/1147/FusionInventory-Agent-2.3.3.tar.gz)
or directly from [the CPAN](https://metacpan.org/release/FusionInventory-Agent)

The Windows packages are already available [on the website](http://forge.fusioninventory.org/projects/fusioninventory-agent-windows-installer/files).

## This release changelog

### inventory task

* fix missing 32bits software on 64bits windows (#2212)

### netinventory task

* fix SNMP reconnection when issuing VLAN-specific queries on some Cisco
  devices (#2178)
* use longer default SNMP timeout, and make them configurable
* handle MAC addresses with embedded VLAN identifier

### netdiscovery task

* backport device model identification from sysobjectid value

### core

* clean up in the distribution, thanks Olivier Mengué <dolmen@cpan.org>


We did our best to provide a solid release, please [contact us]({{ site.baseurl }}/resources/) is you believe you find something unexpected.
