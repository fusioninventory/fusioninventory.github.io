---
layout: post
title: FusionInventory for GLPI 9.4+2.0, 9.4+2.1
---

# Introduction

We have released a new version of plugin FusionInventory for GLPI 9.4: 9.4+2.0 (major release) & some days after 9.4+2.1 (bugfix release).

This release introduce many great features and we are happy to present them in this news.

![The fiesta](https://media.giphy.com/media/KYElw07kzDspaBOwf9/source.gif)


# Features

## inventory number added in devices import rules

The inventory number found on the BIOS of computers (if defined of course) pass now into import rules.
With this feature, you can, for example, find / match the right computer with this criterium to update it.


## Manage inventory number auto-generation 

It's possible to auto-generate the inventory number in two cases:

* new device without inventory number
* existing device without inventory number

The generation of inventory number can be done for these type of devices : 

* _computers_
* _monitors_
* _network equipments_
* _peripherals_
* _phones_
* _printers_

You can configure it in the menu _General configuration_ of the plugin FusionInventory.

For the syntax, check [this link](https://forum.glpi-project.org/viewtopic.php?pid=22327#p22327)



## Made teamviewer id clickable / start teamviewer connection directly from GLPI computer interface

The Teamviewer ID got by the agent is displayed on the main tab of the computer form, in the part named _Remote management_.

![teamviewer](/news_docs/fusioninventory_9.4_2.0_teamviewer_id.png)


The link generated is like _https://start.teamviewer.com/YOURID_ and you can directly click on it to open the connection to the computer.


## Add / manage components from network SNMP 

This big and great feature, that we wanted to add since many years, is the components management from network equipments.

This feature is composed in 2 parts.

The first part is the code in the Agent added in version 2.4.3 and earlier (so 2.5.x version too) to get and put components in the schema (XML) used to communicate with the server.

The second part is the code in the plugin FusionInventory to manage them.

### What are these components

The components are the physical elements can be plugged / unplugged in network equipments like:

* _switches stacked_ : 2 or more switches linked with serial cable and saw like a unique switch
* _wifi controllers_ : manage wifi endpoints. In this case there is no SNMP on wifi endpoint, all are managed by the controller. So inventory by SNMP the conrtoller will get all of these wifi endpoints.
* _enclosures_ : you can plug many elements / blades : powersupplies, switches, servers, fans...


### How inventory it

You will inventory the main element (IP of the stack, Wifi controler, the Enclosure main IP...) like in the previous versions of agent / plugin FusionInventory.


### Parse inventory

Once agent has done the inventory, it send data to the server (plugin FusionInventory).

The plugin will get all components, pass them into the _import rules_ and if rule match, create / update into GLPI. Each component are independant.

For example, in the case of 3 switches stacked, you will have into GLPI 3 switches instead of 1 in previous versions.


## Add an option to enable monitor serialnumber partial matching

We add an option could be enabled when people starts to see duplicated monitors with serial numbers partially different of the monitor added manually with the full serial number.

We needed add this option because the serial number is not complete in the EDID information of some monitors.

 
## Add tagged vlan

The vlan tagged or untagged is now imported by the plugin FusionInventory.

Some code has been added too in the agent, to works nicely and will be available in the next agent release, the _2.5.2_ (we don't have the release date for the moment).


## Manage the paperroll like a cartridge

In some printers, like ZEBRA printers, you don't manage number of pages but the length of the paper roll printed.


## Add new mapping for printer consummables

Add mapping fields for printer consummable.

You can check the list on [the pull request](https://github.com/fusioninventory/fusioninventory-for-glpi/pull/2787)
 


## Update import rules to pass connections detected on switches (mac, CDP/LLDP)

All devices found on a network equipment (mac address, little more information with CDP/LLDP) pass now into _import rules_ to manage import, update or deny import.

The install / update of the plugin add 8 new rules in the begin list, so before the rule _Computer constraint (name)_.

These new rules are:

* _Device update (by mac+ifnumber restricted port)_
*	_Device update (by mac+ifnumber not restricted port)_
*	_Device update (by ip+ifdescr restricted port)_
*	_Device update (by ip+ifdescr not restricted port)_
*	_Device import (by mac+ifnumber)
*	_Device import (by ip+ifdescr)_
*	_Update only mac address (mac on switch port)_
*	_Import only mac address (mac on switch port)_

If you have troubles, you can reinitialize the list, be careful in case you had modified / add rules for special cases of your devices.


## Add import rule information into another type of items can be inventoried (monitor, peripheral, phone...)

The tab _Import information_ has been added in another types than standard _Computer_, _NetworkEquipment_ like _Monitor_, _peripheral_, _phone_...


## Enhance rule matched logs with display criteria used

In the tab _import information_, we have added the criteria passed into the rule that has matched, in the goal to enhance / modify your rules if needed.

![display criteria import rule](/news_docs/fusioninventory_9.4_2.0_display_criteria_import_rule.png)




# Download & install

You can download the version here: 

* [9.4+2.1](https://github.com/fusioninventory/fusioninventory-for-glpi/releases/tag/glpi9.4%2B2.1)


Don't forget to read the documentation for [install / update the plugin](http://fusioninventory.org/documentation/fi4g/installation.html).

