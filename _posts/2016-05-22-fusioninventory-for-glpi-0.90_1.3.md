---
layout: single
title: Release FusionInventory for GLPI 0.90+1.3
---

It's a pleasure to announce the release of plugin FusionInventory for GLPI in version 0.90+1.3.

This version is mostly a bug fixes version.

The features:

* Add model 'All Series' in blacklist
* Link fusioninventory cartridges to glpi's ones (Thanks Konstantin KABASSANOV for the contribution)

The fixes:

* Software problem with entities (the update process fix the databases data)
* Fix many problems with MySQL 5.7
* Fix search entities in many search list (the Entity is xxxx)
* Fix get authentication in ESX form
* Fix switch problem for switch not have IFNUMBER in some ports (like DLINK switches)
* Fix the collect module in the plugin. Works now with agent 2.3.x (prefer last releases ;))
* An empty IP in computer inventory not replace previous IP updated (so never do ip xxxxx -> no IP)
* Fix give mirrors for deployment per entities (it gave all mirrors instead mirrors of the entity)
* Not display SNMP parts if no have SNMP rights.

You can download the version [0.90+1.3](https://github.com/fusioninventory/fusioninventory-for-glpi/releases/tag/glpi090%2B1.3)

Don't forget to read the documentation for [install / update the plugin](https://documentation.fusioninventory.org/%20FusionInventory_for_GLPI/%20%20Installation%20%26%20update/1.installation/)

We started the next major version for GLPI 9.1 (so master branch in github repository if for 9.1 version of GLPI).

You can see the roadmap planned for this version [here](https://github.com/fusioninventory/fusioninventory-for-glpi/milestones/0.91+1.0). Yes it looks great ;)

