#!/bin/bash

docker stop redis_dev
docker rm redis_dev
docker run -d  -p 6379:6379 -v `pwd`/data:/data -v `pwd`/conf/redis.conf:/usr/local/etc/redis/redis.conf --name redis_dev  redis:latest redis-server /usr/local/etc/redis/redis.conf
