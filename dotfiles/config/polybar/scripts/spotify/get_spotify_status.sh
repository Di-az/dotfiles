#!/bin/bash

# The name of polybar bar which houses the main spotify module and the control modules.
PARENT_BAR="now-playing"
PARENT_BAR_PID=$(pgrep -a "polybar" | grep "$PARENT_BAR" | cut -d" " -f1)

# Set the source audio player here.
# Players supporting the MPRIS spec are supported.
# Examples: spotify, vlc, chrome, mpv and others.
# Use `playerctld` to always detect the latest player.
# See more here: https://github.com/altdesktop/playerctl/#selecting-players-to-control
PLAYER="spotify"

# Format of the information displayed
# Eg. {{ artist }} - {{ album }} - {{ title }}
# See more attributes here: https://github.com/altdesktop/playerctl/#printing-properties-and-metadata
FORMAT="{{ title }} - {{ artist }}"

PLAYERCTL_STATUS=$(playerctl --player=$PLAYER status 2>/dev/null)
EXIT_CODE=$?

if [ $EXIT_CODE -eq 0 ]; then
    STATUS=$PLAYERCTL_STATUS
else
    STATUS="No player is running"
fi

if [ "$1" == "--status" ]; then
    if [ "$STATUS" = "Playing" ]; then
        # Spotify is playing
        echo ""
    elif [ "$STATUS" = "Paused"  ]; then
        # Spotify is paused
        echo ""
    else
        # Spotify is closed
        echo ""
    fi
elif [ "$1" == "--click" ]; then

    if [ "$STATUS" = "Playing" ]; then
        # Spotify is playing
        playerctl --player=$PLAYER pause
    elif [ "$STATUS" = "Paused"  ]; then
        # Spotify is paused
        playerctl --player=$PLAYER play
    fi
else
    if [ "$STATUS" = "Playing" ]; then
        # Spotify is playing
        playerctl --player=$PLAYER metadata --format "$FORMAT"
        # TODO: Include scrolling shiet
        #bash `dirname $0`/scroll_spotify_status.sh
    elif [ "$STATUS" = "Paused"  ]; then
        # Spotify is paused
        playerctl --player=$PLAYER metadata --format "$FORMAT"
    elif [ "$STATUS" = "No player is running"  ]; then
        # Spotify is closed
        echo ""
    else
        echo ""
    fi
fi

