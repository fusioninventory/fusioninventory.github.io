---
layout: post
title: FusionInventory agent 2.3.10
---

# FusionInventory Agent 2.3.10 release

Hello FusionInventory users,

The FusionInventory Agent maintainers are glad to announce the 2.3.10 release.

You can download it from the usual places:

* [the forge](http://forge.fusioninventory.org/projects/fusioninventory-agent/files) or [CPAN](https://metacpan.org/release/FusionInventory-Agent) for the source distribution
* [the forge](http://forge.fusioninventory.org/projects/fusioninventory-agent-windows-installer/files) for the windows distribution
* etc...

See [download instructions]({{ site.baseurl }}/documentation/documentation/agent/installation.html) for details.

This release improves device indentification during network discovery, and
provides better identification of adjoining devices when running a remote
inventory on a network device. It also fixes a few regressions introduced in
2.3.9 release for license key decoding on Windows. And as future major version
(2.4.0) is far away from release, some new features initially introduced there
have been backported, such as LXC container and HyperV machines enumeration.

We did our best to provide a solid release, please [contact us]({{ site.baseurl }}/resources/resources.html) if
you believe you find something unexpected.
