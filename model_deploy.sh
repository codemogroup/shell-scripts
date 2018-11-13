#!/bin/bash -x
#author : Dushan Kumarsinghe
#purpose : update machine learning model server from github and deploy

sudo service flask stop

cd ~/project/iRoads-ML_Server

git pull https://github.com/codemogroup/iRoads-ML_Server.git

pip install -r requirements.txt

sudo service flask start

#END