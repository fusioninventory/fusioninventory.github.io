---
layout: post
title: FusionInventory Agent 2.5.2
---

The FusionInventory Agent maintainers are proud to announce the 2.5.2 release.

You can download sources or dedicated installer from the [fusioninventory-agent github releases](https://github.com/fusioninventory/fusioninventory-agent/releases/tag/2.5.2):

<button class="button-save large" onclick="window.location.href='https://github.com/fusioninventory/fusioninventory-agent/releases/tag/2.5.2'">Download FusionInventory Agent v2.5.2 from Github Releases</button>

Or see [download instructions]({{ site.baseurl }}/documentation/agent/installation/) for details.

Since last 2.5.1 release, many bug fixes and enhancements have been accumulated, such as:

For the core:
- Few fixes has been addressed for the new integrated HTTP server:
 - Included HTTP server now support IPv6
 - the service can stop it self if the remote client closes a connection before the agent.
 - keep-alive support is now working as expected: the agent default page is now loading
   more efficiently
 - Proxy server plugin now support to fork requests to permit more simultaneous inventory requests
   (10 max forks by default, can be changed is dedicated configuration file)
- Persistent internal datas can now be used to force a inventory (used in win32 installer
  to support /runnow from the service). This also could be used to reset the agent deviceid.
  We added --set-forcerun option support to fusioninventory-agent script to handle this feature.
- on win32, the service is now guaranty to stop in 10 seconds max.
- few fixes around configuration reload has been adresses.
- as important feature: we limited the next run delay reduction:
 - limit next run random delay reduction to max 1/6 of the delay if server delay time is less than 6 hours,
 - limit to max an hour for a delay from 6 hours to 24 hours,
 - and limit to max 1/24 of the delay for delay greater than a day.
  This would keep enough delay randomization to avoid mass agent server connection and
  keep next seen run more coherent with the requested delay.

For the Inventory task:
- some fixes has been included for unix systems and win32:
 - on unix, last logged user after a reboot is fixed
 - we added some new Samsung monitor serial support
 - on macosx, we are now able to retriev EDID block to compute more reliable monitor informations
 - on win32, HyperV host wasn't filtered out, this is fixed,
 - we thank a lot PR-gh for the following contributions:
  - on win32, he fixed Adobe key detection,
  - on win32, he fixed few firewall cases,
  - on win32, he fixed Office license inventory,
  - on win32, he enhanced the network card inventory.
 - we thank also a lot po1vo for the following contribution:
  - Megacli storage support update
  - on linux, he added macvlan/docker network interfaces support,
  - on linux, he fixed hdparm support,
  - he improved HP Storage support,
  - on linux, he fixed the network card speed when it is down,
  - on linux, he enhanced a lot the SCSI generic storage support.
 - on linux, we added support for [Snap](https://snapcraft.io/) packages in softwares
 - on linux, we fixed if network card are virtual or not
 - on win32, UWP software inventory is fixed when a related AppXmanifest XML file is encoded in UTF-16
 - on linux, debian system version is fixed
 - on linux, virtuozzo containers inventory is fixed
 - on macosx, we enhanced video and network cards inventory
 - on win32, we added the litemanager ID inventory support as remote management system
 - on solaris, new SPARC cpu support has been added,
- pci & usb included databases has been updated

For the NetDiscovery/NetInventory tasks:
- we thank a lot PR-gh for the following contributions:
 - he added Tagged VLAN support, work at least with HPE Switch,
 - he added StormShield support via new FreeBSD MIBSupport module,
 - he fixed few memory normalization cases,
- po1vo enhanced Qlogic support to report device serial number and moved APC pdu support to used MibSupport system
- few other fixed and enhancement has been addressed:
 - a crash on CentOS7 while using multi-threading
 - time expiration when netinventory is chained with netdiscovery
 - not inventoried devices while description is empty
 - CDP checks for connection detection has been enhanced
 - IAP Aruba serial number support
 - Seagate storage support
 - VLAN support
 - Ricoh printer support
 - LinuxAppliance support with Sophos UTG support
- few more devices are fully detected with the updated [sysobject.ids](https://github.com/fusioninventory/sysobject.ids/tree/fia-2.5.2)

On packaging:
- MacOSX support has been enhanced to support Catalina
- win32 installer now uses [Strawberry Perl 5.30.1.1](http://strawberryperl.com/releases.html)

Check the [Changes file](https://github.com/fusioninventory/fusioninventory-agent/blob/2.5.2/Changes) for more details.

As a reminder, we want to tell you again the support for some old operating systems is discontinued since 2.4. The agent may continue to work on these platforms but we won't handle issues reported for them:
- Windows XP/NT/2000
- Mac OSX < 10.8 (Mountain Lion)
- Solaris 8

As another reminder, Windows agent installers are built from the [fusioninventory-agent-windows-installer github repository](https://github.com/fusioninventory/fusioninventory-agent-windows-installer).

The Team also reminds you that a [Userecho suggestion site](http://fusioninventory.userecho.com/) is available where you can submit your ideas or whishes for the future of FusionInventory agent and/or plugin for GLPI.

Don't hesitate to participate by putting your ideas or even just voting for others one !

As usual many thanks to all our community, users and contributors!
