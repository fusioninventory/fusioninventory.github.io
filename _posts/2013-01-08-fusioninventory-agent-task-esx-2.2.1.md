---
layout: post
title: FusionInventory agent task-esx 2.2.1
categories: news
lang: en
---

Happy new year!

The FusionInventory Agent maintainers are glad to announce the 2.2.1 release or the ESX task.

This release fix a long-standing bug with fusioninventory-esx command. It was generated
invalid inventory files with no DEVICEID. It was not possible to push them in a server
with fusioninventory-injector.

The release is integrated in the 2.2.7-3 prebuilts.

You can download the archive from [the forge](http://forge.fusioninventory.org/attachments/download/913/FusionInventory-Agent-Task-ESX-2.2.1.tar.gz)
or directly from [the CPAN](https://metacpan.org/release/FusionInventory-Agent-Task-ESX)

## This release changelog

* ensure the DEVICEID is correctly set
* convert the Change file to markdown format

Thank you Marc Caissial and the others who reported the bug.
