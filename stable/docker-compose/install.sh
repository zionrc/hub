#!/usr/bin/env bash
set -e

VERSION=${DOCKER_COMPOSE_VERSION:-1.22.0}

curl -L https://github.com/docker/compose/releases/download/${VERSION}/docker-compose-`uname -s`-`uname -m` > docker-compose
chmod +x docker-compose
if [[ -f /usr/local/bin/docker-compose ]]; then
    sudo rm /usr/local/bin/docker-compose
fi
sudo mv docker-compose /usr/local/bin
docker-compose --version
