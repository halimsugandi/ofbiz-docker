#!/bin/bash
docker-compose -f docker-compose-ofbiz.yml -f docker-compose-mariadb.yml down
docker volume ls -q -f dangling=true | while read v; do docker volume rm $v; done
