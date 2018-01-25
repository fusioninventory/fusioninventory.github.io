---
layout: page
title: Installation on RHEL, CentOS and other RHEL clones
---

# Agent 2.4.x

Due to several configuration changes between 2.3 and 2.4 series, RPM for 2.4 releases of the agent are not available from EPEL repository; you'll have to use our  [COPR repository](https://copr.fedorainfracloud.org/coprs/trasher/fusioninventory-agent).

To get it installed on EL7, run:

    $ sudo dnf copr enable trasher/fusioninventory-agent

For EL-6, use yum:

    $ sudo yum copr enable trasher/fusioninventory-agent

# RHEL/Centos 7.x

The FusionInventory team maintains RPM packages in the [EPEL repository](https://fedoraproject.org/wiki/EPEL).
Once the repository is installed, just run:

    # yum install fusioninventory-agent fusioninventory-agent-task-inventory

If you plan to use agent in daemon mode (default), don't forget to start the service and enable it:

    # systemctl start fusioninventory-agent
    # systemctl enable fusioninventory-agent

# RHEL/Centos 6.x

The FusionInventory team maintains RPM packages in the [EPEL repository](https://fedoraproject.org/wiki/EPEL).
Once the repository is installed, just run:

    # yum install fusioninventory-agent fusioninventory-agent-task-inventory

If you plan to use agent in daemon mode (default), don't forget to start the service and enable it:

    # service fusioninventory-agent start
    # chkconfig fusioninventory-agent on

# RHEL/Centos 5.x

An old *fusioninventory-agent* package was provided by FusionInventory
team. You can retrieve it from [openSUSE Build
Service](https://build.opensuse.org/project/show?project=home%3Aguillomovitch).

Beware, you'all also need the *EPEL* repository. See [EPEL wiki](https://fedoraproject.org/wiki/EPEL) for details.

Agent installation:

    # yum install fusioninventory-agent fusioninventory-agent-task-inventory
