---
layout: page
title: Agent usage
---

# Execution modes

"How to run the agent" is not limited to a choice between running it either as
a cron task (a scheduled task under Windows) or as a daemon (a service under
Windows), because this only makes a difference in the control of the execution
schedule, ie when the agent runs: in both case, the server controls the
execution plan, ie what the agent does. In order to control this execution plan
on agent side, it is also possible to use a different set of executables. The
different possibilities, designed as _execution modes_, are the following:

* _managed mode_: the agent runs continuously in the background, wakes up
  periodically to execute the tasks required by the server, and may eventually
  executes out of schedule on server request.

* _half-managed mode_: the agent only runs when launched by a local mechanism
  (usually an automated scheduling system, such as cron or task scheduler),
  contacts the servers to ask for a tasks lists, executes them immediatly,
  and stops.

* _autonomous mode_: the agent only runs when launched by a local mechanism, as
  in previous mode, executes a fixed list of tasks, sends the results to the
  server, and stops.

This table summarize who control what in the different modes:

| Execution schedule  | Execution plan      | Execution mode    |
| --------------------|---------------------|-------------------|
| server-side control | server-side control | managed mode      |
| agent-side control  | server-side control | half-managed mode |
| agent-side control  | agent-side control  | autonomous mode   |

The correct mode to use mainly depends on the role assigned to your GLPI server:
is it a trusted management platform, or just a passive information database ?
In the first case, you'd rather need server-side control, whereas on the second
case, you'd rather need agent-side control. But it also depends on your
technical expertise: if everything so far sounds like chinese, no need to go
further, just select managed mode. Otherwise, the following presents each mode
with additional details.

## Managed mode

This mode requires the agent to be run as a server process (daemon under Unix,
service under Windows). The agent wake-up schedule is controlled from GLPI
server, using PROLOG_FREQ setting. More precisely, the agent wakes up at a
random time between 50% and 100% of this value, ie for 24H, it will executes
sometimes between 12 and 24H. Additionaly, the server may also initiate
additional out-of-schedule executions by sending HTTP requests to the agent.

Example:

    $> fusioninventory-agent --server http://my.server/plugins/fusioninventory/ --daemon

That's the easiest mode to set up, offering (almost) complete control from a
centralized point, fully compatible with all available agent features, and the
most flexible in term of usage.

On the downside, this mode involves having a perl interpreter loaded in memory
permanently, which is insignificant on any modern desktop, but may eventually
be a concern in specific memory-constraints scenario, such as IoT or minimal
virtual machines. It also involves having a privilegied process listening on a
network port, unless run with [**no-httpd** configuration directive](man/agent.cfg).

And the more important: who controls the GLPI servers also controls all assets
where an agent is installed, with ability to execute code at anytime, which may
involves running arbitrary command with full privileges if related tasks
(currently: deploy), are installed AND enabled on agent side. That's the exact
purpose of this mode: everything the GLPI server wants, when the GLPI server wants.

## Half-managed mode

This mode requires a local triggering mechanism to launch the agent. It may be
a scheduling system (cron, task scheduler) to run it automatically and
regularily, but it may as well be a user session start script, for instance.

Example:

    $> fusioninventory-agent --server http://my.server/plugins/fusioninventory/

This mode doesn't consume memory permanently, only during agent execution.
However, it is also less flexible, as scheduling can't get changed without
reconfiguration. But the server still retains control over execution plan, as
the agent asks for a tasks list when run.

This mode is a compromise between other modes, with the advantages of the
autonomous mode in term of resources usage, and the advantages of the managed
mode in term of simplicity and flexibility. Its purpose can get summarized as:
everything the GLPI server wants, but only when the agent wants.

## Autonomous mode

This mode requires a local triggering mechanism to launch the agent, as the
half-managed mode. It also have the same benefits for memory usage and reduced
security concerns. However, the agent only executes a fixed list of tasks, and
the server only receive execution results, without any control. As sending
those results may be done separatly, this mode may also be used offline. This
is achieved by using specific task-dedicated launchers, instead of the
fusioninventory-agent one.

Defered upload example:

    $> fusioninventory-inventory > inventory.xml
    $> fusioninventory-injector --file inventory.xml --url http://my.server/plugins/fusioninventory/

Immediate upload example:

    $> fusioninventory-inventory | curl --data @- http://my.server/plugins/fusioninventory/

This mode is the most complex to set-up, as you have to script the execution of
multiple programs, this is not just a matter of configuration. It is also
restricted to a limited set of agent tasks, for which a dedicated launcher
exists (currently: local inventory, network discovery, network inventory).
However, you have a full local control of agent execution.

If you don't trust the GLPI server for any reason (for instance,
because it is run by another organization), of if your use case is just to
report an inventory regularily, this mode is perfectly suited. It can get
summarized as: only what the agent wants, only when the agent wants.

# Offline usage

## Agent execution

Most tasks handled by the agent can be executed directly without server, when
it is not available, or for easier troubleshooting.

Most tasks have a dedicated launcher for this purpose. For instance, to execute
a local inventory:

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

    $> curl --header "Content-Type: Application/x-compress" --cacert your-ca.pem -u username:password --data @/tmp/lazer.local-2011-10-04-12-21-23.ocs https://my.server/plugins/fusioninventory/

With no SSL check and no authentification :

    $> curl --header "Content-Type: Application/x-compress" -k --data @/tmp/monposte.local-2012-10-04-12-21-23.ocs https://my.server/plugins/fusioninventory/

# Usage caution

## Concurrent execution

When using managed mode, the server automatically distribute agent executions
over time, using random scheduling. However, with other modes, the server
doesn't have any control of agent execution schedule, and if they all tries to
communicate with it simultaneously, for instance because of a cron task
executed on all hosts at the same time, the server may get flooded, and unable
to manage the load.

In order to avoid the issue, either distribute automated tasks execution over
time, or use `--wait` command-line option for fusioninventory-agent executable,
introducing a random delay before effective execution. For instance:

    # execute agent daily at random time between 0h00 and 0h30
    0 0 * * * /usr/bin/fusioninventory-agent --wait=1800

## Multiple execution targets

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
