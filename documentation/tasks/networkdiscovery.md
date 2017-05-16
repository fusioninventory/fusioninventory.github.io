---
layout: page
title: How to scan my network
---

# Overview

The NetDiscovery task uses the following protocols to scan IP networks:

* ICMP scan
* NetBIOS scan
* SNMP scan

Any device replying to at least of those protocols will be *discovered*, with
just minimal information, such as mac address and hostname.

Additionaly, if the device replies to SNMP, the agent will attempt to identify
it, using its system description (SNMPv2-MIB::sysDescr.0) value. Rule-based
identification, using rules hardcoded in the agent, allows a minimal level of
identification. Dictionary-based identification, using a server-provided
database of known values, allows a more precise identification. If any suceed,
the device will be *identified*.

Discovered devices are then reported to the GLPI servers, and import rules are
applied.  If the device type (printer, network device, etc...) has not been
set, the device will be considered as 'unknown devices'.

## Agent configuration

The agent requires additional software for this task:

* nmap external command for ICMP suport
* Net::NBName perl module for NetBios support
* Net::SNMP perl modules for SNMP support
You have to check your installation for those optional dependencies.

The agent also requires access to the devices on its target network, using the
forementioned protocols. You have to check your network filtering rules, as
well as your access control rules on the devices.

## SNMP Credentials

There is now way to distinguish a failed SNMP authentication attempt from a
non-responding device, meaning the agent will try each available credentials
against each IP address, and wait for a timeout each time.

## Threads number

In order to perform discovery faster, the agent can use multiple threads. This
allow multiple simultaneous request, but also increase resource usage on agent
host.

# Manual execution

In order to run a network discovery task without a GLPI server, and for easier
troubleshooting, the fusioninventory-netdiscovery task can be run from command
line. See [fusioninventory-netdiscovery manpage]({{ site.baseurl }}/documentation/agent/man/fusioninventory-netdiscovery.html) for
details.

# Server execution

## Task activation

The netdiscovery task is not activated by default for agents. There is two
different way to enable it:

* for all agents: in menu _plugins_ > _FusionInventory_ > _Configuration_ and in tab _Agents modules_.
  You can check _Network discovery_ by default.
* for some agents only: in menu _plugins_ > _FusionInventory_ > _FusionInventory_ > _Agents management_
  go in agent form and in tab _Agents modules_, check _Network discovery_.

## SNMP Credentials

The server always uses all defined credentials, in creation order, as there is
no way to configure this currently. For faster discovery, you should ensure
your devices use coherent SNMP credentials, and drop all unused ones.

## Threads number

The thread number can be defined either:

* for all agents: in menu _plugins_ > _FusionInventory_ > _Configuration_ and in tab _FusionInventory SNMP_. define value _Threads number (network discovery)_. 
* for some agents only: in menu _plugins_ > _FusionInventory_ > _FusionInventory_ > _Agents management_ go in agent form and in tab _Threads number_, and define value _Threads number (network discovery)_.

## Network range

You need to register your network ranges in the “IP range configuration”
configuration. You can associate a network to an entity, in this case, the
devices found on this network will be created in the given entity.

## Task creation

Now your agent is ready and the Network has been registered, you can create
your first task. Go in _Task management (Normal)_ menu and create a new entry.

Please see the [task creation]({{ site.baseurl }}/documentation/fi4g/tasks.html) page.
