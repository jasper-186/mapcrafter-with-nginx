#!/bin/sh
#check for defaults, and copy them in

echo "Checking for favicon"
if [ ! -f "/config/favicon.png" ]; then
    cp "/defaults/mapcrafter/favicon.png" "/config/favicon.png"
fi

echo "Checking for title.txt"
if [ ! -f "/config/title.txt" ]; then
    cp "/defaults/mapcrafter/title.txt" "/config/title.txt"
fi

echo "Checking for render.conf"
if [ ! -f "/config/render.conf" ]; then
    cp "/defaults/mapcrafter/render.conf" "/config/render.conf"
fi

echo "Checking for mapcrafter-cron"
if [ ! -f "/config/mapcrafter-cron" ]; then
    cp "/defaults/mapcrafter/mapcrafter-cron" "/config/mapcrafter-cron"
fi

echo "Begining rendering of the world?"
# Generate the world
sh /opt/start.sh

echo "Starting nginx server"
# start the webserver
/usr/sbin/nginx -g "daemon off"