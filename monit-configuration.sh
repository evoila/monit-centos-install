#!/bin/bash
echo
echo "### Starting configuration of monit... ###"
echo
#starts with parameters for user and password set in monit-template.sh
export MONIT_SERVICE_PID="/run/rabbitmq/pid"   #e.g. RabbitMQ
export MONIT_SERVICE_START="/etc/init.d/rabbitmq-server start"
export MONIT_SERVICE_STOP="/etc/init.d/rabbitmq-server stop"
echo "monit_user = ${MONIT_USER}"

#check status of monit
echo "Status of monit:"
service monit status

#loads coustomized controlfile

echo "set daemon  30              # check services at 30 seconds intervals
set logfile syslog
set httpd port 2812 and
     allow admin:evoila     # require user 'admin' with password 'evoila'

check process rabbitmq with pidfile $MONIT_SERVICE_PID
    start program = ""$MONIT_SERVICE_START""
    stop program = ""$MONIT_SERVICE_STOP""
" > /etc/monit.d/monitrc

chmod 700 /etc/monit.d/monitrc
