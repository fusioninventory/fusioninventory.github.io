---
layout: post
title: Network discovery improvement
---

# Network discovery improvement: good bye SysDescr, welcome SysObjectID

The latest 2.3.3 version, released yesterday, provides a new features for
network discovery, backported from next 2.4 version: better device
identification.

As described [here]({{ site.baseurl }}/documentation/tasks/networkdiscovery.html), network discovery
is actually a two-stage process: devices have to be found first, identified
second. Identification here means determining a few minimal information about
the discovered device (its type, manufacturer, etc), with two purposes:

* to allow import rules on the GLPI server to decide what to do with it
* to affect it an SNMP description model, so as to be able to run a network
  inventory task later on the device (currently, no SNMP model means no
  inventory)

So far, this identification process relied merely on the device SysDescr value,
as it is a standard and universal SNMP value, identificating the underlying
device as a free-text string. For instance, "Lexmark C935 version NC.NPS.N129S1
kernel 2.6.10 All-N-1" correspond to a specific Lexmark printer, with a
specific firmware level.

The specificity of this string offers the advantage of allowing to identify
both hardware and firmware at once, but is also quite fragile: a single
firmware update, and it changes. As current agent identification process relies
on exact matching, a simple character changes, and the identification fails.
Totally. Meaning no SNMP model affected. Meaning no network inventory...

This process could of course be made a bit more robust, by allowing fuzzy
matching, using regular expressions for instance. However, we'd still rely on
manually collecting sysdescr values, and associating them with known hardware
and firmware versions, which is quite inefficient.

The agent now relies on another standard SNMP value, the SysObjectID value.
This is value is actually an OID (object identifier), using IANA-normalized
value for identificating manufacturer, and a manufacturer-specific value for
identificating device model. For instance, ".1.3.6.1.4.1.9.1.516" identifies a
Cisco Catalyst 3750-24/48 device. It doesn't allow to identify firmware level, 
tough, meaning it can't completly replace SysDescr usage so far, as we need to
know the exact firmware for inventory. However, it is stable, meaning firmware
update won't prevent device identification anymore. And they are exhaustive
list of values available, as most manufacturer publish them. Meaning we're no
longer dependant of the "we can only recognize what we already seen somewhere"
syndrom.

The result of this change is than, starting with agent version 2.3.3, a
successful discovery result is now pushed to the server as "there is a Cisco
Catalyst 3750-24/48 device at IP address w.x.y.z", instead of "there is an
unknown Cisco device at IP address w.x.y.z, use network inventory to find what
it is later". Unfortunatly, the GLPI server doesn't handle this additional
information (at this stage) yet, meaning there is no immediate advantage.
That's a first step, but a robust step, toward general improvement of the whole
network discovery and inventory functionality of FusionInventory.
