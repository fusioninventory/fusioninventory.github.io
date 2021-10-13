---
layout: single
title: FusionInventory for GLPI 0.80+1.1 rc1
---

We released a first release candidat of 0.80+1.1.
<strong>Please report bugs but do NOT use it in production!</strong>

## Changes


* We fixed many bugs, unit tests pass now (171432 checks)
* We added support for about 200 new SNMP devices.



Thank you for test and bug reports.

You can download this version [here](http://forge.fusioninventory.org/attachments/download/502/fusioninventory-for-glpi-metapackage_0.80_1.1-RC1.tar.gz)


Changelog is available [here](http://forge.fusioninventory.org/projects/fusioninventory-for-glpi/roadmap#0.80+1.1)

## New Deploy feature

This release comes with a new “Deploy” plugin. The feature requires a 2.2.x agent. This agent is also in a RC/validation cycle. You can download it here:

* [Windows](http://prebuilt.fusioninventory.org/devel/2.2.x/windows-i386/)
* <a href="http://prebuilt.fusioninventory.org/devel/2.2.x/macosx-intel/">MacOSX Intel</<a>
* <a href="https://github.com/fusinv/fusioninventory-agent/tarball/2.2.x">Agent source tarball</<a> and the [Deploy modules](https://github.com/fusinv/fusioninventory-agent-task-deploy/tarball/master)
* <a href="http://prebuilt.fusioninventory.org/devel/2.2.x/">Other systems</<a>




<a href="/news_docs/presentation_deploy_3.jpg"><img src="/news_docs/presentation_deploy_3-300x195.jpg" alt="" title="presentation_deploy_3" width="300" height="195" class="aligncenter size-medium wp-image-1352" /></a>

## Upload from the last BETA release

For people have installed BETA version, apply these SQL queries to force plugins to update to this RC1 : 

<blockquote>
UPDATE `glpi_plugin_fusioninventory_configs` SET `value` = '2.4.0' WHERE `glpi_plugin_fusioninventory_configs`.`type` = 'version';
UPDATE `glpi_plugins` SET `version` = '2.4.0' WHERE `directory`='fusioninventory' OR `directory`='fusinvinventory' OR `directory`='fusinvsnmp';
</blockquote>


