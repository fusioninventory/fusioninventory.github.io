---
layout: single
title: FusionInventory agent task OCS deploy 1.0.8
---

We are glade to annonce a new release of the plugin for the agent that add OCS Inventory software deploment support. It comes after intensive testing on various platforms (Windows, Linux and Mac OS X).

This release fix some serious issues and add small improvments :

* Fix the P2P on Windows XP fby removing the -4 parameter from the route command call
* increase timeout from 1 to 3 secondes, which is needed for Windows XP
* debug: print the tested URL
* ignore 169.x.x.x IP addresses
* don't sleep for FRAG_LATENCY
* Avoid relative path with Archive::Extract, see: http://forge.fusioninventory.org/issues/329



You can download it from the CPAN. The prebult packages have already been rebuilt to include this release.
