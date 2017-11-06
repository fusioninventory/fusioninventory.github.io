---
layout: page
title: Installation on Debian and Ubuntu
redirect_from:
 - /wordpress/debian/
---

***
METHOD 1:

# Manually install latest maintainers packages

Latest FusionInventory Agent Debian and Ubuntu compatible packages are provided by maintainers.

{% include info.html param="
<table>
<thead>
    <tr class='header'>
        <th>Tested Debian version</th>
        <th>Agent version</th>
        <th>&nbsp;</th>
        <th>Tested Ubuntu version</th>
        <th>Agent version</th>
    </tr>
</thead>
<tbody>
    <tr>
        <td>Stretch - Debian 9 - Stable</td>
        <td>2.3.21-2</td>
        <td>&nbsp;</td>
        <td>Ubuntu 16.04.3 LTS (xenial)</td>
        <td>2.3.21-2</td>
    </tr>
    <tr>
        <td>Jessie - Debian 8 - OldStable</td>
        <td>2.3.21-2</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</tbody>
</table>" %}

## Install dependencies as root :

For fusioninventory-agent, you'll need to install these dependencies:

    apt -y install dmidecode hwdata ucf hdparm
    apt -y install perl libuniversal-require-perl libwww-perl libparse-edid-perl
    apt -y install libproc-daemon-perl  libproc-pid-file-perl libfile-which-perl
    apt -y install libxml-treepp-perl libyaml-perl libnet-cups-perl libnet-ip-perl
    apt -y install libdigest-sha-perl libsocket-getaddrinfo-perl libtext-template-perl

For fusioninventory-agent-task-network, you'll need to install these other dependencies:

    apt -y install nmap libnet-snmp-perl libcrypt-des-perl libnet-nbname-perl

For fusioninventory-agent-task-deploy, you'll need to install these other dependencies:

    apt -y install libfile-copy-recursive-perl libparallel-forkmanager-perl

## Download desired packages from [Deb packages](http://debian.fusioninventory.org/downloads) :

Packages|Included tasks
--------|--------------
[fusioninventory-agent_2.3.21-2_all.deb](http://debian.fusioninventory.org/downloads/fusioninventory-agent_2.3.21-2_all.deb)|Inventory - WakeOnLan - Collect
[fusioninventory-agent-task-network_2.3.21-2_all.deb](http://debian.fusioninventory.org/downloads/fusioninventory-agent-task-network_2.3.21-2_all.deb)|NetDiscovery - NetInventory
[fusioninventory-agent-task-deploy_2.3.21-2_all.deb](http://debian.fusioninventory.org/downloads/fusioninventory-agent-task-deploy_2.3.21-2_all.deb)|Deploy
[fusioninventory-agent-task-esx_2.3.21-2_all.deb](http://debian.fusioninventory.org/downloads/fusioninventory-agent-task-esx_2.3.21-2_all.deb)|ESX

## Install desired packages as root :

Only fusioninventory-agent deb package is mandatory

    dpkg -i fusioninventory-agent_2.3.21-2_all.deb
    dpkg -i fusioninventory-agent-task-network_2.3.21-2_all.deb
    dpkg -i fusioninventory-agent-task-deploy_2.3.21-2_all.deb
    dpkg -i fusioninventory-agent-task-esx_2.3.21-2_all.deb

## Configure the agent :

Edit `/etc/fusioninventory/agent.cfg` setting at least one target

## Start the agent :

    systemctl restart fusioninventory-agent

## On configuration change, reload the agent :

    systemctl reload fusioninventory-agent

## To start an immediate run :

You can send USR1 signal to the process with the following command to start a run immediatly :

    pkill -USR1 -f -P 1 fusioninventory-agent

***
METHOD 2:

# Using FusionInventory Debian (and Ubuntu) packages:

These packages are based on deprecated source versions.

{% include info.html param="
<table>
<thead>
    <tr class='header'>
        <th>Debian version</th>
        <th>Agent version</th>
        <th>&nbsp;</th>
        <th>Ubuntu version</th>
        <th>Agent version</th>
    </tr>
</thead>
<tbody>
    <tr>
        <td>Wheezy - Debian 7 - OldStable</td>
        <td>2.2.3-8</td>
        <td>&nbsp;</td>
        <td>Ubuntu 16.04.2 LTS (xenial)</td>
        <td>2.3.16-1</td>
    </tr>
    <tr>
        <td>Jessie - Debian 8 - Stable</td>
        <td>2.3.10.1-1</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td>Sid - Unstable</td>
        <td>2.3.16-1</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</tbody>
</table>" %}


## Install Agent 2.3.10 on Debian 7 using debian-backports repository

    echo "deb http://httpredir.debian.org/debian wheezy-backports main" >> /etc/apt/sources.list
    apt-get update
    apt-get install -t wheezy-backports fusioninventory-agent

## Install Agent 2.3.16 from old FusionInventory repository

{% include info.html param="Tested on Debian 7 - Wheezy, Debian 8 - Jessie, Debian 9 - Stretch/Testing<br/>
Debian packaging for recent version is under developement" %}

The FusionInventory project maintained a debian package until 2.3.16 version, in a extra repository.

First, you need to import the repository GnuPG key, if apt-key is available you can use these command as root:

    apt-key adv --keyserver keyserver.ubuntu.com --recv 049ED9B94765572E

Otherwise this one will work:

    wget -O - http://debian.fusioninventory.org/debian/archive.key | apt-key add -

Now you can install the agent.

    apt-get install lsb-release
    echo "deb http://debian.fusioninventory.org/debian/ `lsb_release -cs` main" >> /etc/apt/sources.list
    apt-get update
    apt-get install fusioninventory-agent

Note: On Debian Testing, you need to fix the `/etc/apt/sources.list` update so you use jessie repo. You can better replace the second line from the previous commands with:

    echo "deb http://debian.fusioninventory.org/debian/ jessie main" >> /etc/apt/sources.list

The content of the [dists](http://debian.fusioninventory.org/debian/dists/) pages can help you do identify support operating system.

## Install the additional packages

Network inventory tasks:

    apt-get install fusioninventory-agent-task-network

ESX inventory task:

    apt-get install fusioninventory-agent-task-esx

Deploy task:

    apt-get install fusioninventory-agent-task-deploy

***
METHOD 3:

{% include info.html param="
<table>
<thead>
    <tr class='header'>
        <th>Tested date</th>
        <th>Agent version</th>
        <th>Debian version</th>
        <th>Tested date</th>
        <th>Agent version</th>
        <th>Debian version</th>
    </tr>
</thead>
<tbody>
    <tr>
        <td>2017/06/07</td>
        <td>2.3.20</td>
        <td>Debian 8 minimal</td>
        <td>2017/05/22</td>
        <td>2.3.19</td>
        <td>Debian 8 minimal</td>
    </tr>
    <tr>
        <td>2017/06/07</td>
        <td>2.3.20</td>
        <td>Debian 9 minimal (stretch/testing)</td>
        <td>2017/05/22</td>
        <td>2.3.19</td>
        <td>Debian 9 minimal (stretch/testing)</td>
    </tr>
    <tr>
        <td>2017/06/07</td>
        <td>2.3.20</td>
        <td>Ubuntu 16.04.2 LTS (xenial)</td>
        <td>2017/05/22</td>
        <td>2.3.18</td>
        <td>Debian 9 minimal (stretch/testing)</td>
    </tr>
</tbody>
</table>" %}

# Install from source

## Install dependencies :   

    apt-get -y install wget dmidecode nmap make hwdata
    apt-get -y install perl perl-modules libmodule-build-perl libmodule-install-perl
    apt-get -y install libfile-which-perl libfile-copy-recursive-perl libuniversal-require-perl
    apt-get -y install libtest-http-server-simple-perl libhttp-server-simple-authen-perl libhttp-proxy-perl
    apt-get -y install libio-capture-perl libipc-run-perl libnet-snmp-perl libnet-telnet-cisco-perl
    apt-get -y install libtest-compile-perl libtest-deep-perl libtest-exception-perl
    apt-get -y install libtest-mockmodule-perl libtest-mockobject-perl libtest-nowarnings-perl
    apt-get -y install libxml-treepp-perl libproc-daemon-perl libproc-pid-file-perl
    apt-get -y install libparallel-forkmanager-perl libnet-ip-perl libparse-edid-perl
    apt-get -y install libdigest-sha-perl libtext-template-perl libsocket-getaddrinfo-perl

## Download

    wget https://github.com/fusioninventory/fusioninventory-agent/releases/download/2.3.20/FusionInventory-Agent-2.3.20.tar.gz
    tar xvzf FusionInventory-Agent-2.3.20.tar.gz
    cd FusionInventory-Agent-2.3.20

## Build and install

### on Debian Stable (tested on Debian 8.8) and Debian Testing for agent since 2.3.20

    perl Makefile.PL
    make
    make install

### on Debian Testing for agent until 2.3.19 (tested on Debian 9.0)

    perl -I. Makefile.PL
    make
    make install

## Fix installation:

### For Fusioninventory-Agent v2.3.20
No fix needed, agent runs out of the box.

### For Fusioninventory-Agent v2.3.19

You also need to edit installed `/usr/local/share/fusioninventory/lib/setup.pm` so it contains:

```
package setup;

use strict;
use warnings;
use base qw(Exporter);

our @EXPORT = ('%setup');

our %setup = (
    confdir => '/usr/local/etc/fusioninventory',
    datadir => '/usr/local/share/fusioninventory',
    libdir  => '/usr/local/share/fusioninventory/lib',
    vardir  => '/usr/local/var/fusioninventory',
);

1;
```

### For Fusioninventory-Agent v2.3.18

Install Data::Structure::Util:

    apt-get install libdata-structure-util-perl

## Configure
- edit `/usr/local/etc/fusioninventory/agent.cfg`

## Install agent as service

### Create systemd service
Edit `/etc/systemd/system/fusioninventory-agent.service` file setting this content:

    [Unit]
    Description=FusionInventory agent
    After=syslog.target network.target
     
    [Service]
    ExecStart=/usr/local/bin/fusioninventory-agent --daemon --no-fork
     
    [Install]
    WantedBy=multi-user.target

_P.S.: You can also fix and copy `contrib/unix/fusioninventory-agent.service` from source_

### Enable the service
    systemctl enable fusioninventory-agent

### Start the service
    systemctl start fusioninventory-agent

_P.S.: The service will not start if no target is setup in `/usr/local/etc/fusioninventory/agent.cfg`_

***
