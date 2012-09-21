#!/bin/sh

rm -r .tx
tx init --host=https://www.transifex.com

for name in `find . -name '*.mdwn'|grep -v "news/2010/06/18/New_from_the_Fusioninventoryforglpi_plugin"|grep -v "FusionInventory_slideshow_in_French"`; do
    base=$(echo $name|sed 's,\.mdwn,,'| sed 's,\.\/,,')
    resource=fusioninventory-web.$(echo $base|sed 's,[+\/\.],-,g'|sed 's,-\+,-,g')
    echo $base
    echo $resource

    if [ ${#resource} -lt 50 ]; then
      for l in fr es; do
        tx set --source -r $resource -l $l $base.$l.po --type PO
      done
    fi
done

tx push -s -t
tx pull
