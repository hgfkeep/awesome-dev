#!/bin/bash

docker rm minio

docker run -p 2345:9000 --name minio \
  -e "MINIO_ACCESS_KEY=hgfgood" \
  -e "MINIO_SECRET_KEY=hgfgooda" \
  -v `pwd`/data:/data \
  minio/minio server /data
