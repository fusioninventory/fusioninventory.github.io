---
layout: page
title: Agent database
---

# Agent database

The agent database is located in agent data directory. It consist of the following files:

* `pci.ids` is a database of PCI devices, used by local inventory module
* `usb.ids` is a database of USB devices, used by local inventory module
* `edid.ids` is a database of Screen manufacturer, used by local inventory module
* `sysobject.ids` is a database of SNMP devices, used by network discovery and
  network inventory modules

Those files can easily be customized if needed, as their format is
self-documented. However, local modifications will get lost on upgrade.
