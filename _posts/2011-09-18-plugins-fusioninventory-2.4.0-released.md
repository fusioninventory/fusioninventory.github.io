---
layout: post
title: FusionInventory for GLPI 2.4.0 released
categories: news
lang: en
---

After 6 months of developpement, the FusionInventory is proud to announce FusionInventory for GLPI 2.4.0. This release is the first version compatible with GLPI 0.80.

To download the plugins, please visit this page : http://forge.fusioninventory.org/attachments/download/456/fusioninventory-for-glpi-metapackage_2.4.0.tar.gz .

<strong>Changelog</strong>

FusionInventory for GLPI 2.4.0 features :

*  Store user agent in agent's configuration
* Better use of GLPI rules system to import and update devices and udpate rules
* FusionInventory related history is displayed as coming from a GLPI user called "Plugin_FusionInventory"
* Send an error message to the FusionInventory-Agent when plugins not installed or activated
* Add Operating System as softwares for local computer inventories (usefull to manage licences)
* Improve task management retry feature, especially when a task has multiple jobs  (still have some bugs when using the  "force runnning" button)
* Add a wizard to make FusionInventory configuration easier for beginners
* Add virtual machines management (new feature in GLPI 0.80)
* Add VMware vCenter/ESX hosts remote inventory
* Fix network discovery and SNMP inventory page status
* Enhanced detection of devices connected to a switch when LLDP and CDP protocols are used (require the upcoming  agent 2.2.x)
* A lot of bugfixes and small features



<strong>Translations</strong>

Thanks to the use of <a href="https://www.transifex.net/projects/p/FusionInventory/" target="_blank">transifex</a> and the help of the community, plugins translation is increasing fast:

* English (en_GB) : 100% translated
* French (France) (fr_FR) : 100% translated
* Spanish (Spain) (es_ES) : 100% translated
* German (Germany) (de_DE) : 98% translated
* Polish (Poland) (pl_PL) : 89% translated
* Italian (Italy) (it_IT) : 83% translated
* Portuguese (Brazilian) (pt_BR) : 71% translated
* Russian (Russia) (ru_RU) : 54% translated
* Estonian (Estonia) (et_EE) : 14% translated
* Turkish (Turkey) (tr_TR) : 8% translated



<strong>Network devices support</strong>

Thanks to the community, there're now more than xxx network devices supported and yyy printers.

Please check this page for more informations : http://forge.fusioninventory.org/projects/pluginfusinvsnmp/wiki/Switch_list



