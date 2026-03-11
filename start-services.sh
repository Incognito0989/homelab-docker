#!/bin/bash
cd "$(dirname "$0")"

docker compose -f docker/immich/docker-compose.yml \
               -f docker/jellyfin/docker-compose.yml \
               -f docker/monitoring/docker-compose.yml \
               -f docker/pihole/docker-compose.yml \
               up -d