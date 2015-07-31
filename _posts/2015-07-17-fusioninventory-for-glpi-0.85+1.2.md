---
layout: post
title: FusionInventory for GLPI 0.85+1.2
---

# FusionInventory plugin for GLPI 0.85+1.2 release

Hello FusionInventory users,

after some months of bug fixes and some features, this is the version 0.85+1.2.

This is the changelog:

[FIX]

* Size of disk of computer
* Translation in printer SNMP tab for day, week, month and year
* PHP error in blacklist in some cases
* Right for link with plugin monitoring
* Massive actions (some has been broken)
* SQL error on printer search list when search / display FusionInventory fields 
* PHP notices on computer inventory in some cases
* Display networkInventory in task logs (monitoring)
* Display of several task using same target in task logs (monitoring)
* Update list (prepared, to do, finished...) in task logs (monitoring)
* PHP errors in task / task job preparing
* Remove otherserial in networkinventory because removed from specs
* Fix fatal error on computer inventory for networkport speed
* In default rules import, computer name import is now enable
* List of job in task when job have no name
* Network inventory with printer / networkequipment without IP

[ENHANCED]

* Rename "delete tasks after n days" into "delete tasks logs after n days" in configuration form
* Add cdrom / dvd import
* Network equipment display ports tagged
* Update travis to use new infrastructure + add test coverage (dev part, but important)
* Optimize task logs (monitoring) rendering
* Upgrade js lib and optimize js/css loading
* Don't display inactive task in monitoring/log
* Add regex in action of location rules
* Manage entity rule with regexp and entity tag (2 different rules with regexp + action by entity tag)


You can [download on our forge](http://forge.fusioninventory.org/attachments/download/1875/fusioninventory-for-glpi_0.85+1.2.tar.gz)


Thanks again to people who test, report bugs / features, translate... ;)

Last thing, the tests cover 31% of the code (+9% from version 0.85+1.1)
