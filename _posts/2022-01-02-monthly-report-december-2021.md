---
layout: post
title: Monthly report - December 2021
categories: news
lang: en
---

This is the monthly report for December 2021, the last month of the 2021 year about FusionInventory project.


# Communication/contact ways

The new way to contact introduced in October, the [Discord server](https://discord.gg/Kj72FwAKTC), continues to have new users.

We are now 79 users on this server (+ 29 in 1 month) and we have seen very many questions, and of course answers was given.

The [GitHub](https://github.com/fusioninventory) is too always used, and I have taken time too to better answer than in the past few months.


# Development: Communication protocol

The agent communication code with server continues to be coded.

The new protocol, REST API, is alwsays in specifications and written on agent & server.

Here is the first implementation and works on the modules:
 * local inventory
 * deploy
 * network inventory
 * ESX
 * network discovery

The modules remain to be modified (planned in January):
 * wakeonlan
 * collect 

We will push in repositories (agent & plugin for GLPI) in January the new protocol 2.0.

**It will not be the final version**, the next part will concern the rework of information inside the JSON structure. We use the OCS data format, created in 2006 (and perhaps before, not sure). We need to modify it with new protocol to be modern.

The goal is to have more usable and compatible data structure for **local computer inventory and for network inventory (SNMP)**.

It's planned to be done in February 2022.


# Independent Agents modules

As explained in the November monthly report, each module will be independent for running.

It's not ready, because need finishes the protocol first version.


# Planning of releases

This is the tentative release planning:

 * Plugin FusionInventory for GLPI minor version (bug fixes) _9.5+3.1_ in January 2022
 * Plugin FusionInventory for GLPI major version _9.5+4.0_ in March / April 2022
 * Agent FusionInventory major version _3.0_ in March / April 2022
 * Plugin FusionInventory for GSIT (GLPI fork) major version _9.5+4.0_ in March / April 2022
 * Plugin FusionInventory for GLPI 10.0, perhaps around June / July 2022 (when GLPI will be stable, if it's possible...)


# FusionSuite

On January 12, an announcement will be made on website [fusionsuite.org](http://fusionsuite.org).

It's related with FusionInventory project, so don't forget this date ^_^.

