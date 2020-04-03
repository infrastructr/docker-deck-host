#!/bin/bash
set -e

echo "$(ip -4 route list match 0/0 | cut -d' ' -f3) $DEV_INFRASTRUCTR_DECK_API_HOSTNAME" >> /etc/hosts
cron
exec "$@"
