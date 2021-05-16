#!/bin/bash

# to launch it, you need docker-compose. if you don't have it, you can run this:

docker run --rm \
-v /var/run/docker.sock:/var/run/docker.sock \
-v "$PWD:$PWD" \
-w="$PWD" \
docker/compose:1.24.0 up -d &&
docker run --rm \
-v /var/run/docker.sock:/var/run/docker.sock \
-v "$PWD:$PWD" \
-w="$PWD" \
docker/compose:1.24.0 logs -f -t