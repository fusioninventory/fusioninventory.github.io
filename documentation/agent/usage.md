---
layout: page
title: Agent usage
---

# Execution modes

They are multiple ways to run fusioninventory agent:

* _managed mode_: the agent runs continuously in the background, wakes up
  periodically to execute the tasks required by the server, and may eventually
  executes out of schedule on server request.

* _half-managed mode_: the agent executes immediatly the tasks required by the
  server, and stops. This can be automated through an external scheduling
  mechanism (cron, task scheduler).

* _autonomous mode_: the agent executes immediatly a specific task, and stops.
  The results are then sent to the server, or kept for delayed upload. This can
  be automated through an external scheduling mechanism (cron, task scheduler).

## Managed mode

This mode requires the agent to be run as a server process (daemon under Unix,
service under Windows), meaning the perl interpreter is permanently loaded in
memory, which may not be convenient for small systems. Additionaly, a network
port is opened on the system with a process running with full system privileges
attached to it.

The agent wake-up schedule is controlled from GLPI server, using PROLOG_FREQ
setting. More precisely, the agent wakes up at a random time between 50% and
100% of this value, ie for 24H, it will executes sometimes between 12 and 24H.
Additionaly, the server may also initiate additional out-of-schedule executions
by sending HTTP requests to the agent.

Example:

    $> fusioninventory-agent --server http://my.server/plugins/fusioninventory/ --daemon

## Half-managed mode

This mode requires an external scheduling process to run the agent (cron, task
scheduler, trainee, ...) periodically. There is no impact on memory and
security between agent executions. The server still retains control over what
the agent executes exactly, however, as the agent will ask it for every
available module.

Example:

    $> fusioninventory-agent --server http://my.server/plugins/fusioninventory/

## Autonomous mode

This mode requires an external scheduling process to run the agent (cron, task
scheduler, trainee, ...) periodically. There is no impact on memory and
security between agent executions. What the agent executes is controlled
locally, and the server just receive execution results. As sending those
results may be done separatly, this mode may also be used offline.

Defered upload example:

    $> fusioninventory-inventory > inventory.xml
    $> fusioninventory-injector --file inventory.xml --url http://my.server/plugins/fusioninventory/

Immediate upload example:

    $> fusioninventory-inventory | curl --data @- http://my.server/plugins/fusioninventory/

# Offline usage

## Agent execution

Most tasks handled by the agent can be executed directly without server, when
it is not available, or for easier troubleshooting.

Each task has a dedicated executable for this purpose. For instance, to execute
an inventory:

    $> fusioninventory-inventory

See [man pages](man/) for details.

## Result import

### FusionInventory for GLPI Interface

Go in *Plugins > FusionInventory > Import agent XML* Menu and upload the XML
file.

### fusioninventory-injector

The agent has a dedicated executable for result injection:

    $> fusioninventory-injector --file inventory.xml --url http://my.server/plugins/fusioninventory/

See [fusioninventory-injector man page](man/fusioninventory-injector.html) for
details.

### curl

You can also use curl to push an inventory. This can be useful if your perl
installation has no SSL support, for instance:

    curl --header "Content-Type: Application/x-compress" --cacert your-ca.pem -u username:password --data @/tmp/lazer.local-2011-10-04-12-21-23.ocs https://my.server/plugins/fusioninventory/

With no SSL check and no authentification :

    curl --header "Content-Type: Application/x-compress" -k --data @/tmp/monposte.local-2012-10-04-12-21-23.ocs https://my.server/plugins/fusioninventory/


# Multiple execution targets

Using multiple execution targets (servers or local directory) doesn't mean
"execute once, upload the result multiple times", but "tries to execute every
available task once for each given target". As a result, there is no garanty
than running an inventory for two different servers, or for one server and for
local directory, will produce the same exact result. They are even a known bug
on Windows, where the second inventory lacks some specific pieces of
information.

The only reliable way currently to produce a single inventory, and transmit the
result to multiple targets, is to execute the agent in autonomous mode once,
and then upload the results multiple time:

    $> fusioninventory-inventory > inventory.xml
    $> fusioninventory-injector --file inventory.xml --url http://my.first.server/plugins/fusioninventory/
    $> fusioninventory-injector --file inventory.xml --url http://my.second.server/plugins/fusioninventory/
