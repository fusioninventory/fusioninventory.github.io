---
layout: post
title: FusionInventory for GSIT 9.5+5.0 and for GLPI 10.0.6
categories: news
lang: en
---

We have released new versions of servers!

# Why versions for GLPI 10.0.x are so long?

The main problem with GLPI since 9.5.0 is that many minor releases are in reality majors (database changes, API changes...).

So I take many time at each version to check and verify that everything works (and so fix the code). **it's not great and demotivating**.

# And version for GLPI 9.5 ?

With all changes, I decided to **abandoned** to maintain the plugin for GLPI 9.5.x because all of that take too many times.


# Version for GSIT 9.5? what is GSIT?

[GSIT](https://github.com/DCS-Easyware/gsit) is a fork of GLPI in 9.5.x with many secured and stabilization patches.

The minor versions are really minor and the plugin FusionInventory for GSIT can be used since first version of GSIT, the 9.5.7.

This plugin is maintened of course ans is the LTS server version ^_^.

# Releases

## Plugin FusionInventory for GSIT 9.5+5.0

### LTS version and repository

I duplicate the [github reposity](https://github.com/fusioninventory/fusioninventory-for-gsit/) for this Long-term support (LTS) version.

### Changelog

* compatibility with GSIT (https://github.com/DCS-Easyware/gsit) 9.5.x (from 9.5.7)
* update datafilter (oui, pciid and usbid)
* fix problem with network cards wrong speed in computer inventory


### Download & install

You can download the version here: 

* [9.5+5.0](https://github.com/fusioninventory/fusioninventory-for-gsit/releases/tag/gsit9.5%2B5.0)


Don't forget to read the documentation for [install / update the plugin](https://documentation.fusioninventory.org/%20FusionInventory_for_GLPI/%20%20Installation%20%26%20update/1.installation/)


## Plugin FusionInventory for GLPI 10.0.6

### Changelog

* compatibility with GLPI 10.0.6 **ONLY**
* compatible PHP 8.2
* update datafilter (oui, pciid and usbid)
* new method to prevent SQL errors with the dblock
* fix problem with network cards wrong speed in computer inventory


### Download & install

You can download the version here: 

* [10.0.6+1.0](https://github.com/fusioninventory/fusioninventory-for-glpi/releases/tag/glpi10.0.6%2B1.0)


Don't forget to read the documentation for [install / update the plugin](https://documentation.fusioninventory.org/%20FusionInventory_for_GLPI/%20%20Installation%20%26%20update/1.installation/)


**David Durieux - FusionSuite project leader**
