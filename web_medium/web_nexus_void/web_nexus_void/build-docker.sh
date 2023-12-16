#!/bin/bash
docker rm -f web_nexus_void
docker build --platform linux/amd64 --tag=web_nexus_void .
docker run --platform linux/amd64 --rm -it -p 1337:80 --name=web_nexus_void web_nexus_void