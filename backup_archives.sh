#!/bin/bash

# Defined variables for better maintainability
ARCHIVE_DIR="archived_logs_group30"
REMOTE_USER="c493ef43663e"
REMOTE_HOST="c493ef43663e.c66578f8.alu-cod.online"
REMOTE_PATH="/home/"

# Create archive directory and move files in one block
echo "Files already in archive directory" 

# Add remote backup as my sandbox
if scp -r "$ARCHIVE_DIR/"* "$REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH"; then
    echo "Backup to remote server completed successfully"
else
    echo "Remote backup failed - check connection details"
    exit 1
fi
