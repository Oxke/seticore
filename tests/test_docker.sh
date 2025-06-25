#!/bin/bash -e

# Uses a Docker container to build the code in the current directory and test it.

./download_test_data.sh

docker build -t seticore .

docker run --gpus all --volume=$(pwd)/data:/seticore/data -it seticore ./unit_tests.sh
