#!/bin/bash

SCRIPT_DIR=`cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P`
. "${SCRIPT_DIR}/env.sh"

cd ${BIN_PATH} && \
 ./spacemesh --grpc-server --json-server --tcp-port 7153 --config ./tn01.json \
 -d ./sm_data \
 --coinbase ${ADDR} \
 --start-mining \
 --post-datadir ./post_data \
 --metrics
