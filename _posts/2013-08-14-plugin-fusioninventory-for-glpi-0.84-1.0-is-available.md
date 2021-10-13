---
layout: single
title: FusionInventory for GLPI 0.84+1.0 released
---


Some days ago the [GLPI Project](http://www.glpi-project.org/) has released
a new major release of GLPI. We want to congratulate the GLPI team :)

It's a real pleasure to announce the release of plugin FusionInventory for GLPI 0.84+1.0
designed for this new GLPI version.

## major changes

* Aggregation of different fus* plugins into unique plugin named 'FusionInventory'
* Rewrite inventory engine, remove cache, enhance performance (from 150% to more than 1000%)
* reorder menu of plugin (in Plugins > FusionInventory)


* Use GLPI configuration field 'Entity for software creation'
* Use GLPI 'is_dynamic' system, permit to display if a field/component/volume/... is from automatic inventory or managed manually
* Display archname for windows (works only with agent 2.3 minimum)
* Add option to create computer from VM information from host inventory
* Display switch ports in GLPI Core 'network ports' tab and add possibility to switch to GLPI Core view
* Add % of cartridge when create a SNMPmodel (with community tool)
* Page counter graph use now nvd3,  powerfull graphs
* New dynamic groups for deploy system based on GLPI search engine
* Add location link for mirrors (Deploy)
* Add a new rule type : location

## Bug fixes

This release also come with the usual fixes and improvements.

[See the changelog for further information.](http://forge.fusioninventory.org/versions/68)

## Download

The archive is available in the
[Download page of the forge](http://forge.fusioninventory.org/projects/fusioninventory-for-glpi/files)

Bug hunting contest result: 

1. Tomás Abad (14 bugs)
2. (ex aequo): Arnaud Meurou and Romain Ingrand (11 bugs)

So we will send a Rapsberry pi to Tomas ;) Thanks to all of you who reported bugs for the release!

We want to take the opportunity of this news to thanks Tomás Abad who dedicated a
lot of his time to the FusionInventory project. You rocks!
