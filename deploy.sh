#!/usr/bin/env bash

cd ~/var/lib/jenkins
docker-compose down
docker-compose up -d
