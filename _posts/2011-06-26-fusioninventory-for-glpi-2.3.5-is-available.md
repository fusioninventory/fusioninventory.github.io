---
layout: single
title: FusionInventory for GLPI 2.3.5 is available
---

The plugins FusionInventory for GLPI is now available in 2.3.5. It's a fix version.

To download : [fusioninventory-for-glpi-metapackage_2.3.5](http://forge.fusioninventory.org/attachments/download/408/fusioninventory-for-glpi-metapackage_2.3.5.tar.gz)
Remember : FusionInventory plugins 2.3.x is compatible only with GLPI 0.78.x and not with GLPI 0.80 !

This is the changelog : 
<strong>Core (FusionInventory 2.3.5)</strong>


* Fix security rights on some pages and tabs! (thanks  Michał Panasiewicz)
* Fix a bug because when agent update inventory, it lock all fields
* Fix a bug on communication page when class not found
* Fix problem on calculate next execution of task (can be take many and many times ([ticket #949](http://forge.fusioninventory.org/issues/949))
* Fix SQL query very long on run task (in get action informations) and may have a timeout  ([ticket #954](http://forge.fusioninventory.org/issues/954))
* Fix chmod on some files (thanks Remi Collet)
* Fix bug on force run task because it run other tasks too
* Fix compatibility with OCS agents (old version of unix) because XML is in iso instead of utf-8
* Fix error when calculate next task execution when periodicity not set
* Fix display HTML table of task job logs




<strong>Local inventory (FusinvInventory 2.3.5-1)</strong>


* Fix / at the begin of user name ([ticket #909](http://forge.fusioninventory.org/issues/909))
* Fix some computer fields is updated when they are locked ([ticket #971](http://forge.fusioninventory.org/issues/971))
* Provide a way to read alternative system manufacturer and model on Asus motherboard ([ticket #904](http://forge.fusioninventory.org/issues/904))
* Fix import softwares with entities. Thanks  David Olivier
* When software have no version number, put 'N/A' instead '0' because cause some problems on GLPI core. Thanks  David Olivier
* Fix is_global field when add monitor, peripheral and printer
* Fix VIRTUALMACHINES section in integrity check of data
* Fix problem with integrity and STORAGE sections when have harddisks and drives. ([ticket #975](http://forge.fusioninventory.org/issues/975))
* 



<strong>Remote inventory (FusinvSnmp 2.3.5-1)</strong>


* Fix chmod on some files (thanks Remi Collet)
* Fix bug in display network port connections log of a switch port. ([ticket #959](http://forge.fusioninventory.org/issues/959))
* Fix security rights on some pages and tabs
* Fix set wrong SNMP model when not find with sysdescr in printer and networkequipment devices. ([ticket #974](http://forge.fusioninventory.org/issues/974))
* Fix error/warning on snmpquery on agent. ([ticket #976](http://forge.fusioninventory.org/issues/976))
* Fix when port connected to itself (perhaps bug) and new port must be connected, it keep connection on itself and don't connect it. ([ticket #983](http://forge.fusioninventory.org/issues/983))
* Update models



