#!/bin/bash

# Get current profile
PROFILE=$(tuned-adm active | awk '{print $4}')

# Get CPU usage
CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | awk '{print int($2)}')

# Output in JSON format for Waybar
echo "{\"text\":\" ${CPU_USAGE}%\", \"tooltip\":\"Tuned: ${PROFILE}\", \"class\":\"${PROFILE}\"}"