# World Rendering Image
FROM dinip/mapcrafter:world120 

# Install Nginx
RUN apk add nginx

#nginx needs a pid file here
RUN mkdir -p /run/nginx

# Copy the Nginx config
COPY /defaults/nginx/default-site.conf /etc/nginx/conf.d/default.conf

# copy the init script
COPY init.sh /init.sh

# Expose the port for access
EXPOSE 80/tcp

# Build the World && Run the Nginx server in the init script
CMD ["sh","/init.sh"]



