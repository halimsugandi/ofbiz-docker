#!/bin/bash
#sudo apt update;
sudo apt install docker-compose-v2 -y;
mkdir export; chmod 666 export
docker-compose -f docker-compose-ofbiz.yml -f docker-compose-mariadb.yml up -d mariadb1 mariadb2 mariadb3 ofbiz1
echo -n "waiting for instance 1 ofbiz container up & healthy:"
while [ "`docker inspect -f {{.State.Health.Status}} ofbiz1`" != "healthy" ]; do echo -n .; sleep 1; done;
docker-compose -f docker-compose-ofbiz.yml -f docker-compose-mariadb.yml up -d ofbiz2 haproxy
echo " "
echo "done..., please browse to http://localhost/webtools/"
