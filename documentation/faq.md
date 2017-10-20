---
layout: page
title: FAQ
---

1. [Configuration and deployment](#config-and-deploy)
   1. [On which platforms is the FusionInventory agent available?](#agent-platform-availability)
   1. [Is FusionInventory agent compatible with OCS Inventory NG Server?](#agent-ocs-compat)
   1. [How to redirect OCS agent with Apache?](#redirect-ocs-agent)
1. [How can I ...](#how-can-i-do)
   1. [configure two or more servers ?](#more-servers)
   1. [use a mastering software like Ghost to deploy my agent ?](#mastering-software)
   1. [inventory my virtual machines ?](#vms)
   1. [inventory my printers ?](#printers)
   1. [debug agent ssl issue ?](#debug-ssl)
1. [Usual issues](#issues)
   1. [*Task X is not enabled* message](#task-x-not-enabled)
   1. [*Unable to find agent to run this job* message](#no-agent-to-run-job)
   1. [*Bad token* message](#bad-token)
   1. [*end_request: I/O error, dev fd0, sector 0* message](#floppy-io-error)
   1. [Duplicated computers in inventory](#dup-computers)
   1. [Missing information when called from cron](#missing-info-under-cron)
   1. [Strange agent token “12345678”](#strange-agent-token)
   1. [FusionInventory Agent WakeOnLan task fails on windows](#win32-wakeonlan)

___

<div id='config-and-deploy'/>
# Configuration and deployment

<div id='agent-platform-availability'/>
## _On which platforms is the FusionInventory agent available?_

The agent is available on Windows, OS X, Linux, FreeBSD, OpenBSD,
NetBSD, DragonFlyBSD, AIX, Solaris, HP-UX. The agent shares the same
codebase on all these platforms.

<div id='agent-ocs-compat'/>
## Is FusionInventory agent compatible with OCS Inventory NG Server?

Yes, your server will need to be configured to accept the Fusioninventory UserAgent in the ocsinventory-server.conf

    #Path for external useragents reference file
    #!! WARNING !! : external agents may not be supported by OCS NG Community ! 
    #PerlSetEnv OCS_OPT_EXT_USERAGENTS_FILE_PATH /tmp/yourfile.txt

The /tmp/yourfile.txt is a list of the UserAgent that should be accepted. For
example:

    FusionInventory-Agent_v2.1.9-3
    FusionInventory-Agent_v2.1.13-1
    FusionInventory-Agent_v2.2.5-1
    FusionInventory-Agent_v2.2.7-3

This step is not required with the legacy 1.x server.

Please note that FusionInventory-Agent doesn’t support OCS’s IP Discover
feature, and that OCS Deployment module is now deprecated and will not
be developped anymore.

If you’re looking for a software deployment solution, FusionInventory
provides it’s own, which is integrated into GLPI.

<div id='redirect-ocs-agent'/>
## How to redirect OCS agent with Apache?

You can use an [alias](http://httpd.apache.org/docs/2.2/mod/mod_alias.html) directive to
redirect traffic from /ocsinventory to FusionInventory.

    Alias /ocsinventory "/var/www/html/glpi/plugins/fusioninventory/front/communication.php"

Take care to declare this directive before an `Alias / XXX` or it will be ignored.

For example:

    Alias /ocsinventory "/var/www/html/glpi/plugins/fusioninventory/front/communication.php"
    Alias / /var/www/html/glpi/
    
    <Directory /var/www/html/glpi>
        Options None
        AllowOverride Limit Options FileInfo
    
        php_value memory_limit 256M
    
        Order Deny,Allow
        Allow from all
    </Directory>

It's also possible to use a regular expression for that.

***

<div id='how-can-i-do'/>
# How can I ...

<div id='more-servers'/>
## How can I configure two or more servers?

 In the agent configuration file, you can define several servers to
communicate with. For example to communicate with three servers:
FusionInventory Server for GLPI 0.80 and 0.83, and OCSInventory server:

    server = http://glpi080/plugins/fusioninventory/front/plugin_fusioninventory.communication.php, http://glpi083/plugins/fusioninventory/, http://ocsinventory-ng/ocsinventory

The agent will contact each server in the order defined in the configuration
file, and perform the actions requested from each of them.

<div id='mastering-software'/>
## How can I use a mastering software like Ghost to deploy my agent?

Yes. However, take care to not duplicate agent state directory, otherwise
multiple agents will use the same identifier.

<div id='vms'/>
## How can I inventory my virtual machines ?

As for every other machine: install an agent on it.

Running a local inventory on a host doesn't actually perform an actual
inventory of its guests, it just retrieve minimal information, such as virtual
machine identifier, so as to compute the relationship between the guest and the
host.

<div id='printers'/>
## How can I inventory my printers ?

For local (USB) printers, run a local inventory on the host.

For network printers, run a network inventory from any agent able to
communicate through SNMP with the printer.

<div id='debug-ssl'/>
## How can I debug agent ssl issue ?

With FusionInventory Agent 2.3.20, you can diagnostic agent to server SSL communications
by starting the agent from a command line with the following parameters:

    fusioninventory-agent --logger=Stderr --debug --debug --server=https://[your-server]/plugins/fusioninventory/

You will obtain very verbose SSL library messages from which you can better understand
what's going on like wrong server certificate, missing CA certificate on agent side, ...


***

<div id='issues'/>
# Usual issues

<div id='task-x-not-enabled'/>
## *Task X is not enabled* message

    Task NetInventory is not enabled
    Task NetDiscovery is not enabled

These messages show up in the agent log when the server do not ask for an Network
Discovery or a Network Inventory.

<div id='no-agent-to-run-job'/>
## *Unable to find agent to run this job* message

You will get *Unable to find agent to run this job* message when the server can't find an agent
to run a task in push mode:

* Ensure an agent is running as service or daemon
* The server can contact http://[agentIP]:62354 directly
* Check in http://glpi/plugins/fusioninventory/front/agent.php if the agent has *Network discovery*
  and *Network inventory (SNMP)* modules turned on

<div id='bad-token'/>
## *Bad token* message

“Bad token” problems means the agent and the server are not synchronized anymore. You can resolve the situation either:

* just by running an inventory
* by using `httpd-trust` parameter to allow request from the server IP.

{% include warning.html param="A bug fixed in 2.2.7 prevent the use of <code class='highlighter-rouge'>rpc-trust-localhost</code> and <code class='highlighter-rouge'>httpd-trust</code>." %}

<div id='floppy-io-error'/>
## *end_request: I/O error, dev fd0, sector 0* message

This can append on Linux box with floppy driver like most of the VMware virtual machine. You can
work around the problem by unloading the floppy kernel module:

    rmmod floppy

The error is generated when the agent launch the following command `fdisk -l`.

<div id='dup-computers'/>
## Duplicated computers in inventory

With the default settings, FusionInventory for GLPI use the follow criteria to identify computer:

* MAC addresses
* serial number
* UUID

One of this information is probably duplicated.

<div id='missing-info-under-cron'/>
## Missing information when called from cron

Most of the time, cron do not define a default PATH. In this case the agent won't
find important tools like `dmidecode`, `lspci`, etc ( See old [Fusioninventory forge issue 1747](http://forge.fusioninventory.org/issues/1747) ).

Just define the PATH in the crontab:

    PATH=/usr/local/sbin:/usr/local/bin:/sbin:/bin:/usr/sbin:/usr/bin

<div id='strange-agent-token'/>
## Strange agent token “12345678”

Since the agent 2.3.0, the agent doesn't use any token anymore to authenticate
server messages. Any target server is automatically trusted, as well as any
other IP address given through httpd-trust configuration directive.

<div id='win32-wakeonlan'/>
## FusionInventory Agent WakeOnLan task fails on windows

WakeOnLan agent task requires a system library (DLL) provided by [WinPcap](https://www.winpcap.org).

Just download and install the [lastest WinPcap package](https://www.winpcap.org/install/default.htm) before being able to use WOL from a win32 agent.

_See also: [issue #392](https://github.com/fusioninventory/fusioninventory-agent/issues/392) solved by tabad_
