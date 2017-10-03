---
layout: page
title: Network discovery
---

# Purpose

A network discovery task aims to scan the the network, and reports devices
found to the GLPI server, so they can be added to the list of known assets.

Once part of the list of known assets, further information can be retrieved from SNMP-enabled devices using a [network inventory task](networkinventory.html).

# Overview

This task uses the following protocols to scan IP networks:

* ICMP scan (if nmap is available)
* NetBIOS scan (if Net::NBName is available, and proper credits provided)
* SNMP scan (if Net::SNMP is available, and proper credits provided)

Any device replying to at least one of those protocols will be *discovered*,
with minimal information, such as mac address and hostname.

Additionaly, if the device replies to SNMP, the agent will attempt to identify
it, using various methods. The primary method relies on retrieving the value of
the dedicated SNMP variable (SNMPv2-MIB::sysDescr.0), wich is a
constructor-specific OID identifying a given device model, and comparing it to
the agent internal database (the sysobject.ids file). If a match is found,
model, type and manufacturer are added to the information reported to the GLPI
server, allowing simple identification. If no match is found, various
heuristics are performed in order to identify the device, with lower
reliability.

Discovered devices are then reported to the GLPI servers, and [import
rules](../fi4g/importrules.html) are applied.

# Running

## Pre-requisite

The agent performing the task need multiple optional software dependencies, as
noted earlier.

The agent performing the task need network access the target networks, with
forementioned protocols, as well as control access, for SNMP: just being able
to send UDP packets to a device is not enough, if this device is configured to
ignore them.

As for any other server-controled task, the agent should use either managed or
half-managed mode, as explained in [agent usage](../agent/usage.html). If
the task is server-triggered, the agent must run in managed mode, and
its HTTP port should be reachable from the server.

## Manual execution

In order to run a network discovery task without a GLPI server, and for easier
troubleshooting, the fusioninventory-netdiscovery task can be run from command
line. See [fusioninventory-netdiscovery manpage]({{ site.baseurl }}/documentation/agent/man/fusioninventory-netdiscovery.html) for
details.

## Server execution

### Task activation

The netdiscovery module is not activated by default for agents. There is two
different way to enable it:

* for all agents: in menu _plugins_ > _FusionInventory_ > _Configuration_ and in tab _Agents modules_.
  You can check _Network discovery_ by default.
* for some agents only: in menu _plugins_ > _FusionInventory_ > _FusionInventory_ > _Agents management_
  go in agent form and in tab _Agents modules_, check _Network discovery_.

### Task creation

Now your agent is ready and the Network has been registered, you can create
your first task. Go in _Task management (Normal)_ menu and create a new entry.

Please see the [task creation]({{ site.baseurl }}/documentation/fi4g/tasks.html) page.

## Performance issues

### Credentials

Unfortunatly, there is no way to distinguish a failed SNMP authentication
attempt on a device, from the absence of a device. It means the agent will try
each available credentials against each IP address, in given order, and wait
for timeout each time. The most efficient way to adress this issue if to only
use the relevant set of credentials, and reduce the specific SNMP timeout.

### Threads number

In order to scan multiple addresses simultaneously, the agent can use multiple
discovery threads. This allow multiple simultaneous request, but also increase
resource usage on agent host. And also increase crash probability, if TLS is
used in any manner (including agent/server communication through HTTPS), as
perl TLS bindings are not 100% thread-safe. Unfortunatly, there is no way
currently to avoid thread usage totally, as current implementation always use
one controlling threads, in addition to a configurable number of working
threads.

# Troubleshooting

## The task doesn't run at all

## The task runs, but only reports unknown devices

## The agent crashes
