#!/bin/bash

log_file=hear_rate_log.txt

if [ ! -f "log_file" ]; then
	echo "error '$log_file' not found!"
	exit1
fi
