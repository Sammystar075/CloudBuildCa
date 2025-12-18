FROM nginx:alpine

# Copy nginx config
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy cloned website files
COPY website/ /usr/share/nginx/html/

EXPOSE 8080
