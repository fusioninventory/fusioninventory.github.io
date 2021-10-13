---
layout: single
title: FusionInventory Agent 2.6
---

The FusionInventory Agent maintainers are proud to announce the 2.6 release.

You can download sources or dedicated installer from the [fusioninventory-agent github releases](https://github.com/fusioninventory/fusioninventory-agent/releases/tag/2.6):

<button class="button-save large" onclick="window.location.href='https://github.com/fusioninventory/fusioninventory-agent/releases/tag/2.6'">Download FusionInventory Agent v2.6 from Github Releases</button>

Or see [download instructions]({{ site.baseurl }}/documentation/agent/installation/) for details.

Since last 2.5.2 release, many bug fixes and enhancements have been accumulated, such as:

For the core:
- when reloading, options set on commandline are kept
- completly empty defines (nothing after the equal sign) in config files is now supported and this fix an issue where windows portable version was trying to write to a log file by default

For the Inventory task:
- some fixes has been included for unix systems and win32:
  - we fixed Batteries support and added an information to report capacity usage
  - we added some new Acer monitor serial support
  - on linux, the support for [Snap](https://snapcraft.io/) packages in softwares has been fixed when a package with a long summary is installed
  - on debian linux, we fixed the support of packages with no size set
  - on win32, Surface Go 2 are no more reported as Hyper-V
  - on linux, disk encryption detection has been enhanced
  - on linux, Qemu Kvm virtualization inventory has been enhanced
  - dmidecode parsing result has been cleaned a little
  - on linux, virtual overlayfs related to docker are now filtered out
  - on linux, ASM storage inventory has been enhanced
  - manufacturer reporting is now better
  - we now support parsing few manufacturer PartNumbers which can enhance inventory for memories and controllers
  - thanks to a great work from Vadim Pisarev (aka po1vo):
    - smartctl could be used to enhanced storage support on linux
    - memory model is now included in inventory
    - controller model and serial are also supported
    - memory and controller inventory can also be enhanced using IPMI
    - Storage inventory has been enhanced
    - we have Micron PartNumber memory support
- pci & usb included databases has been updated

For the NetDiscovery/NetInventory tasks:
- the following enhancement has been included:
  - a better Ricoh and Zebra printers support with better hostname detection
  - Oki printers support has been enhanced with model detection
  - support for few Siemens and MultiTech industrial modules
  - LinuxAppliance support has been extended to support Ubiquiti UniFi AP
  - Hwg support has been added thanks to Bertrand Keller
  - HP switches support has been enhanced
- few more devices are fully detected with the updated [sysobject.ids](https://github.com/fusioninventory/sysobject.ids/releases/tag/fia-2.6)

For ESX task:
- we now verify a user and password has been provided before attemting to connect to ESX server

For tools:
- fusioninventory-injector has been enhanced to avoid a fatal error while submitting a empty or wrong file and while using --xml-ua option
- fusioninventory-injector also now check and report an error if the server is answering the XML is not valid

On packaging side:
- win32 installer now uses [Strawberry Perl 5.32.0.1](http://strawberryperl.com/releases.html) and [dmidecode v3.3-gitd64af97](https://github.com/fusioninventory/dmidecode/releases/tag/dmidecode-3-3-gitd64af97)
- Debian package will no more produce an error while installing again after an uninstall

Check the [Changes file](https://github.com/fusioninventory/fusioninventory-agent/blob/2.6/Changes) for more details.

The agent is no more supported for old operating systems. It may continue to work on these platforms but we won't handle issues reported for them:
- Windows XP/NT/2000
- Mac OSX < 10.10 (Yosemite)
- Solaris 8

As another reminder, Windows agent installers are built from the [fusioninventory-agent-windows-installer github repository](https://github.com/fusioninventory/fusioninventory-agent-windows-installer).

As usual many thanks to all our community, users and contributors!
