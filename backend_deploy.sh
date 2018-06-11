#!/bin/bash -x

/etc/init.d/iroadsrest stop

cd ~/project/iRoadsRest

git pull https://github.com/codemogroup/iRoadsRest.git

mvn clean install

/etc/init.d/iroadsrest start

#END
