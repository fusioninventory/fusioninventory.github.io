---
layout: page
title: fusioninventory-injector
---

# NAME

fusioninventory-injector - A tool to push inventory in a Fusioninventory Inventory (GLPI) or compatible server.

# SYNOPSIS

fusioninventory-injector \[options\] \[--file \<file\>|--directory \<directory\>|--stdin\]

    Options:
      -h --help      this menu
      -d --directory load every .ocs files from a directory
      -f --file      load a speficic file
      -u --url       server URL
      -r --remove    remove succesfuly injected files
      -v --verbose   verbose mode
      --stdin        read data from STDIN

# Examples:

      fusioninventory-injector -v -f /tmp/toto-2010-09-10-11-42-22.ocs --url https://login:pw@server/plugins/fusioninventory/

# DESCRIPTION

This tool can be used to test your server, do benchmark or push inventory from
off-line machine.
