#!/bin/bash

if ! hyprctl clients | grep -q "class: chrome-dev"; then
    google-chrome-stable \
        --new-window \
        --class="chrome-dev" \
        --user-data-dir="/tmp/chrome-dev-profile" \
        http://localhost:4200 &

    sleep 0.5
fi

hyprctl dispatch togglespecialworkspace chrome-dev
