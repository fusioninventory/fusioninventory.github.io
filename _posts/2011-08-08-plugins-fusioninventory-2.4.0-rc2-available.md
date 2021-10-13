---
layout: single
title: FusionInventory for GLPI 2.4.0 rc2 available
---

We have released 2.4.0 RC2 version (so release in couple of days :) ).

Since RC1, this is all fixes (many fixes in 2 weeks only) :

* Fix rule with only name EXISTS. <a href="http://forge.fusioninventory.org/issues/1036" target="_blank">Ticket 1036</a>
* Add rule "computer + name" by default (only on install plugin). <a href="http://forge.fusioninventory.org/issues/1039" target="_blank">Ticket 1039</a>
* Fix wizard with computers options.
* Add menu for inventory of computer in wizard to display url link of communication server.
* Fix rules and add unit test for this. <a href="http://forge.fusioninventory.org/issues/1048" target="_blank">Ticket 1048</a>
* Fix modify entity of agent. <a href="http://forge.fusioninventory.org/issues/1047" target="_blank">Ticket 1047</a>
* Fix rule tests form.
* Add transfer massive action to transfer task on another entity. <a href="http://forge.fusioninventory.org/issues/1046" target="_blank">Ticket1 1046</a>
* Fix on reinstall same version : sql-errors and problem on configuration. <a href="http://forge.fusioninventory.org/issues/1042" target="_blank">Ticket 1042</a>
* Fix error php when add unknown device.
* Fix on manage hub (unknown device).
* Fix inconsistent vocabulary. <a href="http://forge.fusioninventory.org/issues/1032" target="_blank">Ticket 1032</a>
* Modify code get XML from agent and so win time and cpu usage.
* Add code to unable to install on version &lt; 0.80 and > 0.81 (prevent errors).
* Fix entity problems when add taskjob. <a href="http://forge.fusioninventory.org/issues/1051" target="_blank">Ticket 1051</a>
* Fix problem on lock alternate username when first inventory of a computer. <a href="http://forge.fusioninventory.org/issues/1040" target="_blank">Ticket 1040</a>
* Add XML writing for unknown device if rule put computer into unknonwn device.
* Add computer to unknown device if it's an unknown device (before computer not imported).
* FIx problem with SMODEL and MMODEL. <a href="http://forge.fusioninventory.org/issues/1043" target="_blank">Ticket 1043</a>
* Fix display Array for Unknown device import rules. <a href="http://forge.fusioninventory.org/issues/1035" target="_blank">Ticket 1035</a>
* Fix creation of switch and printer port in entity root instead switch or printer entity. <a href="http://forge.fusioninventory.org/issues/1049" target="_blank">Ticket 1049</a>
* Fix sql-error on net discovery. <a href="http://forge.fusioninventory.org/issues/1044" target="_blank">Ticket 1044</a>
* Update for error when plugin fusioninventory not present.
* Fix error on search in unknown device. <a href="http://forge.fusioninventory.org/issues/1041" target="_blank">Ticket 1041</a>
* Fix purging unfinished actions prevent task rescheduling. <a href="http://forge.fusioninventory.org/issues/1033" target="_blank">Ticket 1033</a>



Thanks you to users reports bugs.

<strong>2 things will be very great to do by community: </strong>

* - Test and report bugs if you find them
* - Translate plugins FusionInventory in your languages (references languages are "en" and "fr" file



You can download 2.4.0 RC2 Version for GLPI 0.80.X <a href="http://forge.fusioninventory.org/attachments/download/417/fusioninventory-for-glpi-metapackage_2.4.0-RC2.tar.gz" target="_blank">here</a>.
