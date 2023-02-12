---
layout: post
title: FusionInventory for GLPI 0.85+1.0
categories: news
lang: en
---

# FusionInventory plugin for GLPI 0.85+1.0 release

Hello FusionInventory users,

After many months of development by me and kiniou, the first version
compatible with GLPI 0.85.x is available.

This is the new features:

[LOCKS]

* You can lock a field for an itemtype (for example lock contact field for all computers) [ticket 1184](http://forge.fusioninventory.org/issues/1184)

[COMPUTER INVENTORY]

* Speed of computer network ports is now managed [ticket 2439](http://forge.fusioninventory.org/issues/2439)

[RULES]

* You can reset the import rules and recreate default rules [ticket 1271](http://forge.fusioninventory.org/issues/1271)
* Monitor, printers and peripheral of computer pass now in the import rules [ticket 2204](http://forge.fusioninventory.org/issues/2204)
* Add field 'domain' in import rules [ticket 2333](http://forge.fusioninventory.org/issues/2333)
* New default import rules [ticket 2793](http://forge.fusioninventory.org/issues/2793)

[SNMP]

* When do a network discovery, it use the SNMP credentials defined in the IP range + management of the order [ticket 2237](http://forge.fusioninventory.org/issues/2237)
* Remove SNMP models like we said since many months [ticket 2465](http://forge.fusioninventory.org/issues/2465)

[TASK]

* Task management rewriten and add agent-driven mode (ondemand) with timeslot for execution (define when run), monitoring logs... [ticket 2371](http://forge.fusioninventory.org/issues/2371)

[DEPLOY]

* Import and export packages for deployment [ticket 2475](http://forge.fusioninventory.org/issues/2475)

[OTHERS]

* Add cron for delete agent not contacted the server since xx weeks/months [ticket 1708](http://forge.fusioninventory.org/issues/1708)
* Add icon beside computer, printer... field to see if the field is locked or not [ticket 2534](http://forge.fusioninventory.org/issues/2534)
* New rights [ticket 2214](http://forge.fusioninventory.org/issues/2214)


More information:

* You can see the [changelog](http://forge.fusioninventory.org/versions/97)
* You can [download](http://forge.fusioninventory.org/attachments/download/1719/fusioninventory-for-glpi_0.85+1.0.tar.gz)


Thanks again to people who test, report bugs / features, translate... ;)

