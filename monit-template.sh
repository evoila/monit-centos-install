#!/bin/bash
export MONIT_USER=admin
export MONIT_PASSWORD=evoila
export CHECK_PATH=/etc/monit/
export REPOSITORY_MONIT=
# checks if service is installed
if [ -a $CHECK_PATH* ]; then
    # executes script for startup of monit
    chmod +x monit-run.sh
    ./monit-run.sh monit
else
    wget $REPOSITORY_MONIT/monit-install.sh
    chmod +x monit-install.sh
    ./monit-install.sh
    # loads and executes script for configuration of monit
    wget $REPOSITORY_MONIT/monit-configuration.sh
    chmod +x monit-configuration.sh
    ./monit-configuration.sh
    # loads and executes script for startup of monit
    wget $REPOSITORY_MONIT/monit-run.sh
    chmod +x monit-run.sh
    ./monit-run.sh monit
fi
