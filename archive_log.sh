#!/bin/bash

# First part verifies to check if $log_file exists. If not it sends an error.

log_file=heart_rate_log.txt

if [ ! -f "$log_file" ]; then
	echo "error '$log_file' not found!"
	exit 1
fi

# Once found, the file is then duplicated into a new file, renamed, and archived. 

timestamp=$(date "+%Y%m%d_%H%M%S")


archive_file="${log_file}_${timestamp}"

	mv "$log_file" "$archive_file"
	echo "Log file archived as: $archive_file"

# If the operation is successfull, user will be notified that the log_file was archived.
