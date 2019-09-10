#!/usr/bin/env sh

docker network create proxy

docker-compose kill && docker-compose down && docker-compose rm
docker-compose up --remove-orphans --force-recreate -d

docker-compose ps
