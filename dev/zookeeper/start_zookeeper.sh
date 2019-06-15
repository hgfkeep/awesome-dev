#!/bin/bash

echo "no log of zookeeper starting"
docker stop zookeeper_dev
docker rm zookeeper_dev
# -e ZOO_LOG4J_PROP="INFO,ROLLINGFILE"
docker run --name zookeeper_dev -p 2181:2181 --restart always -d zookeeper:latest
