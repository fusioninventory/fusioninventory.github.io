---
layout: page
title: fusioninventory-netinventory
---

# NAME

fusioninventory-netinventory - Standalone network inventory

# SYNOPSIS

fusioninventory-netinventory \[options\] \[--host \<host\>--file \<file\>\]

    Options:
      --host host    host to inventorize
      --file         snmpwalk output file
      --community    community string (default: public)
      --credentials  SNMP credentials
      --timeout val  SNMP timeout (default: 15s)
      --entity       GLPI entity
      --verbose      verbose output (control messages)
      --debug        debug output (execution traces)
      -h --help      print this message and exit
      --version      print the task version and exit

# DESCRIPTION

`fusioninventory-netinventory` allows to run a network inventory task without
a GLPI server.
