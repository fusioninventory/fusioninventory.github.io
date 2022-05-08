---
layout: single
title: Release FusionInventory for GLPI 9.2+2.0
---

It's a pleasure to announce the release of plugin FusionInventory for GLPI in version 9.2+2.0.

This version is a major version.



# Changelog

## Features

### Agent management

* purge agent on computer purge when no task associated [[issue #2323]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2323)
* remove agent tab in computer, and get agent status in auto_inventory block [[issue #2372]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2372)
   * animate get status
   * add sentence when no request
   * call ajax and autorefresh after forceinventory


### Computer inventory

* display license fullname if not empty [[issue #2361]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2361)
* factorize software import code and add comments [[issue #2424]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2424)
* add a method to check if a drive is a network drive. Consider smbfs and afpfs as network drives [[issue #2440]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2440)


### Network inventory / discovery

* add column in IP range list to display the name of the SNMP credentials [[issue #2313]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2313)
* remove AES protocols not supported with SNMPv3 [[issue #2385]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2385)
* add capability to location rule engine to work with snmp asset [[issue #2352]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2352)
* display FusionInventory SNMP tab even if no inventory has been performed (to set snmp auth and inventory device without discovery) [[issue #2450]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2450)
* import storage devices as network devices in network inventory and network discovery [[issue #2430]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2430)
* check if port exists using logical number first and then mac address
* add a script to quickly setup a SNMP discovery/inventory environment
* network ports are sorted naturally by name


### Task management

* uniform fusioninventory group label in task job [[issue #2316]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2316)
* remove dead code in tasks. Translation strings that are not yet translated [[issue #2394]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2394)
    * remove dead code in tasks
    * translate hardcoded strings in tasks logs
    * use constants for tasks related states
* add a configuration parameter to configure default jobs re-preparation behavior [[issue #2407]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2407)
* add a warning message for tasks having more than one job
* update mustache from version 2.0. to 2.3.0 (and so fixe some problems on task logs)
* improve the get jobs log process (better performances) [[issue #2412]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2412)
* only one job per task [[issue #2403]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2403)


### Software deployment

* user interactions for Windows software deployment [[issue #2366]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2366)
   * require agent 2.3.21 or higher mandatory
* display a link to the task currently using the package in deploy package form [[issue #2382]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2382)
* use fields plugin in the search engine of computers groups [[issue #2418]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2418)
   * dynamic computers groups - add the matching items on the items tab
   * restore the broken pagination in the dynamic group
   * add a preview in the search form of the dynamic groups
   * remove unused showGenericSearch function
   * allow to include Fields plugin fields in the computers groups criteria
   * allow to use collected (registry,wmi,...) information in the groups criteria
   * do not display search result for a dynamic group on the search tab
   * fix modal view for the dynamic group search results
* add csv import feature for static deploy groups


### Installation script

* add an option to force plugin installation with cli script (for testing purposes) [[issue #2402]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2402)


### Collect

* enhancement to support CRSF compliant POST method for collect tasks from agents supporting the method


### Others

* import simcards, and factorize code [[issue #2393]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2393)
* update local and manual unit test procedure [[issue #2393]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2419)
* clean getsearchoptions (for search)
* add release script
   * fix name, check version, set official
   * check XML file (well formed and release)
   * ask if translations are up-to-date
   * drop embedded minified files
* add computer comment to collection actions rules [[issue #2459]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2459)
* do not add entries in the log at asset creation [[issue #2462]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2462)
* replace beta message [[issue #2457]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2457) [[issue #2482]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2482)
* clean and add extra debug log for rules engine - this will make it easier to understand some problems...
* Change XML filename (add .xml extensions). Ability to download xml files for printers & network equipments.
   * code factorization
   * add a message in the log if no PluginFusioninventoryItem instance can be found for the itemtype
   * factorize uptime display and use glpi core locales instead of the plugin's ones



## Bugs fixed

### Computer inventory

* avoid importing disks with empty serial [[issue #2322]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2322)
* inventory information should not be displayed on computer creation (id <= 0) [[issue #2327]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2327)
* default states_id should not erase locked states_id [[issue #2286]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2286)
* prevent notice when lock set on name
* cast memories frequency to avoid warning on comparison
* only rely on itemtype and items_id to prevent duplicates operating systems
* fix undefined variables [[issue #2392]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2392)
* set network speed interface to 0 if it is not an integer [[issue #2414]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2414)
* fix software version without os [[issue #2437]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2437)
* fix license label display in the asset's software tab [[issue #2470]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2470)


### Task management

* fix warning in timeslot form [[issue #2318]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2318)
* prevent timeslot display when failing to check entities
* ensure taskid is not empty to prevent JS issues [[issue #2319]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2319)
* target a task with computers massive actions [[issue #2404]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2404)
* check if a task and a package were chosen for computer massive action: task target [[issue #2431]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2431)


### Software deployment

* add missing directory checks in deploy package [[issue #2305]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2305)
* fix deploy locales [[issue #2383]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2383)
* fix package upload form display [[issue #2391]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2391)
* fix non static method called statically - deploy - [[issue #2463]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2463)
* fix > and < in deploy command


### Collect

* run collect shouldn't delete old content for other agents
* set an entities_id for collected fields [[issue #2416]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2416)


### others

* ensure JS lib is loaded when required [[issue #2067]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2318)
* fix project URL in plugins page
* don't add doublon for existing import rules [[issue #2320]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2320)
* prevent notices in ignoredimportdevice [[issue #2359]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2359)
* sometime agent don't send name [[issue #2358]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2358)
   * fix errors in php log file when a computer, a monitor or a printer doesn't have a name
* fixes for Maria 10.2
   * ensure index are removed before fields
   * see https://mariadb.com/kb/en/library/alter-table/#drop-column
   * fixes following mariadb 10.2 changes and improvements
   * add build matrix
   * handle update calls to current_timestamp
   * handle curent_timestamp...
   * default value on longblob
* fix NetworkEquipment import (by serial) [[issue #2380]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2380)
   * replacement typo NetworkEquipment import (by serial) by NetworkEquipment update (by serial)
* make consistent messages "Equipment ignored on import" [[issue #2308]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2308)
* fix dropdown values to link an agent to a computer: was sending a wrong entity ID [[issue #2451]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2451)
* fix standalone FIRMWARES and SIMCARDS
* fix xml dir casesensitive [[issue #2465]](https://github.com/fusioninventory/fusioninventory-for-glpi/issues/2465)
    * remove old script
    * create a constant for xml file path and remove tmpmodels and walk directories


# Download & install

You can download the version here: [9.2+2.0](https://github.com/fusioninventory/fusioninventory-for-glpi/releases/tag/glpi9.2%2B2.0)

Don't forget to read the documentation for [install / update the plugin](https://documentation.fusioninventory.org/%20FusionInventory_for_GLPI/%20%20Installation%20%26%20update/1.installation/)

Important information: this version is for GLPI 9.2 (and fixes versions like 9.2.1, 9.2.2 ... so 9.2.x).

