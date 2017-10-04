#!/bin/bash
export MONIT_USER="admin"
export MONIT_PASSWORD=e"voila"
export CHECK_PATH="/etc/monit/"
export REPOSITORY_MONIT="https://raw.githubusercontent.com/evoila/monit-centos-install/master/"
# checks if service is installed
if [ -a $CHECK_PATH* ]; then

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
    wget $REPOSITORY_MONIT/monit-run.sh
    chmod +x monit-run.sh
    ./monit-run.sh monit