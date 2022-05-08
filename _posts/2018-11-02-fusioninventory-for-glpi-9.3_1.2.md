---
layout: single
title: Release FusionInventory for GLPI 9.3+1.2
---

It's a pleasure to announce the release of plugin FusionInventory for GLPI in version 9.3+1.2.

This version is a bugfix version (with some little features).



# Changelog

* add last_boot field in computer with the date of the last boot got by the agent
* switch the default MySQL engine to InnoDB
* fix and enhance tests
* fix deprecated functions calls (warning in GLPI logs)
* refactor(setup): use constants for GLPI min and max version
* import missing antivirus fields
* check date_expiration of antivirus is well-formatted as date
* fix antivirus expiration date day and month ordering
* fix computer search 
* upgrade lazyjs lib
* add COMMENTS support to softwares inventory 
* fix glpi right to import xml
* prevent duplicate compatibility message
* fix sql query in timeslot
* fix comptability with plugin fields
* add tests for PHP 7.3
* add 'start job now' support on deploy audit check failure
* fix the repeated display of the switch name


# Download & install

You can download the version here: [9.3+1.2](https://github.com/fusioninventory/fusioninventory-for-glpi/releases/tag/glpi9.3%2B1.2)

Don't forget to read the documentation for [install / update the plugin](https://documentation.fusioninventory.org/%20FusionInventory_for_GLPI/%20%20Installation%20%26%20update/1.installation/)

Important information: this version is for GLPI 9.3 (and fixes versions like 9.3.1, 9.3.2 ... so 9.3.x).
Recommanded if you have 9.3.2 or newer.

