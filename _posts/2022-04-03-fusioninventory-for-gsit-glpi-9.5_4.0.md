---
layout: single
title: FusionInventory for GSIT and GLPI 9.5+4.0
---

We have released a new version of plugin FusionInventory for GSIT & GLPI.

# Changelog

It's a major version.

List of new features:

* add code for manage remotework computers and not import external devices in this case. (thanks to ddurieux)
* minor UI change on Computer tab (thanks to AnthoDingo)
* fill domain criteria for location rules (thanks to Vyacheslav Kulakov)
* add icon on deploy packages (thanks to aperret-dcs)
* add new domain management in 9.5 core version. [issue #3162](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/3162) (thanks to ddurieux)
* add possibility to use OR in import rules. [issue #2887](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2887) (thanks to ddurieux)
* add: retrieve cron tasks from agent (with agent 2.7, not yet released) (thanks to aperret-dcs and ddurieux)


List ot fixes:

* fix cron_status undefined variable (thanks to nelero)
* fix Notice when inventory rules are empty (thanks to nelero)
* fix error JQuery for update graph in task (thanks to lermit4)
* fix notice of getAllDataFromTable due to manor GLPI version (thanks to ddurieux)
* fix a query to cancel task (thanks to ddurieux)
* fix ports of HP stacks because not have same name format than Cisco or other manufacturers (thanks to ddurieux)
* fix for delete ports in DB and not anymore in inventory sent by the agent (thanks to ddurieux)
* fix deploy file with PHP8.0 (thanks to ddurieux)
* fix remove XML file when delete computer, printer, network equipment. [issue #2549](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2549) (thanks to ddurieux)
* fix tests and add tests on all GLPI 9.5.x version (because many are major versions, but only > 9.5.2) and GSIT versions (thanks to ddurieux)
* fix sql error when inventory. Case have a '. [issue #3142](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/3142)  (thanks to ddurieux)
* fix monitor data into GLPI / GSIT. [issue #3189](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/3189) &&  [issue #3096](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/3096) (thanks to ddurieux)
* prevent write many logs into errors files of GLPI and enhance disk I/O. [issue #3250](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/3250) (thanks to ddurieux)
* fix update operatingsystem, cases have multiple entries. [issue #3055](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/3055) (thanks to ddurieux)
* update oui database, USB and PCI databases 


# BE CAREFUL - GLPI users

For GLPI users, due to major versions released as minor version in 9.5 branch, this version works only from 9.5.3 to 9.5.7.



# Download & install

You can download the version here: 

* [9.5+4.0](https://github.com/fusioninventory/fusioninventory-for-glpi/releases/download/glpi9.5%2B4.0/fusioninventory-9.5+4.0.tar.bz2)


Don't forget to read the documentation for [install / update the plugin](https://forge.fusioninventory.org/documentation/%20FusionInventory_for_GLPI/%20%20Installation%20%26%20update/1.installation/)

