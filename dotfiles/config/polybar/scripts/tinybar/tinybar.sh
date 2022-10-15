# script to Tiny-launch polybar

#!/usr/bin/env bash

echo "---" | tee -a /tmp/polybar2.log
polybar tray -c /home/diaz/.config/polybar/themes/chnvok/config.ini >> /tmp/polybar2.log 2>&1

