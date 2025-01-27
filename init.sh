#!/usr/bin/env sh
set -e
DEVPOD_INIT_DIR=${DEVPOD_INIT_DIR:-devpod}
mkdir -p $DEVPOD_INIT_DIR && cd $DEVPOD_INIT_DIR      

BASE_FILE_URL=https://raw.githubusercontent.com/yairdar/devpod/main/src/devpod
xargs -P 4 -I{} wget $BASE_FILE_URL/{} -O {} << MRK_XRGS
install-deps.sh
setup.cloud.tools.yml
setup.os.docker.yaml
setup.os.tools.sh
setup.zsh.tools.yml
Taskfile.yml
update-context.sh
MRK_XRGS

