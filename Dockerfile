# World Rendering Image
FROM dinip/mapcrafter:world120 

# Install Nginx
RUN apk add nginx

# Copy the Nginx config
COPY /defaults/nginx/default-site.conf /etc/nginx/sites-available/default

COPY  init.sh /init.sh

# Expose the port for access
EXPOSE 80/tcp

# Build the World && Run the Nginx server in the init script
CMD ["sh","/init.sh"]



