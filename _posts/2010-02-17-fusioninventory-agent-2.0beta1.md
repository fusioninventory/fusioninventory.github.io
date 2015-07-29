---
layout: post
title: FusionInventory agent 2.0beta1
---

Hi!

This is the first release of the FusionInventory-Agent 2.0 serie. There is major changes in the release :

*  OcsDeploy (was Download.pm) module has been rewritten from scratch. It's now possible to do P2P deployment.
* SNMP and NetDiscovery support. This is a major changes. FusionInventory Agent is now directly connected with GLPI via GLPI Tracker plugin ( <a rel="nofollow" href="https://forge.indepnet.net/projects/show/tracker/">https://forge.indepnet.net/projects/show/tracker/</a> ) !
* A lot of internal changes and clean up has also been done.
* Initial HP-UX support thanks to François MERMET



Changes since the last stable release : 2.0beta1

*  Use Sys::Hostname instead of uname for better portability
* add --daemon-no-fork
* post-install.pl: Don't ask the user if Download.pm should be enabled
* Drop the linux_agent modules compatibility layer
* Rename module hook functions :

* check()    → isInventoryEnabled()
* run()      → doInventory()
* longRun()  → postInventory()



</li>



* Add isPostInventoryEnabled() function* Drop AccountConfig. replaced by Storage
* Move Ocsinventory::Agent::XML::{Inventory,Prolog,SimpleMessage} in Ocsinventory::Agent::XML::Query
* WakeOnLan support (David DURIEUX)
* Ocsinventory renamed to FusionInventory
* OcsDeploy full rewrite
* P2P mode in daemon mode (-d or -D)
* add --rpc-ip
* SNMP support (David DURIEUX)
* Network discovery (David DURIEUX)
* WakeOnLan (David DURIEUX)
* postinst.pl is now and is installed in the $PATH
* Solaris: use regex to identify CPU class (Jerome LEBAS)
* Solaris/Network: support Zone (Jerome LEBAS)
* HP-UX: initial support, tested on RP3440 (François MERMET)
* Changed arguments to dpkg-query for compatibility (Scott HANNAHS)
* MacOSX: Distinguish clearly between "OS Name" and "System Version" by parsing output carefully for both variables. Clean up language in description. (Scott HANNAHS)
* Add an in contrib example of script to identify specific software (Simon CLARA)
* Upgrade memconf to V2.13
* Use parameters to simplify the way dmidecode is called (Dmitry ILYIN)
* Solaris: Bonding support (Stéphane URBANOVSKI)
* Remove exec flag on lib/Ocsinventory/Agent/Backend/OS/MacOS/Hostname.pm (Remi COLLET)
* spelling in manpage authentification → authentication
* MacOSX: Correctly identify the CPU frequency on MacOSX 1.6 French, thanks Grek
* Improve the README about non-interactive installation
* Bump copyright date from 2009 to 2010
* Linux/PPC: Frequency is an integer, not a float



Please test it and report bugs.

<a rel="nofollow" href="http://forge.fusioninventory.org/attachments/download/5/FusionInventory-Agent-2.0beta1.tar.gz">FusionInventory-Agent-2.0beta1.tar.gz</a><!--more-->
