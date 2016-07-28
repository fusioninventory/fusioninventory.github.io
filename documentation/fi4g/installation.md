---
layout: page
title: FusionInventory for GLPI installation
---

# FusionInventory for GLPI installation

## Get the archive for your GLPI

First, download archive: 

* Recent versions (>= 0.90) : <https://github.com/fusioninventory/fusioninventory-for-glpi/releases>
* older versions <http://forge.fusioninventory.org/projects/fusioninventory-for-glpi/files>

FusionInventory for GLPI tarball name follow this convention:

* fusioninventory-for-glpi_
* GLPI major release (0.80, 0.83, 0.84, 0.85, etc)
* a '+' symbol
* FusionInventory release

## Update

You *must* *FIRST* disable the FusionInventory plugin via GLPI web interface and then move the `plugins/fusioninventory` folder out of the `plugins/` folder. This ensures any deprecated files will be properly removed.

{% include warning.html param="Don't click on *UNINSTALL* link. If you do this, you will LOOSE all FusionInventory data." %}

## Installation

{% include warning.html param="If a previous FusionInventory version is already installed, you must read the Update section." %}

It's also always a good idea to do a backup of your database.

* Uncompress the archive into the plugin folder of GLPI. File list seems to be like :

    - _folder_ glpi
      - _folder_ plugins
         - _folder fusioninventory
            - _file_ index.php
            - _file_ hook.php
            - _folder_ front
            - _folder_ inc
            - …

* Connect to _GLPI_
* Go in the menu _Setup_ > _Plugins_
* Install the plugin FusionInventory
* Activate FusionInventory 

These operations will create or upgrade the database and set the correct rights on the plugin.
Do the same for all fus* plugins

## Initial configuration

Once the plugin is activated, you will have to go on the _Administration > Entities > Root entity > tab FusionInventory_
page to set the *Service URL*. You need to enter the location of your GLPI server, for example `http://glpi.mydomain/`.

![](images/service_url.png)

Once this is done, you can [install]({{ site.baseurl }}/documentation/agent/installation/) and [configure]({{ site.baseurl }}/documentation/agent/configuration.html).  your first agent.

### Options Detail

SSL-only for agent: send an error response to an agent when this agent communicates to the server without SSL.

## Security

{% include warning.html param="We strongly recommend to activate SSL on the server side to protect human user communications, and eventually agent communications too. See  for details." %}

See [here]({{ site.baseurl }}/documentation/security.html) for details.

