---
layout: page
title: Installation on RHEL, CentOS and other RHEL clones
---

# Installation of the Agent on RHEL, Centos and other RHEL clones

## RHEL/Centos 7.x

The FusionInventory team maintains RPM packages in the [EPEL repository](https://fedoraproject.org/wiki/EPEL).
Once the repository is installed, just run:

    # yum install fusioninventory-agent fusioninventory-agent-task-inventory

If you plan to use agent in daemon mode (default), don't forget to start the service and enable it:

    # systemctl start fusioninventory-agent
    # systemctl enable fusioninventory-agent

## RHEL/Centos 6.x

The FusionInventory team maintains RPM packages in the [EPEL repository](https://fedoraproject.org/wiki/EPEL).
Once the repository is installed, just run:

    # yum install fusioninventory-agent fusioninventory-agent-task-inventory

If you plan to use agent in daemon mode (default), don't forget to start the service and enable it:

    # service fusioninventory-agent start
    # chkconfig fusioninventory-agent on

## RHEL/Centos 5.x

An up-to-date *fusioninventory-agent* package is maintained by FusionInventory
team. You can retrieve it from [openSUSE Build
Service](https://build.opensuse.org/project/show?project=home%3Aguillomovitch).

Beware, you'all also need the *EPEL* repository. See [EPEL wiki](https://fedoraproject.org/wiki/EPEL) for details.

Agent installation:

    # yum install fusioninventory-agent fusioninventory-agent-task-inventory

## RHEL/Centos 4.x

**No more package update - Upgrade strongly recommended**

An old *fusioninventory-agent* package is available in the *remi* third party repository for EL >= 4

See [Remi repository configuration](http://blog.famillecollet.com/pages/Config-en) for details.

Agent installation:

    # yum install fusioninventory-agent

Only *fusioninventory-agent* is mandatory, other packages are additional tasks.
