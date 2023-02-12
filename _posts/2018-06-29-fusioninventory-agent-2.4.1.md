---
layout: post
title: FusionInventory Agent 2.4.1
categories: news
lang: en
---

The FusionInventory Agent maintainers are proud to announce the 2.4.1 release.

You can download sources or dedicated installer from the [fusioninventory-agent github releases](https://github.com/fusioninventory/fusioninventory-agent/releases/tag/2.4.1):

<button class="button-save large" onclick="window.location.href='https://github.com/fusioninventory/fusioninventory-agent/releases/tag/2.4.1'">Download FusionInventory Agent v2.4.1 from Github Releases</button>

Or see [download instructions](https://documentation.fusioninventory.org/%20FusionInventory_agent/%20%20%20Installation/windows/) for details.

Since last 2.4 release, many bug fixes and enhancements have been accumulated, such as:

- a scheduler target will now be enabled to run the new Maintenance task. This scheduler target and Maintenance task are only used at the moment to fix the file-retention parameter support which is related to Deploy task for work space clean up.
- P2P support has been enhanced for Deploy task
- Batteries support has been added
- PowerSupplies support has been added
- SQL server edition software support has been enhanced thanks to keyser75000
- dmidecode is also disabled if it reports no output. This should fix few
  issues under windows by switching to WMI support.
- NetDiscovery/NetInventory tasks have also been improved:
  - `--port` & `--protocol` options are supported by scripts
  - Epson & Zebra printers are supported
  - HP printers support has been enhanced
  - Mikrotik devices support has been added
  - Quescom appliance support has been added
  - nmap command support has been removed for ping discovery. We now uses Net::Ping module which has been extended to support timestamp ping.
  - netinventory multi-threading has been enhanced
  - entity option support has been fixed
  - CDP/LLDP support has been enhanced
  - more devices detected with updated [sysobject.ids](https://github.com/fusioninventory/sysobject.ids)
- pci & usb included databases are updated
- For windows installer:
  - 7zip and curl has been updated
  - Perl binaries have been updated to [Strawberry Perl v5.24.4.1](http://strawberryperl.com/release-notes/5.24.4.1-64bit.html)
- and many more...

Check the [Changes file](https://github.com/fusioninventory/fusioninventory-agent/blob/2.4.1/Changes) for more details.

We want also to announce the [fusioninventory-agent github repository](https://github.com/fusioninventory/fusioninventory-agent) will be re-organized according to the [Git Flow](http://git-flow.readthedocs.io/en/latest/) branch model. Also for commits, we now want to follow the [Conventional Commit](http://conventionalcommits.org/). For release versioning, we will follow [SemVer](https://semver.org/).

As a reminder, we want to notice support for some old operating systems is discontinued since 2.4. The agent may continue to work on these platforms but we won't handle any issue reported on them:
- Windows XP/NT/2000
- Mac OSX < 10.8 (Mountain Lion)
- Solaris 8

Windows agent installers are now built from the [fusioninventory-agent-windows-installer github repository](https://github.com/fusioninventory/fusioninventory-agent-windows-installer).
This repository also enables developer releases from [Appveyor "artifacts" page](https://ci.appveyor.com/project/fusioninventory/fusioninventory-agent-windows-installer/build/artifacts).

We would like to specially thank tabad for his effort to provide an up-to-date perl version for the windows installer.

The Team also reminds you that a [Userecho suggestion site](http://fusioninventory.userecho.com/) is available where you can submit your ideas or whishes for the future of FusionInventory agent and/or plugin for GLPI.

Don't hesitate to participate by voting or even put your 2 cents!

As usual many thanks to all our community, users and contributors!
