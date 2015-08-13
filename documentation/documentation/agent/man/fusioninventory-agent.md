---
layout: page
title: fusioninventory-agent
---

# NAME

fusioninventory-agent - FusionInventory agent For Linux/UNIX, Windows and OS X

# SYNOPSIS

**fusioninventory-agent** \[options\] \[--server server|--local path\]

    Target definition options:
      -s --server=URI                send tasks result to a server
      -l --local=PATH                write tasks results locally

    Target scheduling options:
      --delaytime=LIMIT              maximum delay before first target,
                                       in seconds (3600)
      --lazy                         do not contact the target before
                                     next scheduled time

    Task selection options:
      --list-tasks                   list available tasks and exit
      --no-task=TASK                 do not run given task

    Inventory task specific options:
      --no-category=CATEGORY         do not list given category items
      --scan-homedirs                scan user home directories (false)
      --scan-profiles                scan user profiles (false)
      --html                         save the inventory as HTML (false)
      -f --force                     always send data to server (false)
      --backend-collect-timeout=TIME timeout for inventory modules
                                       execution (30)
      --additional-content=FILE      additional inventory content file

    Package deployment task specific options:
      --no-p2p                       do not use peer to peer to download
                                       files (false)

    Network options:
      -P --proxy=PROXY               proxy address
      -u --user=USER                 user name for server authentication
      -p --password=PASSWORD         password for server authentication
      --ca-cert-dir=DIRECTORY        CA certificates directory
      --ca-cert-file=FILE            CA certificates file
      --no-ssl-check                 do not check server SSL certificate
                                       (false)
      --timeout=TIME                 connection timeout, in seconds (180)

    Web interface options:
      --no-httpd                     disable embedded web server (false)
      --httpd-ip=IP                  network interface to listen to (all)
      --httpd-port=PORT              network port to listen to (62354)
      --httpd-trust=IP               trust requests without authentication
                                       token (false)

    Logging options:
      --logger=BACKEND               logger backend (stderr)
      --logfile=FILE                 log file
      --logfile-maxsize=SIZE         maximum size of the log file in MB (0)
      --logfacility=FACILITY         syslog facility (LOG_USER)
      --color                        use color in the console (false)

    Configuration options:
      --config=BACKEND               configuration backend
      --conf-file=FILE               configuration file

    Execution mode options:
      -w --wait=LIMIT                maximum delay before execution,
                                       in seconds
      -d --daemon                    run the agent as a daemon (false)
      --no-fork                      don't fork in background (false)
      -t --tag=TAG                   add given tag to inventory results
      --debug                        debug mode (false)
      --setup                        print the agent setup directories
                                       and exit
      --version                      print the version and exit

# DESCRIPTION

The `fusioninventory-agent` agent is a generic multi-platform agent. It can
perform a large array of management tasks, such as local inventory, software
deployment or network discovery. It can be used either standalone, or in
combination with a compatible server (OCS, GLPI, OTRS) acting as a centralized
control point.

# OPTIONS

Most of the options are available in a _short_ form and a _long_ form.  For
example, the two lines below are all equivalent:

    % fusioninventory-agent -s localhost
    % fusioninventory-agent --server localhost

## Target definition options

- **-s**, **--server**=_URI_

    Send the results of tasks execution to given server.

    If _URI_ doesn't start with http:// or https://, the agent assume the
    parameter is a hostname and rewrite it as:

        % --server=http://servername/ocsinventory

    In general, OCS Inventory server URL have this format:

        http://servername/ocsinventory

    and FusionInventory for GLPI this one:

        http://servername/glpi/plugins/fusioninventory/front/plugin_fusioninventory.communication.php

    Multiple values can be specified, using comma as a separator.

- **-l**, **--local**=_PATH_

    Write the results of tasks execution locally.

    Exact behaviour according to given path:

    - if _PATH_ is a directory, a file will be created therein
    - if _PATH_ is a file, it will be used directly
    - if _PATH_ is '-', STDOUT will be used

    Multiple values can be specified, using comma as a separator.

## Target scheduling options

- **--delaytime**=_LIMIT_

    Set an initial delay before the first target, whose value is computed randomly
    between LIMIT / 2 and LIMIT seconds. This setting is ignored for server targets
    after the initial contact, in favor of server-specified parameter
    (PROLOG\_FREQ).

- **--lazy**

    Do not contact the target before next scheduled time.

    This option is only available when the agent is not run as a server.

## Task selection options

- **--list-tasks**

    List available tasks and exit

- **--no-task**=_TASK_

    Do not run given task.

    Multiple values can be specified, using comma as a separator. See option
    _--list-tasks_ for the list of available tasks.

## Inventory task specific options

- **--no-category**=_CATEGORY_

    Do not list given category items in inventory.

    Multiple values can be specified, using comma as a separator. The available
    categories are:

    - printer
    - software
    - environment
    - process
    - user

- **--scan-homedirs**

    Allow the agent to scan home directories for virtual machines.

- **--scan-profiles**

    Allow the agent to scan user profiles for softwares.

- **--html**

    Save the inventory as HTML.

    This is only used for local inventories.

- **-f**, **--force**

    Send an inventory to the server, even if this last one doesn't ask for it.

- **--backend-collect-timeout**=_TIME_

    Timeout for inventory modules execution.

- **--additional-content**=_FILE_

    Additional inventory content file.

    This file should be an XML file, using same syntax as the one produced by the
    agent.

## Package deployment task specific options

- **--no-p2p**

    Do not use peer to peer to download files.

## Server target specific options

- **-P**, **--proxy**=_PROXY_

    Use _PROXY_ as HTTP proxy.

    By default, the agent uses HTTP\_PROXY environment variable.

- **-u** _USER_, **--user**=_USER_

    Use _USER_ for server authentication.

- **-p**, **--password**=_PASSWORD_

    Use _PASSWORD_ for server authentication.

- **--ca-cert-dir**=_DIRECTORY_

    CA certificates directory.

- **--ca-cert-file**=_FILE_

    CA certificates file.

- **--no-ssl-check**

    Do not check server SSL certificate.

- **--timeout**=_TIME_

    Timeout for server connections.

## Web interface options

- **--no-httpd**

    Disable the embedded web server.

- **--httpd-ip**=_IP_

    The network interface to use for the embedded web server (all).

- **--httpd-port**=_PORT_

    The network port to use for the embedded web server (62354).

- **--httpd-trust**=_IP_

    Trust requests from given addresses without authentication token (false).

    For example: "192.168.0.0/24", "192.168.168.0.5" or an IP range like
    "20.34.101.207 - 201.3.9.99". Hostnames are also accepted. See [Net::IP](https://metacpan.org/pod/Net::IP)
    documentation to get more example.

    Multiple values can be specified, using comma as a separator.

## Logging options

- **--logger**=_BACKEND_

    Logger backend to use.

    Multiple values can be specified, using comma as a separator. The available
    backends are:

    - stderr: log messages directly in the console.
    - file: log messages in a file.
    - syslog: log messages through the local syslog server.

    Multiple values can be specified, using comma as a separator.

- **--logfile**=_FILE_

    Log message in _FILE_ (implies File logger backend).

- **--logfile-maxsize**=_SIZE_

    Max logfile size in MB, default is unlimited. When the max size is reached, the
    file is truncated. This is only useful if there is no log rotation mechanism on
    the system.

- **--logfacility**=_FACILITY_

    Syslog facility to use (default LOG\_USER).

- **--color**

    Display color on the terminal, when the Stderr backend is used.

    This options is ignored on Windows.

## Configuration options

- **--config**=_BACKEND_

    Configuration backend to use.

    The available backends are:

    - file: read configuration from a file (default anywhere else as Windows).
    - registry: read configuration from the registry (default on Windows).
    - none: don't read any configuration.

- **--conf-file**=_FILE_

    Use _FILE_ as configuration file (implies file configuration backend).

## Execution mode options

- **-w** _LIMIT_, **--wait**=_LIMIT_

    Wait a random delay whose value is computed randomly between 0 and LIMIT
    seconds, before execution. This is useful when execution is triggered from some
    kind of system scheduling on multiple clients, to spread the server load.

- **-d**, **--daemon**

    Run the agent as a daemon.

- **--no-fork**

    Don't fork in background.

    This is only useful when running as a daemon.

- **--tag**=_TAG_

    Add the given tag to every inventory results.

- **--debug**

    Turn the debug mode on. You can use the parameter up to 3 times in a row
    to increase the verbosity (e.g: **--debug --debug**).

    Level 3 turns on the debug mode of some external libraries like Net::SSLeay.
    These messages will only be be printed on STDERR.

- **--setup**

    Print the agent setup directories and exit.

- **--version**

    Print the version and exit.
