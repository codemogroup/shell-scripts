#!/bin/bash -x
#author Dushan Kumarsinghe
#purpose : update angular frontend from github

cd ~/project/iRoadsWeb

git pull https://github.com/codemogroup/iRoadsWeb.git

ng build

cp -a ./dist/. /var/www/html

#END
