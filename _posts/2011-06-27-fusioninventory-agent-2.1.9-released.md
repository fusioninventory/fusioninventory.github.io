---
layout: single
title: FusionInventory agent 2.1.9 released
---

Hello FusionInventory users,

Last week, we did a new maintenance release of FusionInventory Agent.
[Get FusionInventory agent]({{ site.baseurl }}/documentation/agent/installation/)

We also regenerated new "prebuilt" package to embed two new scripts:
 - fusioninventory-esx: generate inventory of remote ESX/ESXi/vCenter server
 - fusioninventory-injector: load inventory file in a remote server
[http://prebuilt.fusioninventory.org/stable/](http://prebuilt.fusioninventory.org/stable/)

The 2.1.10 development is open. You can have a look on the roadmap here.
[http://forge.fusioninventory.org/versions/show/93](http://forge.fusioninventory.org/versions/show/93)

This is the full changelog for this release.

## HPUX

* HARDWARE/MEMORY missing on HPUX PA-RISC 11.11
       commit:262392
     http://forge.fusioninventory.org/issues/737
   thanks: Amir Pakdel, yanick durant
* machinfo on HP-UX 11.31 ia64 (tukwila chip) reports differently - breaks Fusioninventory CPU reporting
       commit:0a9037
     http://forge.fusioninventory.org/issues/757
   thanks: Earl Flack
* HP-UX: typo in CPU name
       commit:050ead
     http://forge.fusioninventory.org/issues/760
* Serial and bios informations are missing on 11.31
       commit:2e5608
     http://forge.fusioninventory.org/issues/761
   thanks: yanick durant
* HPUX Superdome CPU not correctly identified
       commit:0a9037
     http://forge.fusioninventory.org/issues/767
   thanks: yanick durant
* HPUX: Error in execution of fsdb in Drive.pm
       commit:9d1045
     http://forge.fusioninventory.org/issues/773
   thanks: yanick durant
* should we use fsdb on HP-UX to get the FS creation date?
       commit:39cd5a commit:ecd475
     http://forge.fusioninventory.org/issues/778
   thanks: Guillaume Rousse, Amir Pakdel

## INTERNAL

* Change message &quot;Force run now&quot;
       commit:03c651
     http://forge.fusioninventory.org/issues/535
   thanks: Walid Nouh
* RPC: do not regenerate a token if RPC request come from local loopback
       commit:96915c
     http://forge.fusioninventory.org/issues/730
* regression if --rpc-trust-localhost --scan-homedirs have no argument
       commit:d9a436iahttp://prebuilt.fusioninventory.org/stable/debian-6.0-amd64/fusioninventory-agent_debian-6.0-amd64_2.1.9-3.tar.gz
     http://forge.fusioninventory.org/issues/741
* Agent should follow HTTP err 301 redirection
       commit:7f61f3
     http://forge.fusioninventory.org/issues/776
* on linux, type of computer not reported
       commit:d01560
     http://forge.fusioninventory.org/issues/791
   thanks: Fabrice Flore-Thebault
* use full name key for LVM inventory
       commit:75bb13
     http://forge.fusioninventory.org/issues/863
* missing RPC port in the agent log
       commit:504d53
     http://forge.fusioninventory.org/issues/870
* LWP 6 support
       commit:5953dc
     http://forge.fusioninventory.org/issues/878
* add Hyper-V virtual machine detection
       commit:9152c7
     http://forge.fusioninventory.org/issues/910
* set TAG in local mode
       commit:000fcb
     http://forge.fusioninventory.org/issues/946

## LINUX

* rhn inventory
       commit:e13d10
     http://forge.fusioninventory.org/issues/713
   thanks: Remi Collet
* HP DL servers - Harddisk
       commit:caa030
     http://forge.fusioninventory.org/issues/768
   thanks: Amir Pakdel, Walery Wysotsky
* Add Linux LVM support
       commit:5f861e commit:0a3aa5 commit:9e6d79
     http://forge.fusioninventory.org/issues/802
   thanks: Sébastien Dagnicourt
* Vmware desktop virtual machines not detected on Linux
       commit:88b545
     http://forge.fusioninventory.org/issues/808
   thanks: Walid Nouh
* With newer gentoolkit software query is failing
       commit:a07afd
     http://forge.fusioninventory.org/issues/852
   thanks: Guillaume Rousse, İbrahim Özgür Erişen

## MACOSX

* Software installed on parallel virtual guest listed in physical host inventory
       commit:69ffe5
     http://forge.fusioninventory.org/issues/716
   thanks: Guillaume Rousse
* Error during Vmware Fusion inventort on Mac OS X
       commit:3eecb1
     http://forge.fusioninventory.org/issues/762
   thanks: Walid Nouh
* Error running Parallels Desktop on Mac OS X
       commit:4ec184
     http://forge.fusioninventory.org/issues/763
   thanks: Walid Nouh
* Improve Parallels Desktop support
       commit:823aec
     http://forge.fusioninventory.org/issues/769
   thanks: Walid Nouh
* Fix MONITORS/VIDEOS detection on MacOSX
       commit:974fd8
     http://forge.fusioninventory.org/issues/936
   thanks: Loic Lhermitte

## SOLARIS

* SolarisZones module ignored in fusioninventory-agent  2.1.8_rc1
       commit:9368ea
     http://forge.fusioninventory.org/issues/787
   thanks: Christian Lete

## TEST-SUITE

* FusionInventory::Agent::RPC build fails is no JSON
       commit:782834
     http://forge.fusioninventory.org/issues/955
   thanks: Remi Collet

## WINDOWS

* The agent still conflicts with Oracle Perl
       commit:a63eba commit:1d18c6 commit:4afe98
     http://forge.fusioninventory.org/issues/889
   thanks: GuruNot
* GLPI plugin imports duplicate entries with software from Windows Agent
       commit:4553aa
     http://forge.fusioninventory.org/issues/927
   thanks: David Durieux, Peter Luk
