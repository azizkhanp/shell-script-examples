#!/bin/bash

# Local file containing text to be copied
local_file="/path/to/local/textfile.txt"

# List of remote servers
servers=("server1" "server2" "server3" ... "server100")

# SSH username
ssh_user="your_username"

# Remote directory where you want to copy the text file
remote_dir="/path/to/remote/directory"

# Loop through each server and copy the text file
for server in "${servers[@]}"; do
    echo "Copying text file to $server..."
    
    # Use SSH to copy the file to the remote server
    scp "$local_file" "$ssh_user@$server:$remote_dir"
    
    # Check the exit status of the SCP command
    if [ $? -eq 0 ]; then
        echo "Copy successful to $server."
    else
        echo "Error: Copy to $server failed."
    fi
done

echo "Script completed."
