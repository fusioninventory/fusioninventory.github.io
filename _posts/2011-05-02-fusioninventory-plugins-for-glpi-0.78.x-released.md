---
layout: single
title: FusionInventory for GLPI 0.78.x released
---

The FusionInventory plugins for GLPI 0.78.x are now available!

FusionInventory is a free and open source project providing hardware, software inventory and network discovery to the IT asset management and helpdesk software called GLPI.
"FusionInventory for GLPI" is a collection of plugins using GLPI's internal framework and philosophy (entities, habilitations, user interface, etc.) and communicate with some agents (FusionInventory-Agent), deployed on computers.

<em><strong>FusionInventory Core</strong></em>: provides core functionnalities:

Communication with inventory and network discovery agents

*  Tasks management and scheduling ;
* Wake on LAN ;
* Centralized rules for assets import in GLPI ;
* Unknown devices management (temporary zone, in GLPI, before real asset management).



<em><strong>FusionInventory Inventory</strong></em>:

* Local inventory for computers (hardware, software, antivirus) ;
* Handle and update computers already in GLPI.



<em><strong>FusionInventory SNMP</strong></em>:

* Network discovery, unknown devices management (using FusionInventory core plugin) ;
* Remote network devices and printers (thanks to the SNMP protocol) ;
* Get network port informations, VLANs, link between switchs network ports and assets already in  GLPI (computers, network printers, network devices, etc.) ;
*  Change history and reports for each network port ;
* Printers cartridges' ink levels, daily page counters and reports.



More than 1450 network devices and printers are currently supported.

FusionInventory 2.3.2 for GLPI is compatible with GLPI 0.78.x. Version 2.4.0 is on the way, bringing compatibility with GLPI 0.80 (which is currently available as RC2). It'll bring new features, such as virtualization and remote Vmware ESX/ESXi/vCenter inventory.
At the same time, work on usability and documentation is being made, to facilitate and daily use of the plugins.
The agent is being rewritten, and communication protocol is switching from XML to REST/JSON. Finally, later this year, the project should release a brand new software deployment module and an agent for Android phones and tablets.

We invite you to test and use GLPI with FusionInventory, to report bugs and suggest improvements on our "community forge":http://forge.fusioninventory.org.

The team would like to thank:

* our contributors who sent us bugs and patchs, performed tests or translations, and gave us access to some hardware ;
* the GLPI team for his patience and his openness ;
* HP for their support and for providing us access to their datacenter in Grenoble, France to improve the number of HP hardware handled by FusionInventory. They also gave us the opportunity to introduce the project during an internal seminar ;
* Valentin Henon, student at University of the Littoral Opal Coast (France), who created a bootable USB key. It's interesting in case where no OS installed on the computer, or if it's impossible to change computer's configuration. This development has been made during a professional training.



Useful links :

* [Meta package which contains all plugins](http://forge.fusioninventory.org/attachments/download/373/fusioninventory-for-glpi-metapackage_2.3.2.tar.gz)
* [Functionnalities and compatibility matrix](http://forge.fusioninventory.org/projects/fusioninventory/wiki/Features_And_Compatibility)
* [Communitiy forge](http://forge.fusioninventory.org/)
* [GLPI](http://www.glpi-project.org)



Screenshots :

[nggallery id=1] 
