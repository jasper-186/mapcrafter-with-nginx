#!/bin/bash
#check for defaults, and copy them in

if [ ! -f "/config/favicon.png" ]; then
    cp "/defaults/mapcrafter/favicon.png" "/config/favicon.png"
fi

if [ ! -f "/config/title.txt" ]; then
    cp "/defaults/mapcrafter/title.txt" "/config/title.txt"
fi

if [ ! -f "/config/render.conf" ]; then
    cp "/defaults/mapcrafter/render.conf" "/config/render.conf"
fi

if [ ! -f "/config/mapcrafter-cron" ]; then
    cp "/defaults/mapcrafter/mapcrafter-cron" "/config/mapcrafter-cron"
fi

# Generate the world
bash /opt/./start.sh

# start the webserver
/usr/sbin/nginx -g daemon off