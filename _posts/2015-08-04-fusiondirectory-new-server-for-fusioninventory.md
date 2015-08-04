---
layout: post
title: FusionDirectory handles at present inventories managed by FusionInventory-agent
---

For those who do not know [FusionDirectory](https://www.fusiondirectory.org/), this is an infrastructure manager.

It is to LDAP what Webmin could be NIS / NIS +: a modular web interface
to manage an LDAP directory. Its modularity also provide
the management of services that are not directly interoperable with
LDAP.

FusionDirectory thanks to its fusioninventory plugin allows you to store 
software and hardware inventory in an LDAP directory.

This allows for a searchable list as mac or ip address, but also directly 
in the system concerned.

During the consultation of a system, a tab inventory will be highlighted
if an inventory is available for this machine.

There are for the moment no archiving of data the most recent information 
is shown.

The integration of fusioninventory is part of new features needed by the
 upcoming arrival of systems provisioning within FusionDirectory.


You can see screenshots in screenshot menu or directly on this [link]({{ baseurl }}/screenshot/screenshot.html#fusiondirectory).
