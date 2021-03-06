#!/bin/bash -x
#author : Dushan Kumarsinghe
#purpose : update backend from github,build and deploy

/etc/init.d/iroadsrest stop

cd ~/project/iRoadsRest

git pull https://github.com/codemogroup/iRoadsRest.git

mvn clean install

sudo ln -sf ~/project/iRoadsRest/target/iroads-0.0.1-SNAPSHOT.jar /etc/init.d/iroadsrest

/etc/init.d/iroadsrest start

#END
