#!/bin/bash

SCRIPT_DIR=`cd "$(dirname "${BASH_SOURCE[0]}")" && pwd -P`
. "${SCRIPT_DIR}/env.sh"

sudo systemctl stop $SERVICE_NAME
mkdir -p ${BIN_PATH}
cd ${BIN_PATH}

# get bins and config
wget ${RELEASE_URL} -O spacemesh && chmod u+x spacemesh
wget ${CLI_URL} -O cli && chmod u+x cli
wget ${CONFIG_URL} -O tn01.json

# setup service file
wget ${UNIT_FILE_URL} -O ${SERVICE_NAME}
sed -i "s/<user>/${USER}/g" spacemeshd.service
sed -i "s#<work_dir>#"$BIN_PATH"#g" spacemeshd.service
sudo cp ${SERVICE_NAME} /etc/systemd/system/$SERVICE_NAME
sudo systemctl daemon-reload

# get start sctipt
wget $START_FILE -O start_daemon.sh && chmod u+x start_daemon.sh

# clear prev data
rm -rf sm_data post_data

# start service
sudo systemctl enable $SERVICE_NAME
sudo systemctl start $SERVICE_NAME

#create alias
echo 'alias spacestart="sudo systemctl start $SERVICE_NAME"' >> ~/.bash_aliases
echo 'alias spacestop="sudo systemctl stop $SERVICE_NAME"' >> ~/.bash_aliases
source ~/.bash_aliases


