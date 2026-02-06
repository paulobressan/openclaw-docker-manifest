#!/bin/sh
set -e
printf '%s:%s\n' "$BASIC_AUTH_USER" "$(htpasswd -nbB "" "$BASIC_AUTH_PASSWORD" | cut -d: -f2)" > /etc/nginx/.htpasswd
exec /docker-entrypoint.sh nginx -g 'daemon off;'
