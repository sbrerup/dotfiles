#!/bin/bash

# Define the specific workspace name
WORKSPACENAME="special:chrome-dev"

# 1. Check if the window exists (using the specific class)
if ! hyprctl clients | grep -q "class: chrome-dev"; then
    google-chrome-stable \
        --new-window \
        --class="chrome-dev" \
        --user-data-dir="/tmp/chrome-dev-profile" \
        http://localhost:4200 &
fi

hyprctl dispatch togglespecialworkspace chrome-dev
