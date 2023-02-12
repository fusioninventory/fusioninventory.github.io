---
layout: post
title: Monthly report - october 2021
categories: news
lang: en
---

Hi all, 

I introduce a new communication way to give information to people about FusionInventory project.

The idea come from CIG and their monthly reports about the game Star Citizen (yes I love it :p). So, I think it could be a very good idea to do the same thing for the FusionInventory project.

Let's go \o/


# New website

Like you can see it few days ago, I add a new jehyll theme for the website. The content is the same but the displaying is different.

It's a nicely to read and the theme is really more modern.


# Communication / contact ways

I have reduced the too many ways to communicate with developers and between users.

The ways abandonned:

 * IRC (freenode)
 * Telegram
 * forums

The new way: 

 * server on [discord](https://discord.gg/Kj72FwAKTC), we have seen 18 users since opening  2 weeks ago, so come on to share your ideas or wanting help.


The others ways always opened:
 
 * github
 * mailling lists

You can get these information in the [contact page](http://fusioninventory.org/resources/).


# Development: Communication protocol

The agent communicate with server (plugin FusionInventory for GLPI) by:

 * XML compressed over HTTP, herited from OCS Inventory protocol and never updated by us
 * JSON over HTTP, used by deploy, collect and ESX modules

I'm rewriting all of them to have FULL REST API communication with the server. So exit XML, and welcome nice JSON and standards.

The specifications are currently in write and code has begun on both parts: agent and server.


# Development: Inventory informations

The consequence of modify the communication protocol, the local inventory is currenty updated to have a better usage.

We used the OCS Inventory specs and we have completed it the last 11 years but never totaly reformated. The devices have evoluated but not the information structure (and we have too the smartphone inventory in this structure).


# Next versions (agent and server)

The next version of agent will be the major version **3.0**.
The next version of plugin Fusioninventory (server) will be the **9.5+4.0**.

This is the defined compatibility table :

 * agent < 3.0 compatible with plugin (server) <= 9.5+4.0 and above. This support in server will be dropped in about 1 or 2 years.
 * agent >= 3.0 only compatible with plugin (server) >= 9.5+4.0

