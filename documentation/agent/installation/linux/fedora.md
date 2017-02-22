---
layout: page
title: Installation on Fedora
---

# Installation of the Agent on Fedora

## Maintained Fedora version

*fusioninventory-agent* is part of the *official repository* since Fedora 14

## Agent installation

Agent installation:

    $ sudo dnf install fusioninventory-agent

Only *fusioninventory-agent* is mandatory, other packages are additional tasks.

You can also install the *yum plugin* which will request a inventory after each yum operation

    $ sudo dnf install fusioninventory-agent-yum-plugin

If the latest release is not available in stable repositories, you may check on testing:

    $ sudo dnf --enablerepo=updates-testing install fusioninventory-agent
