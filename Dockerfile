# World Rendering Image
FROM dinip/mapcrafter:world120 

#CMD /opt/./start.sh && tail -n 50 -f /config/mapcrafter.log

# Install Nginx
RUN apk add nginx

# Copy the Nginx config
COPY default-site.conf /etc/nginx/sites-available/default

# Expose the port for access
EXPOSE 80/tcp

# Build the World && Run the Nginx server
CMD ["/opt/./start.sh", "&&", "/usr/sbin/nginx", "-g", "daemon off;"]


