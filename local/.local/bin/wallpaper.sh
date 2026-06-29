#!/bin/bash

WALL_DIR="$HOME/images/Wallpapers"
STATE_FILE="$HOME/.cache/wallpaper_index"

mapfile -t WALLPAPERS < <(find "$WALL_DIR" -type f | sort)

TOTAL=${#WALLPAPERS[@]}

mkdir -p "$HOME/.cache"

if [ ! -f "$STATE_FILE" ]; then
    echo 0 > "$STATE_FILE"
fi

INDEX=$(cat "$STATE_FILE")

case "$1" in

next)
    INDEX=$(( (INDEX + 1) % TOTAL ))
    ;;

prev)
    INDEX=$(( (INDEX - 1 + TOTAL) % TOTAL ))
    ;;

random)
    INDEX=$(( RANDOM % TOTAL ))
    ;;

esac

echo "$INDEX" > "$STATE_FILE"

feh --bg-fill "${WALLPAPERS[$INDEX]}"
