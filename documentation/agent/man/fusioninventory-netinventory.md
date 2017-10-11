---
layout: page
title: fusioninventory-netdiscovery
---

# NAME

fusioninventory-netinventory - Standalone network inventory

# SYNOPSIS

fusioninventory-netinventory \[options\] \[--host &lt;host>|--file &lt;file>\]

    Options:
      --host <HOST>          target host
      --file <FILE>          snmpwalk output file
      --community <STRING>   community string (public)
      --credentials <STRING> SNMP credentials (version:1,community:public)
      --timeout <TIME>       SNMP timeout, in seconds (15)
      --type <TYPE>          force device type
      --threads <COUNT>      number of inventory threads (1)
      --control              output control messages
      --debug                debug output
      -h --help              print this message and exit
      --version              print the task version and exit

# DESCRIPTION

`fusioninventory-netinventory` allows to run a network inventory task without
a GLPI server.

# OPTIONS

- **--host** _HOST_

    Run an online inventory against given host. Multiple usage allowed, for
    multiple hosts.

- **--file** _FILE_

    Run an offline inventory against snmpwalk output, stored in given file. 
    Multiple usage allowed, for multiple files.

- **--communty** _STRING_

    Use given string as SNMP community (assume SNMPv1)

- **--credentials** _STRING_

    Use given string as SNMP credentials specification. This specification is a
    comma-separated list of key:value authentication parameters, such as:

    - version:2c,community:public
    - version:3,username:admin,authprotocol:sha,authpassword:s3cr3t
    - etc.

- **--timeout** _TIME_

    Set SNMP timeout, in seconds.

- **--type** _TYPE_

    Force device type, instead of relying on automatic identification. Currently
    allowed types:

    - COMPUTER
    - NETWORKING
    - PRINTER
    - STORAGE
    - POWER
    - PHONE

- **--threads** _count_

    Use given number of inventory threads.

- **--control**

    Output server-agent control messages, in addition to inventory result itself.

- **--debug**

    Turn the debug mode on. Multiple usage allowed, for additional verbosity.

# EXAMPLES

Run an inventory against a network device, using SNMP version 2c authentication:

    $> fusioninventory-netinventory --host 192.168.0.1
    --credentials version:2c,community:public

Run an inventory against a network device, using SNMP version 3 authentication
and forcing its type:

    $> fusioninventory-netinventory --host my.device --type NETWORKING
    --credentials version:3,username:admin,authprotocol:sha,authpassword:s3cr3t
