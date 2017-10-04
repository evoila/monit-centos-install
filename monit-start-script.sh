#!/bin/bash

wget $REPOSITORY_MONIT/monit-template.sh --no-cache
chmod +x monit-template.sh
./monit-template.sh
