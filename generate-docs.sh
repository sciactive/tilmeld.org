#!/bin/bash

cd $(dirname $0)

./vendor/apigen/apigen/bin/apigen generate -s ../tilmeld-server/ -d ./api/server/$1/ --exclude vendor/ --exclude setup/ --exclude bower_components/ --exclude node_modules/ --title "Tilmeld $1 Server API" --tree --main Tilmeld
