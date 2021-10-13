---
layout: single
title: FusionInventory for GLPI 2.3.6 is available
---

The plugins FusionInventory for GLPI is now available in 2.3.6. It's a fix version.

To download : [fusioninventory-for-glpi-metapackage_2.3.6](http://forge.fusioninventory.org/attachments/download/410/fusioninventory-for-glpi-metapackage_2.3.6.tar.gz)
Remember : FusionInventory plugins 2.3.x is compatible only with GLPI 0.78.x and not with GLPI 0.80 !

<strong>Tip</strong> : Delete the 3 plugins folder in glpi/plugins/ before unpack new version

This is the changelog : 
<strong>Core (FusionInventory 2.3.6)</strong>


* Add network port fields (IP and MAC) on unknown devices. ([ticket #925](http://forge.fusioninventory.org/issues/925))
* Fix problem when import unknown device into GLPI when type is network equipment (port is now imported). ([ticket #982](http://forge.fusioninventory.org/issues/982))
* Add lock in massive modifications of computers. ([ticket #933](http://forge.fusioninventory.org/issues/933))




<strong>Local inventory (FusinvInventory 2.3.6-1)</strong>


* Add model for monitor. ([ticket #969](http://forge.fusioninventory.org/issues/969))
* Fix SQL Error when import computer with softwares and not have softwares in double (for old agents). ([ticket #999](http://forge.fusioninventory.org/issues/999))
* Fix problem when use printer and monitor in global mode because plugin put right in global but duplicate monitors and peripheral. ([ticket #1000](http://forge.fusioninventory.org/issues/1000))
* Use HARDWARE/CHASSIS_TYPE for computer type (with 2.1.9 version of agent).  ([ticket #908](http://forge.fusioninventory.org/issues/908))




<strong>Remote inventory (FusinvSnmp 2.3.6-1)</strong>


* Fix printer page counter report.
* Fix and update SNMP models have some problems with oids



