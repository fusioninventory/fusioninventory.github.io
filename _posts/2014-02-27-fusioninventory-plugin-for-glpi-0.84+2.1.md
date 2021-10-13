---
layout: single
title: FusionInventory for GLPI 0.84+2.1
---

FusionInventory plugin for GLPI 0.84+2.1
========================================

The Fusioninventory plugin for GLPI 0.84+2.1 has been released and it
comes with the following changes:

-   Massive actions added on "ignored devices" list.
-   Static groups have been reactivated in code.
-   Use blacklist for monitors attached to computers.
-   SNMP inventory without XML models.
-   Import of aggregated ports on network switches.
-   Inventory:
    -   Massive actions in computers list to target a Deploy task was
        broken.
    -   Fixed a lot of monitors inventory related issues.
    -   Fixed some Lock fields issue.
    -   The imported sofwares are set to recursive if they are assigned
        to a parent entity relative to the entity of the computer.
    -   Fixed IP addresses that were not correctly imported.
-   Deploy:
    -   The Deploy repository cleanup script has been fixed and updated
        to take the new 0.84 repository structure.
    -   Fixed Deploy json structure inconsistencies.
    -   Fixed some communication issues with the agent.
-   Tasks:
    -   Restored multiple jobs in tasks configuration.
    -   Fixed issue with VMWare inventory tasks.
-   Installation:
    -   Fixed some previous update regressions.
-   Rules engine:
    -   Fixed some import rules related issues.

[[!template id=info text="""

**Important**

For those who updated from **0.83** to **0.84+1.0**, there has been
some missing code issue that led to a broken Deploy repository.

Now, you can fix and recover your repository by injecting the
following two tables from a **0.83+x.x** backup of your databases :

    $ mysql glpi_tmp < backup_0.83.sql
    $ mysqldump glpi_tmp glpi_plugin_fusinvdeploy_fileparts > fusinvdeploy_fileparts.sql
    $ mysqldump glpi_tmp glpi_plugin_fusinvdeploy_files > fusinvdeploy_files.sql
    $ cat fusinvdeploy_fileparts.sql fusinvdeploy_files.sql | mysql glpi_prod

"""]]

You can download this release from the following address:
<http://forge.fusioninventory.org/attachments/download/1281/fusioninventory-for-glpi_0.84+2.1.tar.gz>


[[!template id=info text="""

**Important**

Make sure to backup your previous installation (files and database)
before upgrading.

"""]]
