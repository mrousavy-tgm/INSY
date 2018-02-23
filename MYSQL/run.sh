#!/bin/bash

sudo docker stop mysql
sudo docker rm mysql

sudo docker build -t mysqlimg .
sleep 2
sudo docker run -d --name mysql mysqlimg
sleep 2
sudo docker exec -it mysql /bin/bash

