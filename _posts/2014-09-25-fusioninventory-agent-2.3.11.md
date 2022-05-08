---
layout: single
title: FusionInventory agent 2.3.11
---

# FusionInventory Agent 2.3.11 release

Hello FusionInventory users,

The FusionInventory Agent maintainers are glad to announce the 2.3.11 release.

You can download it from the usual places:

* [the forge](http://forge.fusioninventory.org/projects/fusioninventory-agent/files) or [CPAN](https://metacpan.org/release/FusionInventory-Agent) for the source distribution
* [the forge](http://forge.fusioninventory.org/projects/fusioninventory-agent-windows-installer/files) for the windows distribution
* etc...

See [download instructions](https://documentation.fusioninventory.org/%20FusionInventory_agent/%20%20%20Installation/windows/) for details.

The major changes in this release are multiple:

* network inventory now relies on dedicated data to identify printer
  consumables, instead of relying on an external consumable reference database
* network inventory now report aggregated ports for network devices, supporting
  LACP and AGP protocols
* local inventory report network interfaces type (wireless, wired, bonded,
  etc...) with additional specific information (ESSID for wifi, base interface
  for aliases, etc...)
* better logging of agent execution details, with more details about missing
  optional commands or perl libraries, or information to add in agent database

In addition, this release also fixes multiple smaller issues.

We did our best to provide a solid release, please [contact us]({{ site.baseurl }}/resources/) if
you believe you find something unexpected.
