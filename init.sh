#!/bin/sh
#check for defaults, and copy them in

# Generate the world
echo "Begining rendering of the world?"
sh /opt/start.sh
sh /opt/temp_env.sh
sh /opt/render.sh

# start the webserver
echo "Starting nginx server"
/usr/sbin/nginx -g "daemon off;"

#follow the generator log so we can track progress of the generation
tail --follow=name /config/mapcrafter.log