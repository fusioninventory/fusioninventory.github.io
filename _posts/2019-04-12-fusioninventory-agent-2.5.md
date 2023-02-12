---
layout: post
title: FusionInventory Agent 2.5
categories: news
lang: en
---

The FusionInventory Agent maintainers are proud to announce the 2.5 release.

You can download sources or dedicated installer from the [fusioninventory-agent github releases](https://github.com/fusioninventory/fusioninventory-agent/releases/tag/2.5):

<button class="button-save large" onclick="window.location.href='https://github.com/fusioninventory/fusioninventory-agent/releases/tag/2.5'">Download FusionInventory Agent v2.5 from Github Releases</button>

Or see [download instructions](https://documentation.fusioninventory.org/%20FusionInventory_agent/%20%20%20Installation/windows/) for details.

Since last 2.4.3 release, many bug fixes and enhancements have been accumulated, such as:

For the core:
- Under win32, another memory leak was identified in the Win32::Daemon module. It has
  been fixed in the win32 service. The service memory usage is even more stable.
  The win32 service mode has also been a little reworked to better handles resources.
  This should fix some cases where the service was not really started during boot.
  The service reported the memory usage in debug mode and it now reports the memory
  usage as Working Set Size (WSS) and Page File Usage (PFU) to help control memore usage.
- Few fixes has been addressed on HTTP daemon under CentOS
- The HTTPD daemon now supports plugins: this is a great new feature and we still
  included the following plugins:
  - Inventory plugin: this plugin permits to securely request an inventory via the network
  - SSL plugin: this plugin permits to enable SSL support on any port the agent is listening
  - Test plugin: this plugin is just an example plugin
  - a Proxy plugin will come in a later release
  By default, no plugin is enabled, so nothing more is opened by default.
  Each plugin has its own configuration file for its specific parameters and the first
  one is the `disabled` parameter with is set to 'yes' by default.
  Check the configuration file to see how to configure a given plugin.
- To support agent just listening without server target, the new config parameter `listen`
  can be set.
- A new script `fusioninventory-remoteinventory` has been included to request the HTTPD
  Inventory plugin if it has been enabled on an agent.
- Under win32, the agent journal is now under a `log` sub-folder into the installation
  directory.

For the Inventory task:
- few minor fixes has been included for linux and win32
- pci & usb included databases has been updated

For the NetDiscovery/NetInventory tasks:
- Stoatwblr has submitted few very interesting contributions like a script to export
  [NetDisco](http://netdisco.org/) database content as XML to be imported in FusionInventory.
  It has also gave us interesting fixes for some printers.
- Few devices support has been enhanced like Lancom, Oki, Ubnt AccessPoint & APC
- more devices are fully detected with the updated [sysobject.ids](https://github.com/fusioninventory/sysobject.ids/tree/fia-2.5)

For the Deploy task:
- a little fix will help to identify a server-side configuration problem related to
  miss-configured URL or mirror.

For the Collect task:
- it now supports a list of properties to collect datas via WMI. In the plugin, just
  separate properties with a comma or a space in the `Properties` field.

In contrib/netdisco folder:
- You'll find Stoatwblr shell script to export [NetDisco](http://netdisco.org/) discovered
  devices as XML to be injected in FusionInventory.

Check the [Changes file](https://github.com/fusioninventory/fusioninventory-agent/blob/2.5/Changes) for more details.

As a reminder, we want to tell you again the support for some old operating systems is discontinued since 2.4. The agent may continue to work on these platforms but we won't handle issues reported for them:
- Windows XP/NT/2000
- Mac OSX < 10.8 (Mountain Lion)
- Solaris 8

As another reminder, Windows agent installers are built from the [fusioninventory-agent-windows-installer github repository](https://github.com/fusioninventory/fusioninventory-agent-windows-installer).

The Team also reminds you that a [Userecho suggestion site](http://fusioninventory.userecho.com/) is available where you can submit your ideas or whishes for the future of FusionInventory agent and/or plugin for GLPI.

Don't hesitate to participate by putting your ideas or even just voting for others one !

As usual many thanks to all our community, users and contributors!
