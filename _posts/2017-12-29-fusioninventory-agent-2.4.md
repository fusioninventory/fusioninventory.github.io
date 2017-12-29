---
layout: post
title: FusionInventory Agent 2.4
---

The FusionInventory Agent maintainers are proud to announce the 2.4 release.

You can download sources or dedicated installer from the [fusioninventory-agent github releases](https://github.com/fusioninventory/fusioninventory-agent/releases/tag/2.4):

<button class="button-save large" onclick="window.location.href='https://github.com/fusioninventory/fusioninventory-agent/releases/tag/2.4'">Download FusionInventory Agent v2.4 from Github Releases</button>

Or see [download instructions]({{ site.baseurl }}/documentation/agent/installation/) for details.

Since last 2.3.21 release, many bug fixes and enhancements have been accumulated, such as:

- an important fix related to deployment task has been fixed by David Durieux: this should fix agent not able to get files from FusionInventory server or via P2P. 
- windows local user is no more changed while user has logged out his computer
- windows licenses are now also read via WMI so we can report newer MS Office installed licences
- better antivirus version support on windows, and Windows Defender support
- windows 10 version is also reported
- better timeout handling on Inventory tasks
- NetDiscovery/NetInventory tasks has also been improved:
  - Digi modems and simcards detection
  - iLO card are supported
  - use first MAC address during discovery
  - more devices detected with updated [sysobject.ids](https://github.com/fusioninventory/sysobject.ids)
- pci & usb included databases are updated
- "include" directive support while reading configuration file
- injector script now support --no-ssl-check option
- For windows installer:
  - if you choose another installation directory from the installer, this now will work. Before this would only work with `/installdir` option in silent installation.
  - 7zip has been updated, so antivirus won't complain about unsafe program in installer
  - the installer is now using NSIS v3.02 which provides better Windows 10 support
- and many more...

Check the [Changes file](https://github.com/fusioninventory/fusioninventory-agent/blob/2.4/Changes) for more details.

This release also introduces a new experimental feature: **remote windows inventory via WMI**

This feature is currently only provided throught the `fusioninventory-wmi` dedicated script. For example, you can compare local inventories by running these 2 commands
from an admin console:

`fusioninventory-wmi --local=- -h 127.0.0.1 >local-only-via-wmi.xml`

And:

`fusioninventory-inventory >local-inventory.xml`

Just try a remote host through the `[-h|--host]` option, eventually completed with `[-u|--user]` & `[-p|--pass]` options for credentials.

We would appreciate your feedback regarding this feature !!

We would like to thank Thomas Lornet & Guillaume Bougard from [Teclib Editions](http://teclib-edition.com/en/) for their work on this feature, and Guillaume Rousse for his reviews.

To facilitate our maintenance work, we have decided to discontinue the support for some old operating systems. The agent may continue to work of these platforms but we won't handle any issue reported on them : 
- Windows XP/NT/2000
- Mac OSX < 10.8 (Mountain Lion)
- Solaris 8

Windows agent installers are now built from the [fusioninventory-agent-windows-installer github repository](https://github.com/fusioninventory/fusioninventory-agent-windows-installer).
This repository also enables developer releases from [Appveyor "artifacts" page](https://ci.appveyor.com/project/fusioninventory/fusioninventory-agent-windows-installer/build/artifacts).

The Team also reminds you that a [Userecho suggestion site](http://fusioninventory.userecho.com/) is available where you can submit your ideas or whishes for the future of FusionInventory agent and/or plugin for GLPI.

Don't hesitate to participate by voting or even put your 2 cents !

Still many thanks to all our community, users and contributors !