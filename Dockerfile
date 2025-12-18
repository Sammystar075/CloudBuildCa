FROM nginx:alpine

# Remove default config
RUN rm /etc/nginx/conf.d/default.conf

# Add our config
COPY default.conf /etc/nginx/conf.d/default.conf

RUN git clone https://github.com/Sammystar075/CloudBuildCa.git /usr/share/nginx/html/

EXPOSE 8080
