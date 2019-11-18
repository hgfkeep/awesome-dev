#!/bin/bash
docker stop jhipster
docker rm jhipster
docker run --name jhipster -v `pwd`/app:/home/jhipster/app -d jhipster/jhipster
