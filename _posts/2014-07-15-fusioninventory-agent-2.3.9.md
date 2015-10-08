---
layout: post
title: FusionInventory agent 2.3.9
---

# FusionInventory Agent 2.3.9 release

Hello FusionInventory users,

The FusionInventory Agent maintainers are glad to announce the 2.3.9 release.

You can download it from the usual places:

* [the forge](http://forge.fusioninventory.org/projects/fusioninventory-agent/files) or [CPAN](https://metacpan.org/release/FusionInventory-Agent) for the source distribution
* [the forge](http://forge.fusioninventory.org/projects/fusioninventory-agent-windows-installer/files) for the windows distribution
* etc...

See [download instructions]({{ site.baseurl }}/documentation/agent/installation.html) for details.

This release improves printer consumables identification during network
inventory, and adds support for Huawei devices identification (H3C devices were
added in 2.3.8). It also externalize the knowledge used for such recognition
from the perl code into static data files, to allow easier update without
updating the agent itself. Multiple minor local inventory issues were also
fixed, mainly for Windows platform. One of those issue involves a behaviour
change: user-installed softwares won't be inventoried by defaut anymore, unless
scan-user-profile configuration option is used, as it could result in user
profile corruption (#2555).

The subsequent 2.3.9.1 release only fixes an installation issue when installing
from sources.

We did our best to provide a solid release, please [contact us]({{ site.baseurl }}/resources/resources.html) if
you believe you find something unexpected.
