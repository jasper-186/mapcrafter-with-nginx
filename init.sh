#!/bin/sh
#check for defaults, and copy them in

# Reset the Log file
truncate -s 0 /config/mapcrafter.log

# Generate the world
echo "Begining rendering of the world?"
sh /opt/start.sh 
sh /opt/temp_env.sh
sh /opt/render.sh &

# start the webserver
echo "Starting nginx server"
/usr/sbin/nginx #-g "daemon off;"

echo "Tailing the log file"
# follow the generator log so we can track progress of the generation
tail -f /config/mapcrafter.log