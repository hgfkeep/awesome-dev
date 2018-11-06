#!/usr/bin/env bash

docker stop mysql_dev
docker rm mysql_dev
docker run --name mysql_dev -v `pwd`/conf:/etc/mysql/conf.d -v `pwd`/data:/var/lib/mysql -p 3306:3306 -e MYSQL_ROOT_PASSWORD=hgfgood -d mysql:latest