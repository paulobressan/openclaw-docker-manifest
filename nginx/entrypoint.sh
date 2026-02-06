#!/bin/sh
set -e
printf '%s:%s\n' "$BASIC_AUTH_USER" "$(openssl passwd -apr1 "$BASIC_AUTH_PASSWORD")" > /etc/nginx/.htpasswd
exec /docker-entrypoint.sh nginx -g 'daemon off;'
