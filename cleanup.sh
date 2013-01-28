#!/bin/sh

find . -name '*.po' -exec dos2unix {} \;
find -name '*.po' -exec msgcat --strict {} > /dev/null \;
