---
layout: page
title: Installation on Debian and Ubuntu
redirect_from:
 - /wordpress/debian/
---

***
METHOD 1:

# Using FusionInventory Debian (and Ubuntu) packages

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
METHOD 2:

{% include info.html param="
<table>
<thead>
    <tr class='header'>
        <th>Tested date</th>
        <th>Agent version</th>
        <th>Debian version</th>
    </tr>
</thead>
<tbody>
    <tr>
        <td>2017/05/22</td>
        <td>2.3.19</td>
        <td>Debian 8 minimal</td>
    </tr>
    <tr>
        <td>2017/05/22</td>
        <td>2.3.19</td>
        <td>Debian 9 minimal (stretch/testing)</td>
    </tr>
    <tr>
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

    wget https://github.com/fusioninventory/fusioninventory-agent/releases/download/2.3.19/FusionInventory-Agent-2.3.19.tar.gz
    tar xvzf FusionInventory-Agent-2.3.19.tar.gz
    cd FusionInventory-Agent-2.3.19

## Build and install

### on Debian Stable (tested on Debian 8.8)

    perl Makefile.PL
    make
    make install

### on Debian Testing (tested on Debian 9.0)

    perl -I. Makefile.PL
    make
    make install

## Fix installation:

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

***
