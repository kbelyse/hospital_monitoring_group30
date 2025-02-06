#!/bin/bash
log_file=heart_rate_log.txt
if [ ! -f "$log_file" ]; then
	echo "error '$log_file' not found!"
	exit 1
fi
timestamp=$(date "+%Y%m%d_%H%M%S")

archive_file="${log_file}_${timestamp}"

	mv "$log_file" "$archive_file"
	echo "Log file archived as: $archive_file"
