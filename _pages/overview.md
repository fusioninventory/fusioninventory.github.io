---
title: Overview
permalink: /overview/
toc: true
redirect_from: "/overview/overview.html"
---

# Feature Overview

## Automated update of the assets
FusionInventory acts like a gateway and collect information sent by the agents.
It will create or update the information in GLPI it minimal effort from the administrator.

For now, these class of devices are supported:

* Computers
* Network devices
* Printers
* Virtual machines
* Android phone

## Virtual machines inventory

FusionInventory supports different virtualization mechanisms.

* VMware vCenter/ESX/ESXi
* Virtualbox
* Libvirt
* Xen
* OpenVZ/Virtuozzo
* Parallels
* LXC
* FreeBSD Jails
* HPVM
* Vserver
* Hyper-V

## Software deployment

You can use FusionInventory to install, update or remove software. You can also push administration scripts.

The solution can be run on any kind of operating system, espcially:

* Windows
* OS X
* Linux
* *BSD

FusionInventory is designed to take care of the network bandwidth.

## Wake on Lan

The agent can send Wake on Lan order on its local network. By using the GLPI plugin, you can planify when computers have to be awaken and from which agent.

# The solution main components

## The agent

The __FusionInventory Agent__ is a generic multi-platform agent. It can perform a
large array of management tasks, such as local inventory, software deployment
or network discovery. It can be used either standalone, or in combination
with a compatible server (OCS Inventory, GLPI, OTRS, Uranos, ...) acting as a centralized
control point.

Two of these tasks are included in agent source distribution, local inventory
and wake on lan. Other tasks are distributed separatly, excepted for binary
distributions where they are bundled together.

## The GLPI Plugin

[GLPI](http://www.glpi-project.org) is the Information Resource-Manager with an additional Administration
Interface.

You can use it to build up a database with an inventory for your company
(computer, software, printers, ...). It has enhanced functions to make the
daily life for the administrators easier, like a job tracking system with
mail-notification and methods to build a database with information
about your network-topology.

GLPI also comes with an integrated Request Tracking solution.

__FusionInventory for GLPI__ is a plugin for GLPI.


