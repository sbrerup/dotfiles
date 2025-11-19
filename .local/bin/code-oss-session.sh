#!/bin/bash

running_instance=$(hyprctl clients | grep "class: code-oss")

if [ -z "$running_instance" ]; then
    #start_session
    hyprctl dispatch exec [workspace 2 silent] code
else
    hyprctl dispatch exec code
fi
