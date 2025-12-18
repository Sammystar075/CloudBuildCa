# Use Nginx Alpine
FROM nginx:alpine

# Remove default Nginx config
RUN rm -f /etc/nginx/conf.d/default.conf

# Add your Nginx config (listens on 8080)
COPY default.conf /etc/nginx/conf.d/default.conf

# IMPORTANT:
# Delete the default Nginx welcome content so it can't "win"
RUN rm -rf /usr/share/nginx/html/*

# IMPORTANT:
# Copy the CLONED website repo contents (the 'site' folder) into the web root
COPY site/ /usr/share/nginx/html/

EXPOSE 8080
