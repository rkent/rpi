#!/bin/bash

# Parameter #1: base variant to load.
BASE_VARIANT="${1:-rolling-ros-core}"
docker build --build-arg BASE_VARIANT=${BASE_VARIANT} -t ros-local:${BASE_VARIANT}-desktop .
