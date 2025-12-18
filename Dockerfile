FROM nginx:alpine

# Remove default nginx config
RUN rm /etc/nginx/conf.d/default.conf

# Add our nginx config
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy website files FROM the cloned repo
COPY site/ /usr/share/nginx/html/

EXPOSE 8080
