---
layout: post
title: FusionInventory for GLPI 0.84+3.0
categories: news
lang: en
---

FusionInventory plugin for GLPI 0.84+3.0
========================================

The FusionInventory plugin for GLPI maintainers (ddurieux and kiniou)
are glad to announce the 0.84+3.0 release.

You can download it from [the forge](http://forge.fusioninventory.org/projects/fusioninventory-for-glpi/files) and read installation instructions from [documentation](https://documentation.fusioninventory.org/%20FusionInventory_for_GLPI/%20%20Installation%20%26%20update/1.installation/).

This version brings the following new features:

* [GENERAL] Remove the use of mcrypt PHP extension which are obsolete
* [AGENT] add possibility to define a different port of an agent, if
  not defined use port defined in general option
* [TASK] for netinventory and netdiscovery, you will see in end of
  job the number of devices inventoried and found
* [TASK] Add button to force end all taskjobs of a task
* [COMPUTER INVENTORY] Move general option 'automatic computer
  transfer entity' in entity configuration/form
* [COMPUTER INVENTORY] Improve detection of virtual machine
* [COMPUTER INVENTORY] Enhance computer inventory, mainly for update
  softwares
* [NETINVENTORY] Remove SNMP model creation menu, as [SNMP models
  are now obsoletes]({{ site.baseurl }}/2014/03/12/network-inventory-improvement.html)

It also fix many bugs, see [changelog](http://forge.fusioninventory.org/versions/181) for details.

Last, it also provides better performances, and our small test setup is able to
process 13.2 computer inventories per second.

We are already working on next version for GLPI 0.85, with the following
features:

* possibility to lock a field for an item type
* automatic deletion of agent after X days without contacting the server
* selection of SNMP authentications and ordering for network discovery
* tasks rewrite (not finished)
* cleanup remaining references to SNMP models

We're also working on a REST API for a universal FusionInventory server. More
info in a few months.
