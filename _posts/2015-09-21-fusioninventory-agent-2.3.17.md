---
layout: post
title: FusionInventory agent 2.3.17
---

The FusionInventory Agent maintainers are glad to announce the 2.3.17 release.

You can download it from the usual places:

* the forge for the source distribution
* the forge for the windows distribution (soon...)
* etc...

See [download instructions]({{ site.baseurl }}/documentation/agent/installation/) for details.

There has been a long delay since 2.3.16 release, almost 7 months. As a consequence, a large number of bug fixes have been accumulated, some of them fixing long-standing issues, such as:

- multi-threading issues under Windows for netdiscovery and netinventory tasks
- recurrent timeout under MacOSX for inventory task

They are also notable enhancements, such as better VLAN retrieval for non-Cisco devices, or support for Kyocera printers page counters. As well as a brand new Collect task, much more flexible than inventory for retrieving arbitrary information from your assets.

Last but not last, a change in my professional situation is making quite difficult for me to continue maintaining the agent. Fortunatly, we now have a new maintainer. And in order to make this change quite transparent for everyone, he has the same name as myself :) Welcome aboard, Guillaume !
