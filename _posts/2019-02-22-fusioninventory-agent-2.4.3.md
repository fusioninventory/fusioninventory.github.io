---
layout: post
title: FusionInventory Agent 2.4.3
categories: news
lang: en
---

The FusionInventory Agent maintainers are proud to announce the 2.4.3 release.

You can download sources or dedicated installer from the [fusioninventory-agent github releases](https://github.com/fusioninventory/fusioninventory-agent/releases/tag/2.4.3):

<button class="button-save large" onclick="window.location.href='https://github.com/fusioninventory/fusioninventory-agent/releases/tag/2.4.3'">Download FusionInventory Agent v2.4.3 from Github Releases</button>

Or see [download instructions](https://documentation.fusioninventory.org/%20FusionInventory_agent/%20%20%20Installation/windows/) for details.

Since last 2.4.2 release, many bug fixes and enhancements have been accumulated, such as:

For the core:
- Few file handles were not always closed, this is fixed.
- Under win32, a file handle leak was making the service consuming more and more
  memory for a long time running service. This is fixed and now the memory usage
  is stable.
- now a daemon will detect a run has been done manually and so will take the new
  expiration in account.
- For server target, server connection attempts are delayed from 60 seconds on failure,
  doubled at each new failed attempt, now until reaching a max defined by delaytime
  configuration parameter (by default 3600 seconds). Previously the maximum was
  the inventory frequency defined from the server. This new feature permits laptops
  to be inventoried in the initial delaytime delay after a network connection.

For the Inventory task:
- win32: FS can be reported as encrypted by BitLocker (support in plugin coming soon)
- win32: Added support for more anti-virus softwares
- win32: The agent won't try to inventory the windows Store on platform not supporting it
- linux: FS can be reported as encrypted by dmcrypt (support in plugin coming soon)
- linux: disk size support has been improved and a serial can be set from MBR id or PV UUID
- linux: LXC & Virtuozzo supports has been enhanced
- macos: FS can be reported as encrypted by FileVault (support in plugin coming soon)
- macos: Memory are no more inventoried 2 times
- bsd: FS can be reported as encrypted by geli (support in plugin coming soon)
- pci & usb included databases has been updated

For the NetDiscovery/NetInventory tasks:
- devices components can now be inventoried thanks to David Durieux. An update
  in plugin is coming to support them in GLPI.
- win32: Support arp table check for NetDiscovery task
- Add Panasas PanFS support
- Serial number support has been enhanced in some cases
- linux: Try 'ip' command to discover mac addresses as 'arp' is not always installed
- Add UPS-MIB support for Riello, S2S & APC
- more devices are fully detected with the updated [sysobject.ids](https://github.com/fusioninventory/sysobject.ids/tree/fia-2.4.3)

In contrib/windows folder:
- Wolvverine has enhanced the win32 GPO templates

Check the [Changes file](https://github.com/fusioninventory/fusioninventory-agent/blob/2.4.3/Changes) for more details.

The FusionInventory Agent Windows Installer has been updated with the following important changes:
- dmidecode tool was updated to v3.2 (update 1) to fix an issue with wrongly formatted UUID

As a reminder, we want to tell you again the support for some old operating systems is discontinued since 2.4. The agent may continue to work on these platforms but we won't handle issues reported for them:
- Windows XP/NT/2000
- Mac OSX < 10.8 (Mountain Lion)
- Solaris 8

As another reminder, Windows agent installers are built from the [fusioninventory-agent-windows-installer github repository](https://github.com/fusioninventory/fusioninventory-agent-windows-installer).

The Team also reminds you that a [Userecho suggestion site](http://fusioninventory.userecho.com/) is available where you can submit your ideas or whishes for the future of FusionInventory agent and/or plugin for GLPI.

Don't hesitate to participate by putting your ideas or even just voting for others one !

As usual many thanks to all our community, users and contributors!
