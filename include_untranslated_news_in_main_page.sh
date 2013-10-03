#!/bin/sh

find news/ -name '*.po' -exec sed -i 's,This file is distributed under the same license as the PACKAGE package.,This file is distributed under the same license as the FusionInventory-Agent package.,' {} \;
