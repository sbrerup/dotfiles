#!/bin/bash

TARGET_WORKSPACE="special:chrome-dev"
BAR_NAME="bar-0"

# is_fullscreen_active() {
#     ACTIVE_ID=$(hyprctl monitors -j | jq '.[] | select(.focused) | .activeWorkspace.id')
#     hyprctl workspaces -j | jq --argjson id "$ACTIVE_ID" '.[] | select(.id == $id) | .hasfullscreen' | grep -q "true"
# }

# is_layer_listed() {
#     hyprctl layers | grep -q "namespace: $BAR_NAME"
# }

# show_bar() {
#     if ! is_bar_visible; then
#         hyprpanel toggleWindow $BAR_NAME >/dev/null
#     fi
# }

# hide_bar() {
#     if is_bar_visible; then
#         hyprpanel toggleWindow $BAR_NAME >/dev/null
#     fi
# }



socat -U - UNIX-CONNECT:"$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock" | while read -r line; do
    echo $line
    case "$line" in
        workspacev2*)
            RAW_DATA="${line##*>>}"
            TEMP="${RAW_DATA#*,}"
            WORKSPACE="${TEMP%%,*}"
            # echo $WORKSPACE
            ;;
        activespecialv2*)
            # RAW_DATA="${line##*>>}"
            # TEMP="${RAW_DATA#*,}"
            # WORKSPACE="${TEMP%%,*}"
            # echo $TEMP

            # if [ "$WORKSPACE" == "$TARGET_WORKSPACE" ]; then
            #     if is_fullscreen_active; then
            #         hide_bar
            #     fi
            # else
            #     show_bar
            # fi
            ;;
    esac

done