#!/bin/sh
# Pod ip
POD_IP=$(hostname -I | awk '{print $1}')

echo "<h1>Container / Pod IP: ${POD_IP}</h1>" > /usr/share/nginx/html/index.html
exec nginx -g 'daemon off;'
