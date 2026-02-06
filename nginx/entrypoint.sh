#!/bin/sh
set -e
printf '%s:%s\n' "$BASIC_AUTH_USER" "$(mkpasswd -m sha-512 "$BASIC_AUTH_PASSWORD")" > /etc/nginx/.htpasswd
exec /docker-entrypoint.sh nginx -g 'daemon off;'
