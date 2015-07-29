---
layout: page
title: FusionInventory agent installation on MacOS X
---

## FusionInventory Agent installation on MacOS X

## Get the Agent

Build script for recent version (2.3.x) [made by Darkomen78](https://twitter.com/Darkomen78) is available here : [FusionInventory OS X flavor](https://github.com/Darkomen78/Fusioninventory/)

First, get the agent mpkg archive [Intel](http://prebuilt.fusioninventory.org/stable/macosx-intel/) or [PowerPC](http://prebuilt.fusioninventory.org/stable/macosx-ppc/).

You must download the **.pkg.tar.gz** package.

## Extract Agent

Once the FusionInventory-Agent-XXX.pkg.tar.gz archive is downloaded, you must extract it this way.

![](/documentation/documentation/agent/installation/macosx/FusionInventoryAgent-1.png)

![](/documentation/documentation/agent/installation/macosx/FusionInventoryAgent-2.png)

![](/documentation/documentation/agent/installation/macosx/FusionInventoryAgent-3.png)

Do a right click on it to extract its content. You should now have two different file.
Agent configuration

![](/documentation/documentation/agent/installation/macosx/FusionInventoryAgent-4.png)

## Configuration

To configure the agent, do a right clic on the FusionInventory-Agent.pkg package and select “Show the package content”".

Go in the **Resources** directory and modify the **agent.cfg** file according to you needs:

* add the `server=` line
* you can also uncomment the `logfile = /var/log/fusioninventory.log` to get some log files
* Increase `backend-collect-timeout` value from `30` to `180` because the command used to get some hardware information can be very long

## Agent Installation

You're done. To launch the installer, just do a double clic on the FusionInventory-Agent.pkg and follow the different steps.

The installer will ask for you login and password during the installation process.

![](/documentation/documentation/agent/installation/macosx/FusionInventoryAgent-5.png)

Once the agent is installed, you can configure it be editing the following file '/opt/fusioninventory-agent/agent.cfg'.
You will have to restart the service after (see below);

## Command line installation

Retrieve the .pkg.tar.gz archive and do:

    $ tar xfz fusioninventory-agent_macosx-intel_XXX.pkg.tar.gz
    $ sudo installer -pkg FusionInventory-Agent.pkg -target / -lang en
    installer: Package name is FusionInventory-Agent
    installer: Upgrading at base path /
    installer: The upgrade was successful.

You can either reboot or restart the service, see below.

## Manage the service

To see if the service is running:

    $ sudo launchctl list|grep fusion
    266     -       org.fusioninventory.agent

The process is running with PID 266. If the process is stopped, you will get a line like this
one:

    $sudo launchctl list|grep fusion
    -       1       org.fusioninventory.agent

To stop the service:

    $ sudo launchctl stop org.fusioninventory.agent

In some rare cases, this is not enough to stop the agent. You have to kill the process by yourself.

    $ sudo killall perl

To start the service:

    $ sudo launchctl start org.fusioninventory.agent

## Force an inventory

To force an inventory:

    $ sudo /opt/fusioninventory-agent/fusioninventory-agent
