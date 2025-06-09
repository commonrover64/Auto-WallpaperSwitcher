#!/bin/bash

WALLPAPER_DIR="/home/rover/Pictures/wallpapers/aesthetic-wallpapers/images"
INTERVAL=300           # Time between changes in seconds
RANDOM_MODE=true       # Set to false for sequential mode

while true; do
    if $RANDOM_MODE; then
        img=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)
    else
        for img in "$WALLPAPER_DIR"/*; do
            gsettings set org.gnome.desktop.background picture-uri "file://$img"
            gsettings set org.gnome.desktop.background picture-uri-dark "file://$img"
            sleep $INTERVAL
        done
        continue
    fi

    gsettings set org.gnome.desktop.background picture-uri "file://$img"
    gsettings set org.gnome.desktop.background picture-uri-dark "file://$img"
    sleep $INTERVAL
done

