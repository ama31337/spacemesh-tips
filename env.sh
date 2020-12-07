#!/bin/bash 

SCRIPT_DIR=`cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P`
#export CUR_USER="$USER"
export HOME_PATH="/home/$USER/"
export BIN_PATH="/home/$USER/bin/"
#export DATA_DIR="/home/$USER/data/"
export RELEASE_URL="https://storage.googleapis.com/smapp/go-sm-0.1.17/go-spacemesh-linux"
export CLI_URL="https://github.com/spacemeshos/CLIWallet/releases/download/v0.0.1/cli_wallet_linux_amd64"
export CONFIG_URL="https://storage.googleapis.com/smapp/0.1.5/config_122.json"
export UNIT_FILE_URL="https://raw.githubusercontent.com/ama31337/spacemesh-tips/main/spacemeshd.service"
export START_FILE="https://raw.githubusercontent.com/ama31337/spacemesh-tips/main/start_daemon.sh"
export ENV_FILE="https://raw.githubusercontent.com/ama31337/spacemesh-tips/main/env.sh"
export SERVICE_NAME="spacemeshd.service"
export ADDR=`cat ${BIN_PATH}addr.txt`
