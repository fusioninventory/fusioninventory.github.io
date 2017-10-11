---
layout: page
title: fusioninventory-netdiscovery
---

# NAME

fusioninventory-netdiscovery - Standalone network discovery

# SYNOPSIS

fusioninventory-netdiscovery \[options\] --first &lt;address> --last &lt;address>

    Options:
      --first <ADDRESS>      IP range first address
      --last <ADDRESS>       IP range last address
      --community <STRING>   SNMP community string (public)
      --credentials <STRING> SNMP credentials (version:1,community:public)
      --timeout <TIME        SNMP timeout, in seconds (1)
      --entity <ENTITY>      GLPI entity
      --threads <COUNT>      number of discovery threads (1)
      --control              output control messages
      --debug                debug output
      -h --help              print this message and exit
      --version              print the task version and exit

# DESCRIPTION

`fusioninventory-netdiscovery` allows to run a network discovery task without a
GLPI server.

# OPTIONS

- **--first** _ADDRESS_

    Set the first IP address of the network range to scan.

- **--last** _ADDRESS_

    Set the last IP address of the network range to scan.

- **--community** _STRING_

    Use given string as SNMP community (assume SNMPv1).

- **--credentials** _STRING_

    Use given string as SNMP credentials specification. This specification is a
    comma-separated list of key:value authentication parameters, such as:

    - version:2c,community:public
    - version:3,username:admin,authprotocol:sha,authpassword:s3cr3t
    - etc.

- **--timeout** _TIME_

    Set SNMP timeout, in seconds.

- **--entity** _ENTITY_

    Set GLPI entity.

- **--threads** _COUNT_

    Use given number of inventory threads.

- **--control**

    Output server-agent control messages, in addition to inventory result itself.

- **--debug**

    Turn the debug mode on. Multiple usage allowed, for additional verbosity.

# EXAMPLES

Run a discovery against a network range, using SNMP version 1:

    $> fusioninventory-netdiscovery --first 192.168.0.1 --last 192.168.0.254
    --community public

Run a discovery against a network range, using multiple SNMP credentials:

    $> fusioninventory-netdiscovery --first 192.168.0.1 --last 192.168.0.254
    --credentials version:2c,community:public
    --credentials version:3,username:admin,authprotocol:sha,authpassword:s3cr3t
