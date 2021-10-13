---
layout: single
title: FusionInventory Agent 2.3.21
---

The FusionInventory Agent maintainers are proud to announce the 2.3.21 release.

You can download sources or dedicated installer from the our github releases page:

* [fusioninventory-agent github releases](https://github.com/fusioninventory/fusioninventory-agent/releases/tag/2.3.21)

See [download instructions]({{ site.baseurl }}/documentation/agent/installation/) for details.

Since last 2.3.20 release, many bug fixes and enhancements have been accumulated, such as:

- Deploy task bumped as v2.4 has some improvements:
  - a new audit check for win32 (registry value not equal)
  - it introduces the user interaction support for win32 based on WTS API.
    This features will require the upcoming GLPI 9.2 and Fusioninventory plugin on server-side.
- Few virtualization/container fixes and updates
- NetDiscovery/NetInventory tasks has also been really improved:
  - device mac discovery handles more generic cases
  - SNMP fields support is even safer now
  - LLDP detection has been impoved by ddurieux
  - duplicated mac case has been fixed by ddurieux
  - "no result" reporting is now completed with the reason
- win32 software inventory is fixed while running 2 times inventory in a run with tasks parameter
- pci & usb included databases are updated
- dmidecode v3.1 is still used in windows installer
- windows installer is still based on perl 5.24.1, thanks to tabad
- program will now appear as fusioninventory-agent in the process list, even under win32:
  - under unix, this will include the tag if defined
  - under unix, the currently running task will also be set in the process command line
- some erros will now be more comprehensive
- fusioninventory-injector:
  - now returns the right exit code if something goes wrong
  - support also xml file extension
- and many more...

A big notice for Lenovo computer users, the model name is now the commercial name instead of a technical designation.

Check the [Changes file](https://github.com/fusioninventory/fusioninventory-agent/blob/2.3.21/Changes) for more details.

Don't forget we have recently open a [Userecho suggestion site](http://fusioninventory.userecho.com/) where you can want to submit your ideas or whishes for the future of FusionInventory agent and/or plugin for GLPI.

Don't hesitate to participate by voting or even put your 2 cents !

Still many thanks to all our community, users and contributors !
