#!/bin/bash

docker stop redis_dev
docker rm redis_dev
docker run -itd  -p 6379:6379 -v `pwd`/data:/data --name redis_dev  redis:latest
