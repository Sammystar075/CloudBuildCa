# Use official nginx image - alpine variant for faster build times over debian
FROM nginx:alpine

# Replace default nginx config
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy website files into nginx html folder
COPY . /usr/share/nginx/html

# Cloud Run listens on 8080
EXPOSE 80
