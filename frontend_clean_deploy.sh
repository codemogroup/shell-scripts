#!/bin/bash -x
#author : Dushan Kumarsinghe
#purpose : clean frontend project,clone from github,build and copy to apache2 server

cd ~/project

rm -rf iRoadsWeb

git clone https://github.com/codemogroup/iRoadsWeb.git

cd iRoadsWeb

npm install

rm -rf /var/www/html/*

cp -a ./dist/. /var/www/html

#END
