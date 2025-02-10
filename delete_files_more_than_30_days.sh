#!/bin/bash

FOLDER="/var/log"
DAYS=30

find "$FOLDER" -type f -mtime +$DAYS -exec rm -f {} \;
echo "Deleted files older than $DAYS days from $FOLDER"
