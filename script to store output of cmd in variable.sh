#!/bin/bash
# debug the script
set -x 
#run hostname command and store output in host_name variable
host_name=$(hostname)
# to check above command is executed correctly or not
if [ $? - eq 0 ]; then
echo "my server name is: $host_name"
fi
