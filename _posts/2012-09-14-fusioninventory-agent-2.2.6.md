---
layout: post
title: FusionInventory agent 2.2.6
---

Hello FusionInventory users,

The FusionInventory Agent maintainers are glad to announce the 2.2.6 release.

You can download the archive from [the forge](http://forge.fusioninventory.org/attachments/download/726/FusionInventory-Agent-2.2.6.tar.gz)
or directly from [the CPAN](https://metacpan.org/release/FusionInventory-Agent)

## Description

The FusionInventory agent is a generic management agent. It can perform a
certain number of tasks, according to its own execution plan, or on behalf of a
GLPI server with fusioninventory plugin, acting as a control point.

Two of these tasks are included in agent source distribution, local inventory
and wake on lan. Other tasks are distributed separatly, excepted for binary
distributions where they are bundled together.

## This release changelog

### Installation:

* fix installation with older MakeMaker versions
* do not generate html version of man pages
* minor fixes to dependencies list

### General:

* better fix for size parsing with HP RAID controllers, avoiding warnings
  [[!bug #1807]]
* implement model-specific hack for ACER screens serials [[!bug 1607]]

### Linux:

* fix parsing of newer ifconfig output, such as used on Fedora 17



We did our best to provide a solid release, please [contact us]({{ site.baseurl }}/resources/resources.html) is you believe you find something unexpected.
