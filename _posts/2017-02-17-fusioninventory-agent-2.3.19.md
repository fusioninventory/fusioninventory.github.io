---
layout: post
title: FusionInventory Agent 2.3.19
---

The FusionInventory Agent maintainers are proud to announce the 2.3.19 release.

You can download sources or dedicated installer from the our github releases page:

* [fusioninventory-agent github releases](https://github.com/fusioninventory/fusioninventory-agent/releases/tag/2.3.19)

See [download instructions]({{ site.baseurl }}/documentation/agent/installation/) for details.

There has been a long delay since 2.3.18 release, almost 9 months. As a consequence, a lot of bug fixes and enhancements have been accumulated, such as:

- better stability and very ligth memory footprint under Windows
- Audits in Deploy task upadted as v2.2 to better report agent status during
  checks and deployments. You'll need a FusionInventory for GLPI plugin update
  to fully benfefits from this update.
- updated & reworked monitors inventory
- virtualization/container detection updates: docker, HyperV, VMWare, KVM, LXC/LXD, VirtualBox
- TeamViewerID support (Linux, Win32, MacOS X)
- Hostid support (Linux, Solaris)
- pci & usb included databases update
- update dmidecode to v3.0 in windows installer
- etc...

Check the [Changes file](https://github.com/fusioninventory/fusioninventory-agent/blob/2.3.19/Changes) for more details.

Finally, we recently open a [Userecho suggestion site](http://fusioninventory.userecho.com/) whrere you can want to submit your ideas or whishes for the future of FusionInventory agent and/or plugin for GLPI.

Don't hesitate to participate by voting or even put your 2 cents !

Still many thanks to all our community, users and contributors !