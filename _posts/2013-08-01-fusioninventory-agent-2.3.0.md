---
layout: post
title: FusionInventory agent 2.3.0
categories: news
lang: en
---

Hello FusionInventory users,

The FusionInventory Agent maintainers are glad to announce the 2.3.0 release.

You can download the archive from [the forge](http://forge.fusioninventory.org/attachments/download/1016/FusionInventory-Agent-2.3.0.tar.gz)
or directly from [the CPAN](https://metacpan.org/release/FusionInventory-Agent)

We want to thank all the people involved during the developement process.

### Packages

Windows packages are available on [the forge](http://forge.fusioninventory.org/projects/fusioninventory-agent-windows-installer/files).
The new installer is now maintained by Tomás Abad. The parameters are different take some
minutes to read the documentation.

The previous 2.2.x Windows packages are [still available](http://prebuilt.fusioninventory.org/stable/windows-i386/).

The other packages, especially MacOSX, will be published soon.

## This release changelog

This is a major release that include various important changes.

### distribution:

* Deploy, Network and ESX tasks are now integrated in the distribution
* new fusioninventory-inventory executable, dedicated to inventory task

### core:

* no more thread usage for HTTP interface
* no more token usage for HTTP interface, request source address is enough
* `--httpd-trust` option now allows multiple values
* `--daemon and` `--no-fork` options are now available from command-line only 

### inventory task:

* add DNS_DOMAIN, BOOT_TIME and FQDN in OPERATINGSYSTEM section ([[!bug 1197]], [[!bug 1347]], [[!bug 1358]])
* collect public SSH keys
* collect local users and groups ([[!bug 1570]], [[!bug 1870]])
* collect license key for MS Office on Windows ([[!bug 152]])
* collect software from user profile on Windows([[!bug 1674]])
* collect license key for Adobe suite, Panic's Transit, VMware Fusion on MacOs
* collect service package version on AIX ([[!bug 1896]])
* collect manufacturer information for memories ([[!bug 1735]])
* enforce consistent handling of USB and PCI identifiers ([[!bug 1861]])
* enforce consistent TYPE values for network interfaces ([[!bug 1838]])
* various UTF8 encoding fixes
* better stripping of bogus values
* Megaraid and 3ware RAID controller support on BSD (Egor Morozov)
* Megaraid controller support on Linux (Egor Morozov)
* support new OpenVZ configuration on Linux (Alessandro Iurlano)
* LPAR support on AIX ([[!bug 950]], [[!bug 952]])
* FreeBSD jail support on BSD ([[!bug 736]], [[!bug 1555]])
* better caching of system_profiler output ([[!bug 2076]])
* better Qemu support ([[!bug 2106]])
* better OpenVM support ([[!bug 1774]])
* better HyperV support ([[!bug 1989]], [[!bug 1990]], [[!bug 1991]])
* fix CPU inventory for non-i386 arches on Linux ([[!bug 2172]])
* better CPU inventory on Solaris ([[!bug 1741]], [[!bug 1905]], [[!bug 2152]])
* better memory inventory on Solaris ([[!bug 1711]], [[!bug 1714]], [[!bug 1737]])
* better slot inventory on Solaris ([[!bug 1730]])
* fix VXFS filesystem identification on Solaris ([[!bug 1696]])
* minimal support for busybox-specific command output ([[!bug 1372]])
* no more memconf usage on Solaris
* no more Mac::SysProfile usage on MacOS ([[!bug 1646]])

### wake-on-lan task:

* ethernet and udp methods support on all systems

### netdiscovery task:

* fix for regression introduced during code refactoring regarding printers
  identification

### test suite:

* check the link for 404 error in the doc
* check for warnings generated during parsing
* check entries generated from parsing match expected inventory format
* normalize list before comparaison, for perl 5.18 hash randomisation

We did our best to provide a solid release, please [contact us]({{ site.baseurl }}/resources/) is you believe you find something unexpected.
