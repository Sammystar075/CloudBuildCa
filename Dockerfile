FROM nginx:stable-alpine

ENTRYPOINT ["nginx", "-g", "daemon off;"]


# nginx conf
COPY default.conf /etc/nginx/conf.d/default.conf

# html page
COPY markdown-editor.html /usr/share/nginx/html/markdown-editor.html
COPY markdown-editor.css /usr/share/nginx/html/markdown-editor.css
COPY markdown-editor.js /usr/share/nginx/html/markdown-editor.js

# Expose port
ENV PORT=8080
EXPOSE 8080
