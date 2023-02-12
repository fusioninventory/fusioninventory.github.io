---
layout: post
title: FusionInventory agent 2.2.5
categories: news
lang: en
---

The FusionInventory Agent maintainers are glad to announce the 2.2.5 release.

You can download the archive from [the forge](http://forge.fusioninventory.org/projects/fusioninventory-agent/files)
or directly from [the CPAN](https://metacpan.org/release/FusionInventory-Agent)

We did our best to provide a solid release, please [contact us]({{ site.baseurl }}/resources/) is you believe to find something unexpected

## changelog

### General:

* Fix: deal with broken last_state file
* Fix: fix HP RAID size parsing
* Fix: Virtual machine inventory with VMware desktop
* Fix: add /usr/local/{bin,sbin} in default $PATH

### Windows:

* Fix: do not run dmidecode.exe on Win2003
* Fix: Software inventory

### Solaris:

* Fix: improve ZFS support
### Fix: get memory on solaris on Sun-Fire-V490


### HP-UX:

* Fix: variou syntax issues (Drives, Uptime, etc)
* Fix: get network interfaces from netstat -nrv
* Fix: import VXFS 7 volumes

### Test suite:

* Add an AIX slot test
* Deals properly with disabled thread support
* use the first available TCP port for network tests
* Enable SSL test even in IPv6 environment

