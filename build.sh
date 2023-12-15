#!/bin/bash

docker compose build
docker rm -f asterisk
docker compose up -d --remove-orphans
