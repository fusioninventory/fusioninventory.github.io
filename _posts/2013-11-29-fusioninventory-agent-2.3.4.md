---
layout: post
title: FusionInventory agent 2.3.4
---

Hello FusionInventory users,

The FusionInventory Agent maintainers are glad to announce the 2.3.4 release.

You can download it from the usual places:

* [the forge](http://forge.fusioninventory.org/projects/fusioninventory-agent/files) or [CPAN](https://metacpan.org/release/FusionInventory-Agent) for the source archive
* [the forge](http://forge.fusioninventory.org/projects/fusioninventory-agent-windows-installer/files) for the windows archive
* etc...

See [download instructions]({{ site.baseurl }}/documentation/agent/installation.html) for details.

This release fixes a painful bug in network discovery and inventory where an
infinite loops triggers an 'memory exhausted' error. It also fixes an
installation issue for the new device model database introduced in 2.3.3, but
this was only affecting people installing from sources. As with previous
2.3.x releases, long-term improvement in network inventory have also been
backported from master branch, allowing better information retrieval, and far
less dependency on SNMP models (more details in a future news).

We did our best to provide a solid release, please [contact us]({{ site.baseurl }}/resources/resources.html) is
you believe you find something unexpected.
