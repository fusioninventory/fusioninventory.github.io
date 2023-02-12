---
layout: post
title: FusionInventory for GLPI 2.3.4 is available
categories: news
lang: en
---

The plugins FusionInventory for GLPI is now available in 2.3.4. It's a fix version.

To download : [http://forge.fusioninventory.org/attachments/download/386/fusioninventory-for-glpi-metapackage_2.3.4.tar.gz](http://forge.fusioninventory.org/attachments/download/386/fusioninventory-for-glpi-metapackage_2.3.4.tar.gz)

This is the changelog : 
<strong>FusionInventory 2.3.4</strong>


* Fix problem on update from old version
* Security fix (SQL injection)
* Fix link in computer form to force remotly agent to do an inventory now
* Fix taskscheduler when use forcerun and date next execution calculate is more later than now
* On cron task scheduler, fix get periodicity_count and periodicity_type from taskjobs instead from tasks
* Fix cron crash when plugin_id not relation with fusioninventory plugin
* Update JavaScript to display task history details and fix display on some browsers




<strong>FusinvInventory 2.3.4-1</strong>


* Fix display volumns when have no 'LABEL', no 'LETTER', no 'TYPE' but have 'VOLUMN'
* Hide fusinv tabs in computer templates edition
* Security fix (SQL injection)




<strong>FusinvSnmp 2.3.4-1</strong>


* Update SNMP models (about 30 new devices managed)
* Add history when vlan added to network port of switch
* Fix errors on calculate IP when use iprange for netdiscovery
* Fix problem with processnumber not present in XML in snmpquery



