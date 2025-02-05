#!/bin/bash

log_file="heart_rate_log.txt"
read -p "Enter device name: " device_name

echo "Logging heart rate data. Press CTRL+C to stop."


while true; do
    echo "$(date '+%Y-%m-%d %H:%M:%S') $device_name $((RANDOM % 50 + 50))" >> "$log_file"
    sleep 1
done &

pid=$!

# Display the PID
echo "Script is running in the background. Process ID (PID): $pid"

# Sleep for 5 minutes (300 seconds) before stopping the process
sleep 300

kill $pid
echo "Logging stopped after 5 minutes."

