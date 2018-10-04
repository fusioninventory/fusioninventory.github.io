---
layout: post
title: FusionInventory Agent 2.4.2
---

The FusionInventory Agent maintainers are proud to announce the 2.4.2 release.

You can download sources or dedicated installer from the [fusioninventory-agent github releases](https://github.com/fusioninventory/fusioninventory-agent/releases/tag/2.4.2):

<button class="button-save large" onclick="window.location.href='https://github.com/fusioninventory/fusioninventory-agent/releases/tag/2.4.2'">Download FusionInventory Agent v2.4.2 from Github Releases</button>

Or see [download instructions]({{ site.baseurl }}/documentation/agent/installation/) for details.

Since last 2.4.1 release, many bug fixes and enhancements have been accumulated, such as:

For the core:
- A work-around for an issue disabling the Httpd daemon on old RedHat/CentOS linux platforms has been included.

For the Deployment task:
- the new Maintenance task introduced in 2.4.1 has been optimized.
- very large files deployments was failing after 2.4.1 file retention update, this is fixed.
- the Deploy task file retention has been optimized
- the Deploy task WinKeyNotEquals audit check has been fixed to also be true while key is simply missing
- a new audit check target is now supported to permit to start the job immediatly after an audit check fails.
  This will permit to by-pass unnecessary audit checks on a given condition.
  You'll need to wait for the [Add 'start job now' support on deploy audit check failure #2667 PR](https://github.com/fusioninventory/fusioninventory-for-glpi/pull/2667)
  being merged in the plugin to use this feature.

For the ESX task:
- CPU core detection has been fixed
- ServiceTags & AssetTag support has been added or enhanced

For the Collect task:
- with the help of David Durieux to support dynamic pattern.
  This will help to collect the same value from different subtree like the HKEY_USERS ones.
  The pattern to use is `**` and can be used to replace any plain subkey in a path.
  As an example, the following will collect any 'CurrentVersion' value for any software installed by users, but in a subkey of each softwares subkey:
  
  `HKEY_USERS/**/Software/**/**/CurrentVersion`
  
  PS: each `**` pattern must match one subkey and won't work if it used for a partial match like in
  
  (wrong) `HKEY_USERS/**/Software/Mozilla**/**/CurrentVersion`

For the Inventory task:
- win32: Added UWP/APPX/Windows Store software inventory support
- win32: Added support for more anti-virus softwares
- win32: Anti-virus support has been a little enhanced. The plugin will also include few related enhancement in the next release.
- linux: ArchLinux software inventory has been enhanced
- linux: sshd public key scanning is now supported on non-standard port
- macos: an issue related to software inventory when using a proxy was fixed thanks to the community
- macos: cpu arch & video cards detection has been fixed
- pci & usb included databases has been updated

For the NetDiscovery/NetInventory tasks:
- Brocade devices serialnumber is now supported thanks to @QuickNerd357
- Synology NAS devices are now supported
- HP printers support has been enhanced again
- CheckPoint appliance support has been added
- as nmap command support has been removed for ping discovery since 2.4.1.
  We now only rely on Net::Ping v2.67 module for the timestamp ping support.
  You'll need to upgrade Net::Ping if you have devices which only answer to timestamp ping.
  You don't have to worry about if your devices answer to standard pings.
- CDP/LLDP/VLAN supports have been a little enhanced
- more devices are fully detected with the updated [sysobject.ids](https://github.com/fusioninventory/sysobject.ids/tree/fia-2.4.2)

Check the [Changes file](https://github.com/fusioninventory/fusioninventory-agent/blob/2.4.2/Changes) for more details.

The FusionInventory Agent Windows Installer has been updated with the following important changes:
- it registers service with perl modules folders to avoid conflicts from any other local perl install
- /add-firewall-exception option is now fully implemented
- /runnow option has been updated to be more reliable
- it shows now an error combo on command line parsing error, even in silent mode as many people
  complains to not understand why the installer fails. So before mass publishing the installer
  in silent mode always test your parameters.
- dmidecode tool was updated to v3.2

As a reminder, we want to tell you again the support for some old operating systems is discontinued since 2.4. The agent may continue to work on these platforms but we won't handle issues reported for them:
- Windows XP/NT/2000
- Mac OSX < 10.8 (Mountain Lion)
- Solaris 8

As another reminder, Windows agent installers are built from the [fusioninventory-agent-windows-installer github repository](https://github.com/fusioninventory/fusioninventory-agent-windows-installer).

The Team also reminds you that a [Userecho suggestion site](http://fusioninventory.userecho.com/) is available where you can submit your ideas or whishes for the future of FusionInventory agent and/or plugin for GLPI.

Don't hesitate to participate by putting your ideas or even just voting for others one !

As usual many thanks to all our community, users and contributors!
