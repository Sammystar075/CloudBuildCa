FROM nginx:stable-alpine

# Remove ALL default configs and copy yours
RUN rm -f /etc/nginx/conf.d/*
RUN apk add --no-cache git
COPY default.conf /etc/nginx/conf.d/default.conf


RUN rm -rf /usr/share/nginx/html/*

#Git Clone
RUN git clone https://github.com/Sammystar075/kindle-suite.git /usr/share/nginx/html/


# Copy html files

ENV PORT=8080
EXPOSE 8080

ENTRYPOINT ["nginx", "-g", "daemon off;"]