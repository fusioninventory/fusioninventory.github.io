---
layout: post
title: FusionInventory agent task-network 1.0.2 released
categories: news
lang: en
---

Hello folks.
   
We just released version 1.0.2 of the network plugin for FusionInventory
agent.

This plugin is used to do:

* Network discovery: identify devices on the network
* Network inventory: deep SNMP scan of suported devices

This is just a bugfix release, with the following changes:

* work around Net::IP [[!bug 71510]], [[!bug 1880]]
* fix mac address double normalisation
* don't overwrite already computed values [[!bug 1837]]
* don't install packlist files
* add Test::Exception as test dependency

This plugin will be integrated in the 2.2.7-1 Windows installer.

Enjoy
