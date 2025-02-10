#!/bin/bash

BACKUP_DIR="/backup"
SRC_DIR="/home/user/data"
TIMESTAMP=$(date +"%Y-%m-%d_%H-%M-%S")

tar -czf "$BACKUP_DIR/backup_$TIMESTAMP.tar.gz" "$SRC_DIR"
echo "Backup created at $BACKUP_DIR/backup_$TIMESTAMP.tar.gz"
