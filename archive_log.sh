#!/bin/bash

log_file="heart_rate_log.txt"

# Get the current timestamp in YYYYMMDD_HHMMSS format
timestamp=$(date '+%Y%m%d_%H%M%S')

# Rename the log file with the timestamp
mv "$log_file" "${log_file}_${timestamp}"

# Confirm the archive was created
echo "Archived log as ${log_file}_${timestamp}"

