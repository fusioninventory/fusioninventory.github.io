---
layout: single
title: Network inventory improvement
---

# No mandatory SNMP model anymore

The FusionInventory network inventory task, which should be more precisely
described as remote inventory through SNMP, has always been plagued by a
critical limitation: SNMP models. Such a model enumerates mappings between
SNMP OIDs and inventory variables, such as 'the location is available at OID
.1.3.6.1.2.1.1.1.6.0', and was mandatory because there was no intelligence
in the agent itself, making it unable to perform anything without this
information. In order to inventory any kind of device, the relevant model had
to be defined first and assigned to this device second, which was a problem
in itself, as device identification was based on exact matching of SNMP
SysDescr string only... (See [Network discoveryimprovements]({{ site.baseurl }}/2013/11/08/network-discovery-improvement.html) for details).

Since the agent 2.3.4 release, we introduced simple but radical changes,
using default hardcoded OIDs for most variables, and minimum intelligence
for determining what to extract from the context. The agent is now able to
retrieve almost every interesting information from any device out of the
box, which is a huge improvement of the situation. Some specific pieces of
information are still problematic:

* firmware version numbers seems way too much versatile to be automatically
  retrieved
* printers print counters seems also lack any kinf of standardisation
* printers consumable levels are easily extracted, but identifying them
  precisely is quite difficult

Network inventory without model was sofar only possible from command-line,
through fusioninventory-netinventory executable, as the GLPI FusionInventory
plugin didn't allowed to run an inventory task for devices without model.
This constraint has been relaxed with 0.84+2.1 release, and is now only
enforced for agent whose version is less than 2.3.4.
