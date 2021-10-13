---
layout: single
title: Task-network plugin release 1.0.0
---

Hello dear fusioninventory users.

We just released version 1.0.0 of task-network plugin for the agent, wich actually includes two plugins previously distributed separatly (task-netdiscovery and task-netinventory).

This release brings the following changes:

* a few bugfixes, especially for non-cisco network-devices
* restored compatibility with perl 5.8 (with the threads::shared module from perl 5.8, actually)
* two command lines tools for testing network discovery and inventory offline (without a glpi server)
* a change from previous all-or-nothing behaviour, whereas devices whose hardware/firmware combination was not present in the SNMP dictionnary always resulted in 'unknown devices': now the agent is able to make some educated guesses about devices found during the discovery step
* documentation about the whole process



The source distribution for the plugin is available from the project forge:
[http://forge.fusioninventory.org/attachments/download/708/FusionInventory-Agent-Task-Network-1.0.0.tar.gz](http://forge.fusioninventory.org/attachments/download/708/FusionInventory-Agent-Task-Network-1.0.0.tar.gz)

It is also available from CPAN:
[http://search.cpan.org/CPAN/authors/id/G/GR/GROUSSE/FusionInventory-Agent-Task-Network-1.0.0.tar.gz](http://search.cpan.org/CPAN/authors/id/G/GR/GROUSSE/FusionInventory-Agent-Task-Network-1.0.0.tar.gz)

The windows distribution of the agent has also been updated to include the latest version:
[http://prebuilt.fusioninventory.org/stable/windows-i386/fusioninventory-agent_windows-i386_2.2.5-1.exe](http://prebuilt.fusioninventory.org/stable/windows-i386/fusioninventory-agent_windows-i386_2.2.5-1.exe)

Enjoy :)
