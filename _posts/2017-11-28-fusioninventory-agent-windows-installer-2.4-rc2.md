---
layout: post
title: FusionInventory Agent Windows Installer 2.4-rc2
categories: news
lang: en
---

The FusionInventory Agent maintainers are proud to announce the 2.4-rc2 FusionInventory agent windows installer release.

You can download this windows dedicated installer from the following github releases page:

* [fusioninventory-agent-windows-installer github releases](https://github.com/g-bougard/fusioninventory-agent-windows-installer/releases/tag/2.4-rc2)

See [download instructions]({{ site.baseurl }}/documentation/agent/installation/windows/) for details.

Since last 2.3.21 release, many bug fixes and enhancements have been accumulated, such as:

- an important fix related to deployment task has been fixed by David Durieux.
  - This should fix agent not able to get files from FusionInventory server or via P2P. 
- windows local user is no more changed while user has logged out his computer
- windows licenses are now also read via WMI so we can report newer MS Office installed licences
- better timeout handling on few Inventory tasks, mostly for WMI requests under win32
- NetDiscovery/NetInventory tasks has also been improved:
  - Digi modems and simcards detection
  - iLO card are supported
- pci & usb included databases are updated
- 7zip has been updated, so antivirus won't complain about unsafe program in installer
- the installer is now using NSIS v3.02 which provides better Windows 10 support
- if you choose another installtion directory from the installer, this now will
  work. Before this would only work with `/installdir` option in silent installation.
- and some more...

Check the [Changes file](https://github.com/TECLIB/fusioninventory-agent/blob/2.4-rc2/Changes) for more details.

This release candidate also introduces a new and important feature: **remote windows inventory via WMI**

Actually this feature is only available throught the `fusioninventory-wmi` dedicated script. For example, you can compare local inventories by running these 2 commands
from an admin console:

`fusioninventory-wmi --config=none --local=- -h 127.0.0.1 >local-only-via-wmi.xml`

And:

`fusioninventory-inventory >local-inventory.xml`

We would appreciate any feedback regarding this feature !!

We would like to thank Thomas Lornet & Guillaume Bougard from [Teclib Editions](http://teclib-edition.com/en/) for this work.

Don't forget we have opened a [Userecho suggestion site](http://fusioninventory.userecho.com/) where you can want to submit your ideas or whishes for the future of FusionInventory agent and/or plugin for GLPI.

Don't hesitate to participate by voting or even put your 2 cents !

Still many thanks to all our community, users and contributors !
