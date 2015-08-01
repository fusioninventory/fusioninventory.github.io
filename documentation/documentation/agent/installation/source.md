---
layout: page
title: Installation from the source tarball
---

# Installation from the source tarball

## Get the sources Luke!

The latest relase is available either from [our forge](http://forge.fusioninventory.org/projects/fusioninventory-agent/files) or from [CPAN](https://metacpan.org/release/FusionInventory-Agent).

## Build and installation

We strongly recommand the use of __GNU tar__ because some file path lenght are
greater than 100 caracters. Some tar version will silently ignore those files
like for example on HP-UX.

First, you need to extract the source and change the current directory.

    $> tar xfz FusionInventory-Agent-2.2.5.tar.gz
    $> cd FusionInventory-Agent-2.2.5

Executing Makefile.PL will ensure all the required dependencies are available
and prepare the build tree.

    $> perl Makefile.PL

At this point, you will probably have some missing required modules. See
Dependencies section for installing them. Once this is done, run the same
command again:

    $> perl Makefile.Pl

This time the execution should success and you can finish the installation.
Here again we recommand GNU make (gmake):

    make
    make install

If you don't want to use the default directory (/usr/local), you can use the
PREFIX parameter during the Makefile.PL step:

    perl Makefile.PL PREFIX=/opt/fusioninventory
    make
    make install

## Tests

FusionInventory components come with a test-suite. You can run it after the `perl Makefile.PL` with this command:

    $> make test

The test-suites require some additional dependencies like Test::More.

## Depedencies

### Perl dependencies

The easiest way to install perl dependencies is to use
[cpanm](http://cpanmin.us). Just run:

    $> cpanm .

You can use the _--notest_ flag if you are brave and want to skip the test-suite
execution.

### Offline installation of Perl dependencies

{% include info.html param="You will need cpanm http://cpanmin.us .See above how to install it." %}

First grab the tarball from the website and extract it.

    $> tar xfz FusionInventory-Agent-2.3.0.tar.gz
    $> cd FusionInventory-Agent-2.3.0

We use cpanm to fetch and extract the dependencies in the extlib directory.

    $> cpanm --pureperl --installdeps -L extlib --notest .

This command should fail (2013-08-11) with an error regarding Params::Validate. Just runs
this last command:

    $> cpanm --installdeps -L extlib --notest .

Now you can copy the directory to another machine and run the agent this way:

    $> perl -Iextlib/lib/perl5 -Ilib fusioninventory-agent

### Other dependencies

On Solaris/SPARC, you must install sneep and record the Serial Number with it.
Download it from <http://www.sun.com/download/products.xml?id=4304155a>.

On Windows, we use an additional dmidecode binary shipped in the windows
distribution to retrieve many informations not available otherwise, including
fine-grained multi-cores CPUs identification. Unfortunatly, this binary is not
reliable enough to be used on Windows 2003, leading to less precise
inventories.

On Linux, lspci will be used to collect PCI, AGP, PCI-X, ... informations.
