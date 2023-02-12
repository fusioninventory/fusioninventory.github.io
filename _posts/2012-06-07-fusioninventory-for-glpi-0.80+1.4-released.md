---
layout: post
title: FusionInventory for GLPI 0.80+1.4 released
categories: news
lang: en
---

It's a pleasure to announce the version 0.80+1.4 of plugins fusioninventory for GLPI (<strong>so for GLPI 0.80.x</strong>, not for GLPI 0.83.x !).

This version fix mainly bugs, but there are some modifications on deployement features (thanks to kiniou), so works better ;).

You can see tickets <a title="here" href="http://forge.fusioninventory.org/versions/129">here</a>

You can download this version <a title="here" href="http://forge.fusioninventory.org/attachments/download/644/fusioninventory-for-glpi-metapackage_0.80+1.4.tar.gz">here</a>

This is the procedure to update this version:

* disable fus* plugins in menu Setup > Plugins (disable, not uninstall!!)
* Remove folders fusi* in glpi/_plugins/* uncompress the new archive ( fusioninventory-for-glpi-metapackage_0.80+1.4.tar.gz ) in this folder
* reconnect to GLPI (log in)
* update + activate the fus* plugins in the menu Setup > Plugins

To end this announce, thanks to users report the bugs ;)
