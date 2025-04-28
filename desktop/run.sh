#!/bin/bash
# Parameter #1: base variant to load.
VERSION="${1:-rolling-ros-core-desktop}"

RANDOM_NUM=$(( (RANDOM) + 1 ))
HOSTNAME=${VERSION}-${RANDOM_NUM}
docker run -it --rm  --hostname ${HOSTNAME} --name ${HOSTNAME} ros-local:${VERSION} bash
