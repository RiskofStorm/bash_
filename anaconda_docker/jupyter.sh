#!/usr/bin/env bash

IMAGE_VERSION='1.0'
NAME="anaconda-jupyter"

if [ $(docker volume ls | grep "${NAME}" | wc -l) -eq 0 ]; then
  docker volume create "${NAME}"
fi

sudo docker run -it --rm -p 8888:8888 \
  -v "$(pwd)":/home/storm/docker_ipynb \
  --mount source="${NAME}",target=/home/storm/docker_ipynb \
 anaconda-storm:${IMAGE_VERSION}