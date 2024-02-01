# This script will check sshd service status, if the service is running it will quit otherwise it will restart the service

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

#####################################################################################################################################################################
# This script will check sshd service status, if the service is running it will quit otherwise it will restart the service on multiple servers

#!/bin/bash

# List of servers
servers=("server1" "server2" "server3" "server4" "server5" "server6" "server7" "server8" "server9" "server10")

# Loop through the list of servers
for server in "${servers[@]}"; do
    echo "Checking sshd service on $server..."

    # Check if sshd is running
    if ssh "$server" systemctl is-active --quiet sshd; then
        echo "sshd service on $server is running."
    else
        # If not running, try to restart the service
        echo "sshd service on $server is not running. Restarting..."
        ssh "$server" sudo systemctl restart sshd

        # Check if the service restarted successfully
        if [ $? -eq 0 ]; then
            echo "sshd service on $server restarted successfully."
        else
            echo "Failed to restart sshd service on $server."
            # You may choose to take further actions here if needed
        fi
    fi
done

#######################################################################################################################################################################################
# This script will check sshd service status, if the service is running it will quit otherwise it will restart the service on multiple servers in a file servers.txt
#!/bin/bash

# Check if the servers.txt file exists
servers_file="servers.txt"
if [ ! -e "$servers_file" ]; then
    echo "Error: The file $servers_file does not exist."
    exit 1
fi

# Read server names from the file into an array
mapfile -t servers < "$servers_file"

# Loop through the list of servers
for server in "${servers[@]}"; do
    echo "Checking sshd service on $server..."

    # Check if sshd is running
    if ssh "$server" systemctl is-active --quiet sshd; then
        echo "sshd service on $server is running."
    else
        # If not running, try to restart the service
        echo "sshd service on $server is not running. Restarting..."
        ssh "$server" sudo systemctl restart sshd

        # Check if the service restarted successfully
        if [ $? -eq 0 ]; then
            echo "sshd service on $server restarted successfully."
        else
            echo "Failed to restart sshd service on $server."
            # You may choose to take further actions here if needed
        fi
    fi
done
