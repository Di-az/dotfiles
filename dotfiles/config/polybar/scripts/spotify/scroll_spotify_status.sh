#!/bin/bash

# see man zscroll for documentation of the following parameters
zscroll --length 10 \
        --delay 0.1 \
        --scroll-padding "  " \
        --match-command "`dirname $0`/get_spotify_status.sh --status" \
        --match-text "Playing" "--scroll 1" \
        --match-text "Paused" "--scroll 0" \
        --update-check true "python3 `dirname $0`/spotify_status.py" &

wait

