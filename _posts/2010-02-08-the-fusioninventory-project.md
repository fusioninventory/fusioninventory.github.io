---
layout: single
title: The FusionInventory project
redirect_from:
 - /wordpress/2010/02/08/hello-world/
---

<strong>The FusionInventory project</strong>

During the FOSDEM meeting, a group of people decided to join their force to create a new independent project called FusionInventory. FusionInventory project aims to provide a better integration between the different asset management projects including OCS Inventory, GLPI and GOSA.

<strong>Components</strong>

*  FusionInventory Agent (former OCS Inventory UNIX agent). We want it to be the sole agent installed on the machines. Because of that we improved its internal architecture to be more modular and we will port it to Windows.
* FusionInventory For GLPI (former GLPI Tracker plugin ). Today's Tracker is a powerful SNMP/Network discovery extension for GLPI. This plugin will be the interface between the agent and GLPI.



<strong>Roadmap</strong>

*  Feb 2010: Alpha release of the agent including SNMP, WakeOnLan
*  Mar 2010: Beta release of the agent including P2P OCS Deployment
*  Apr 2010: 2.1 release, Windows support
*  May 2010: GOsa² integration including Linux and Windows OS deployment (FAI and OPSI) and LTSP support



<strong>Others</strong>

*  The current agent already supports VirtualMachines detection. We wish to integrate it with GLPI &amp; OCS quickly.



About OCS. We believe in FreeSoftware, standard and interoperability. OCS Inventory is a major software for our users and it's critical to keep the compatibility with it. That's why we use OCS network protocol and XML format. We want to continue to work with OCS Team to keep the compatibility as good as possible. This IS a major point for us.

Everybody is welcome in this project. Even more if you love cooperation between projects and are open-minded :). We look for:

*  Windows packager of the agent
*  Perl &amp; PHP programmers
*  Beta testers
*  Friendly people on IRC
*  <strong>YOURSELF</strong>!



<strong>Who we are</strong>
- Myself, former OCS Inventory core Team Member and OCS Inventory UNIX Agent maintainer
- Benoit Mortier, GOsa² core Team Member, FAI and OPSI contributor
- David Durieux, "FusionInventory For GLPI" core member, "FusionInventory Agent" contributor, GLPI conributor
- And more...
