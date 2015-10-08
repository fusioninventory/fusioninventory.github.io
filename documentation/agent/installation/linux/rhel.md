---
layout: page
title: Installation on RHEL, CentOS and other RHEL clones
---

# Installation of the Agent on RHEL, Centos and other RHEL clones

## RHEL/Centos >= 5.x

An up-to-date *fusioninventory-agent* package is maintained by FusionInventory
team. You can retrieve it from [openSUSE Build
Service](https://build.opensuse.org/project/show?project=home%3Aguillomovitch).

Beware, you'all also need the *EPEL* repository. See [EPEL wiki](https://fedoraproject.org/wiki/EPEL) for details.

Agent installation:

    # yum install fusioninventory-agent fusioninventory-agent-task-inventory

## RHEL/Centos 4.x

An old *fusioninventory-agent* package is available in the *remi* third party repository for EL >= 4

See [Remi repository configuration](http://blog.famillecollet.com/pages/Config-en) for details.

Agent installation:

    # yum install fusioninventory-agent

Only *fusioninventory-agent* is mandatory, other packages are additional tasks.
