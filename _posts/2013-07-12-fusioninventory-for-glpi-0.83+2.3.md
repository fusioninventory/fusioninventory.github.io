---
layout: single
title: FusionInventory for GLPI 0.83+2.3 is available (maintenance version)
---

This maintenance version comes with no new feature. It only fixes various problem.
This release is comptabible with GLPI greater than 0.83.3 and up to 0.84.

If you already test GLPI 0.84, you can help [us to debug the future stable release]({{ site.baseurl }}/2013/02/12/plugin-fusioninventory-0.84+1.0-beta-test-bug-hunter.html).

As usual, the upgrade process is documented. Please take 5 minutes of
your time to read the documentation first:
<https://documentation.fusioninventory.org/%20FusionInventory_for_GLPI/%20%20Installation%20%26%20update/1.installation/>

This version fixes:

* task and taskjob name cutted when the ' character is present in the name
* compatibility with last version of the _manufacturer plugin_
* fix CSS problem in due date of the GLPI tickets
* fix error on upgrade plugin
* fix right problem on computer groups
* fix duplicated fields in general config of SNMP (keep SNMP history)
* manage virtual networkport card of computer and switch connection
  try to connect first the physical card instead of the virtual.
* problem during automatic entity transfer entity (Computer)
* enhance SNMP model creation tool (with community tool)

See all tickets here: <http://forge.fusioninventory.org/versions/157>

You can download it here:
<http://forge.fusioninventory.org/attachments/download/1001/fusioninventory-for-glpi-metapackage_0.83%202.3.tar.gz>
