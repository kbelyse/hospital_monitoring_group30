#!/bin/bash

# Define variables for better maintainability
ARCHIVE_DIR="archived_logs_group30"
REMOTE_USER="c493ef43663e"
REMOTE_HOST="c493ef43663e.c66578f8.alu-cod.online"
REMOTE_PATH="/home/"

# Creates archive directory and move files in one block
mkdir -p "$ARCHIVE_DIR" && \
mv heart_rate_log.txt_* "$ARCHIVE_DIR/" && \
echo "Files moved to archive directory successfully" || \
{ echo "Error moving files"; exit 1; }

# Add remote backup
if scp -r "$ARCHIVE_DIR/"* "$REMOTE_USER@$REMOTE_HOST:$REMOTE_PATH"; then
    echo "Backup to remote server completed successfully"
else
    echo "Remote backup failed - check connection details"
    exit 1
fi
