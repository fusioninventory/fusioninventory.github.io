---
layout: single
title: Linux Packaging
---

For Linux/Unix platforms packaging only:

FusionInventory Agent should be installed as systemd service by default.

By default, service will fail until agent configuration includes a server target
configuration or a local target configuration.

The default configuration should use the new __"include"__ directive so any `*.cfg` file
from `/etc/fusioninventory/conf.d` folder is read to update default options values.

Then the best way to configure a target will be to create a dedicated .cfg file
in `/etc/fusioninventory/conf.d` folder. As example, users would have to create a
simple `glpi.cfg` file set with the following:

```
# GLPI server
server = http://glpi-server/plugins/fusioninventory
```

Or for a local inventory:

```
# Local inventory folder
local = /var/lib/fusioninventory-agent
```

If __"include"__ directive is enabled at the end of default configuration, any
new definition set in included file(s) will just override defaults, so as example
anyone can just enable debug level 1 option and set tag adding the following to a
cfg file or adding it in a newer cfg file like this:

```
debug = 1
tag = hosting
```

Be aware, files in `/etc/fusioninventory/conf.d` folder would be read in alphabetic
order and last value for a specific option will be used for the option.

***

Default logger configuration is to log on stderr. Packagers should prefer the
agent to use system logging feature while installed as service and setting the
following in installed default configuration file:
```
logger = syslog
logfacility = LOG_DAEMON
```

***

During packaging, it is also advised to override `lib/FusionInventory/Agent/Version.pm`
module so agent version matches the package version. Packagers should also add
their own useful comments in the `$COMMENTS` perl array ref to help maintainers
to identify the package building source. As example, the module can be set to:
package __FusionInventory::Agent::Version__;

```
use strict;
use warnings;

our $VERSION = "2.4-1";
our $PROVIDER = "FusionInventory";
our $COMMENTS = [ "My distro package built on some computer", "Built on that date" ];

1;
```

***

During packaging, it is also advised to override `lib/setup.pm` module so datadir,
libdir and vardir perl variables match the system preferences for these folders.
The default setup.pm is defined to compute most well-known case with a very light
overhead.
