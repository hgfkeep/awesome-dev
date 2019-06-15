#!/bin/bash

HOST_NAME=gitlab.local
GITLAB_DIR=/home/gitlab

docker stop gitlab
docker rm gitlab
docker run -d \
    --hostname ${HOST_NAME} \
    -p 8443:443 -p 8080:80 -p 2222:22 \
    --name gitlab \
    -v ${GITLAB_DIR}/config:/etc/gitlab \
    -v ${GITLAB_DIR}/logs:/var/log/gitlab \
    -v ${GITLAB_DIR}/data:/var/opt/gitlab \
    registry.cn-hangzhou.aliyuncs.com/lab99/gitlab-ce-zh:latest
