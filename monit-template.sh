#!/bin/bash
export MONIT_USER="admin"
export MONIT_PASSWORD="evoila"
export CHECK_PATH="/etc/monit.d/"
# checks if service is installed
if ! [ -a $CHECK_PATH* ]; then
    wget $REPOSITORY_MONIT/monit-run.sh
    else
    wget $REPOSITORY_MONIT/monit-install.sh
    chmod +x monit-install.sh
    ./monit-install.sh
    # loads and executes script for configuration of monit
    wget $REPOSITORY_MONIT/monit-configuration.sh
    chmod +x monit-configuration.sh
    ./monit-configuration.sh
fi
    # loads and executes script for startup of monit
    chmod +x monit-run.sh
    ./monit-run.sh monit