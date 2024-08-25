---
layout: post
title: Monthly report - July 2024
categories: news
lang: en
---

This is the monthly report for May, June and July 2024.

# Introduction

This is some news regarding the development of FusionInventory (agent and server).

# Crowdfunding

At the end of August, I will launch a crowdfunding.

<img src="/assets/img/crowdfunding.jpg" width="600">

The FusionInventory project, as well as the other related ones like FusionSuite, are not going fast enough. Indeed, I am developing in my free time and it is not progressing as fast as I would like.

In order to be able to finalize **FusionInventory 3.0** and **FusionSuite 1.0** as soon as possible, I would like to be full-time on these projects, for 1 full year.

This will allow:

* before the release:
  * finish the development
  * write the documentation
* manage the communication
* release the releases
* after the releases:
  * do the community support
  * define the roadmap
  * manage the corrective versions (there will inevitably be some bugs hanging around)

There will be virtual counterparts, and other physical ones, for people, and even for companies who would participate.

You understood, I need you for this final stretch.

**More information in a dedicated news at the end of August for the launch**

# Agent FusionInventory

The agent rewritten in RUST begin to works.

Of course, not yet all implemented, but some parts:

* local computer inventory (coded at 60%)
* new data structure (implemented at 80%)
* new file system architecture
* webserver (done at 50%), we can see state of each module, can force a module to run, design not yet done
* new config file

<img src="/assets/img/202407_statusagent.png">


The first part of code has been pushed on the [repository](https://github.com/fusioninventory/fusioninventory-agent-rust).

# Servers FusionInventory

This is some news about the servers.

## FusionSuite

FusionSuite project continue it's development, not yet ready.

I'm waiting more code of agent to be written to continue the FusionInventory server code on FusionSuite.

## GSIT

The *versoin 9.6* is currectly in active development and too many parts is been rewritten.

The plugin Fusioninventory will be rewritten in september for release end of September or October, in fact in same time than release of GSIT 9.6.

There is a possibility of integrating FusionInventory into core of GSIT, not yet decided. I think we will have a compatibility part to manage agents 2.x and 3.x.


## GLPI

It's a reminder, because many users ask me on [the discord server](https://discord.gg/KdR6dyzNUU), **the plugin for GLPI is discontinued**, [check this news](https://fusioninventory.org/news/2024/03/27/plugin-fusioninventory-gsit-glpi-support-status.html).



**David Durieux - FusionInventory project leader**
