---
layout: single
title: FusionInventory Agent 2.3.20
---

The FusionInventory Agent maintainers are proud to announce the 2.3.20 release.

You can download sources or dedicated installer from the our github releases page:

* [fusioninventory-agent github releases](https://github.com/fusioninventory/fusioninventory-agent/releases/tag/2.3.20)

See [download instructions](https://documentation.fusioninventory.org/%20FusionInventory_agent/%20%20%20Installation/windows/) for details.

Since last 2.3.19 release, many bug fixes and enhancements have been accumulated, such as:

- Deploy task bumped as v2.3 has many improvments like new audit checks, fix registry key check, fixed command action reporting to help users to debug. Some improvments will need to upgrade to newer fusioninventory plugin, but be sure it will released soon
- Few virtualization/container fixes and updates
- a really BIG sysobject included database update: the NetDiscovery & NetInventory tasks supported devices has grown up to more than 7000 devices thanks to a community contributor
- pci included databases update
- Added system software category support
- Added firewall status innventory support
- update dmidecode to v3.1 in windows installer
- windows installer is now based on perl 5.24.1 provided by tabad
- and more...

Check the [Changes file](https://github.com/fusioninventory/fusioninventory-agent/blob/2.3.20/Changes) for more details.

Don't forget we have recently open a [Userecho suggestion site](http://fusioninventory.userecho.com/) where you can want to submit your ideas or whishes for the future of FusionInventory agent and/or plugin for GLPI.

Don't hesitate to participate by voting or even put your 2 cents !

Still many thanks to all our community, users and contributors !
