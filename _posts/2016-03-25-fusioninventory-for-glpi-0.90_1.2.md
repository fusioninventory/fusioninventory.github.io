---
layout: post
title: Release FusionInventory for GLPI 0.90+1.2
categories: news
lang: en
---

It's a pleasure to announce the release of plugin FusionInventory for GLPI in version 0.90+1.2.

The features:

* Add mass action in ipranges list to add them in a job of task
* Show the Netpoints (network outlet) in port view of network equipments form
* Add page to delete unused files for deploy
* Show network outlet in FusionInventory view


The fixes:

* Fix report ports_date_connections
* Do not import a dropdown value if it is locked bug (computer + discovery + network inventory/SNMP)
* Don't show deploymirror form with innexistant id
* Remove unused automatic task 'updatedynamictasks'
* Wrong IP address displayed in a connecte device in port tab in networkequipment form
* Add IP (and all network port criteria) criteria in dynamic group
* SQL Error on package deploy form
* Fix SNMP v3 privprotocol
* Fix display the column "FusInv - SNMP authentication" in glpi/front/printer.php
* Fix sort / order / paging in elements of fusioninventory dynamic groups
* Fix SQL error on add some unmanaged devices (discovery)
* Fix relocated ipranges, deploy mirrors, tasks... in level-1 of entity when delete entity
* Peripherals are now linked to the computer
* Some modification of default import rules


You can download the version [0.90+1.2](https://github.com/fusioninventory/fusioninventory-for-glpi/releases/tag/glpi090%2B1.2)

Don't forget to read the documentation for [install / update the plugin](https://documentation.fusioninventory.org/%20FusionInventory_for_GLPI/%20%20Installation%20%26%20update/1.installation/)



