#!/bin/bash

# List of profiles to cycle through (customize this)
PROFILES=("powersave" "desktop")

# Get current profile
CURRENT=$(tuned-adm active | awk '{print $4}')

# Find current profile index
for i in "${!PROFILES[@]}"; do
    if [[ "${PROFILES[$i]}" == "$CURRENT" ]]; then
        CURRENT_INDEX=$i
        break
    fi
done

# Calculate next profile index
NEXT_INDEX=$(( (CURRENT_INDEX + 1) % ${#PROFILES[@]} ))
NEXT_PROFILE="${PROFILES[$NEXT_INDEX]}"

# Switch to next profile (requires pkexec or sudo without password)
pkexec tuned-adm profile "$NEXT_PROFILE"