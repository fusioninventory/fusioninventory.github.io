---
layout: post
title: FusionInventory agent 2.0.2
categories: news
lang: en
---

2.0.2     Sat Apr 10 23:31:48 2010 +0200

* fusioninventory-agent-config: Fix a typo, thank you Act
* --delaytime really read the parameter, thanks Walid NOUH
* fix --no-socket
* Fix a typo in fusioninventory-agent-config, logtotate (Girish NAVUDA)
* Do not load Crypt::SSLeay and IO::Socket::SSL at the same
* POD doc, explain how to use more than one server
* Fix: between two server query, really wait during a random period still based on server PROLOG_FREQ
* SNMP.pm: Correct bug when oid result is pack and put mac in right format (David DURIEUX)
* Set 2.0.1 release date in Changes file



<a class="external" href="http://forge.fusioninventory.org/attachments/download/13/FusionInventory-Agent-2.0.2.tar.gz">FusionInventory-Agent-2.0.2.tar.gz</a>
