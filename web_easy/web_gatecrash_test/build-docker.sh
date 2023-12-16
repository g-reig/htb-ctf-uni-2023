#!/bin/bash
docker rm -f web_gatecrash
docker build --platform linux/amd64 -t web_gatecrash .
docker run --name=web_gatecrash --platform linux/amd64 --rm -p1337:1337 -it web_gatecrash