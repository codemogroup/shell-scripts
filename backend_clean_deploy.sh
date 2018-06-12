#!/bin/bash -x
#author : Dushan Kumarsinghe
#purpose : clean backend project,clone from github,build and deploy

/etc/init.d/iroadsrest stop

cd ~/project

rm -rf iRoadsRest

git clone https://github.com/codemogroup/iRoadsRest.git

cd iRoadsRest

mvn clean install

sudo ln -sf ~/project/iRoadsRest/target/iroads-0.0.1-SNAPSHOT.jar /etc/init.d/iroadsrest

/etc/init.d/iroadsrest start

