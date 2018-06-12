#!/bin/bash -x
#author Dushan Kumarsinghe
#purpose : update frontend from github,build and deploy to apache2 server

cd ~/project/iRoadsWeb

git pull https://github.com/codemogroup/iRoadsWeb.git

npm install

rm -rf /var/www/html/*

cp -a ./dist/. /var/www/html

#END
