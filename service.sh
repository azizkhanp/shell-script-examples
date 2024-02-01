# This script will check sshd service status, if service is running it will quit otherwise it will restart service

#!/bin/bash

if systemctl is-active --quiet sshd; then
echo "sshd service is running."
else
echo "sshd service is not running. Restarting..."
      systemctl start sshd
if [ $? -eq 0 ]; then
echo "sshd service started successfully."
    else
        echo "Failed to start sshd service."
fi
fi
