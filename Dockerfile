FROM nginx:stable-alpine

ENTRYPOINT ["nginx", "-g", "daemon off;"]


# nginx conf
COPY default.conf /etc/nginx/conf.d/default.conf

# html page
COPY index.html /usr/share/nginx/html/index.html

# Expose port
ENV PORT=8080
EXPOSE 8080
