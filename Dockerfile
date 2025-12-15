FROM nginx:stable-alpine

# Remove ALL default configs and copy yours
RUN rm -f /etc/nginx/conf.d/*
COPY default.conf /etc/nginx/conf.d/default.conf

# Copy html files
COPY markdown-editor.html /usr/share/nginx/html/markdown-editor.html
COPY markdown-editor.css /usr/share/nginx/html/markdown-editor.css
COPY markdown-editor.js /usr/share/nginx/html/markdown-editor.js

ENV PORT=8080
EXPOSE 8080

ENTRYPOINT ["nginx", "-g", "daemon off;"]