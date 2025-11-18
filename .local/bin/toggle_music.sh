#!/bin/bash

CLIENT="com.github.th_ch.youtube_music"

if pgrep -f "youtube-music" > /dev/null; then
    hyprctl dispatch togglespecialworkspace music
else
    youtube-music &
fi
