#!/usr/bin/env bash
cd /var/lib/jenkins

docker-compose stop
docker-compose rm -f
docker-compose pull
docker-compose up -d
