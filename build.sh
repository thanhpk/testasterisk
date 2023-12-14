#!/bin/bash

docker build -t asterisk-test:latest .
docker compose up -d --remove-orphans
