#!/bin/bash
export REPOSITORY_MONIT="https://raw.githubusercontent.com/evoila/monit-centos-install/master/"
wget $REPOSITORY_MONIT/monit-template.sh --no-cache
chmod +x monit-template.sh
./monit-template.sh
