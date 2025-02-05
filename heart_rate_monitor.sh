#!/bin/bash

log_file="heart_rate_log.txt"
read -p "Enter device name: " device_name

echo "Logging heart rate data. Press CTRL+C to stop."

while true; do
    echo "$(date '+%Y-%m-%d %H:%M:%S') $device_name $((RANDOM % 50 + 50))" >> "$log_file"
    sleep 1
done

