#!/bin/bash

# Set the CPU usage threshold
THRESHOLD=80

# Set email details
EMAIL="arungangadhar238@gmail.com"
SUBJECT="CPU Usage Alert"
MESSAGE="CPU usage is above threshold."

# Function to get the current CPU usage
get_cpu_usage() {
  # Extract the idle CPU percentage, subtract it from 100 to get the usage
  cpu_idle=$(top -bn1 | grep "Cpu(s)" | awk '{print $7}' | cut -d. -f1)
  echo $cpu_idle
}

# Function to send an email alert
send_alert() {
  local usage=$1
  echo "$MESSAGE Current usage: $usage%" | mail -s "$SUBJECT" "$EMAIL"
}

# Main script logic
cpu_usage=$(get_cpu_usage)

if [ "$cpu-usage" -gt "$THRESHOLD" ]; then
  send_alert "$cpu_usage"
fi

