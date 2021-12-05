---
layout: single
title: Monthly report - November 2021
---

This is the monthly report for November 2021 about FusionInventory project.

Let's go for the second time \o/


# Communication/contact ways

The new way to contact introduced in October, the [Discord server](https://discord.gg/Kj72FwAKTC) was a very good idea.

We now have 50 people on this server and we have seen very many users with questions, and of course help was given.

The [GitHub](https://github.com/fusioninventory) is too always used and I have taken time too to better answer than in the past few months.


# Development: Communication protocol

The agent communicates with server code continue.

The new protocol, REST API, continue to be specified and written on agent & server.

Here is the first implementation and works on the modules:
 * local inventory
 * deploy
 * network inventory
 * ESX

The modules remain to be modified:
 * network discovery
 * wakeonlan
 * collect 


# Agents modules independencies

I have planned but not announced yet a new feature.

Couple users ask me on Discord server about problems with, for example, the network inventory running too frequently.

This is a problem that we have been thinking about for several years : each module (local inventory, deploy, network inventory, network discovery, ESX, wakeonlan, collect) will have each of them, own frequency of contact.

With this feature, the status page is currently in reworking progress too (one screen available of the current work on the discord server), I hope present it to you soon in a future monthly reports.


# About GLPI 10 announced in december & GLPI 9.5

Some users ask about the plugin FusionInventory for GLPI 10 and 9.5.

The next major version of the plugin FusionInventory for GLPI will be the version **9.5+4.0** and so, for version 9.5.6 of GLPI.

We will keep compatibility with 9.5 again many months.

For the version 10 of GLPI, it will need more efforts and we waiting to be sure the future minor versions will be real minor version, not like for GLPI 9.5 with 3 major versions released as minor version. These development problems requiring many times and problems for us and also for you, the users.


We are in discussion with the teams working on the GLPI fork to put the plugin on it. More information in few days / weeks by them.

