#!/usr/bin/env sh

docker network create proxy

docker-compose kill && docker-compose down && docker-compose rm
docker volume rm docker-wordpress-helloworld_db_data

docker-compose up --remove-orphans --force-recreate -d

docker-compose ps
