#!/bin/sh
#check for defaults, and copy them in

echo "Begining rendering of the world?"
# Generate the world
sh /opt/start.sh

echo "Starting nginx server"
# start the webserver
/usr/sbin/nginx -g "daemon off;"
