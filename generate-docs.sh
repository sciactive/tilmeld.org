#!/bin/bash

cd $(dirname $0)

mkdir build
./vendor/bin/phploc --log-xml=build/phploc.xml ../tilmeld-server/src/

cat phpdox.xml.dist.skel | sed -e "s/--version--/$1/" > phpdox.xml.dist
./vendor/bin/phpdox
rm phpdox.xml.dist
