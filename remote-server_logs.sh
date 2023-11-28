#!/bin/bash

# Replace the following variables with your own values
remote_user= "ubuntu"          #your_remote_user
remote_server="32.168.32.15"  #your_remote_server
remote_log_path="/var/log/web.log" #/path/to/remote/logfile.log

# SSH into the remote server and use grep to filter errors
ssh $remote_user@$remote_server "cat $remote_log_path | grep 'ERROR'"
