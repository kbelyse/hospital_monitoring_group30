#!/bin/bash

# Create archive directory if it doesn't exist
mkdir -p archived_logs_group30

# Move all archived log files (files with timestamps) to archive directory
mv heart_rate_log.txt_* archived_logs_group30/

# Check if files were moved successfully
if [ $? -eq 0 ]; then
    echo "Files moved to archive directory successfully"
    
    # Backup to remote server
    # Replace c493ef43663e with actual sandbox host if different
    scp -r archived_logs_group30/* c493ef43663e@c493ef43663e.c66578f8.alu-cod.online:/home/

    if [ $? -eq 0 ]; then
        echo "Backup to remote server completed successfully"
    else
        echo "Remote backup failed"
        echo "Please check sandbox host and connection details"
    fi
else
    echo "Error moving files to archive directory"
    exit 1
fi
