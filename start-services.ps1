# Navigate to repo root
Set-Location -Path $PSScriptRoot

# Start all services
docker compose -f docker/immich/docker-compose.yml `
               -f docker/jellyfin/docker-compose.yml `
               -f docker/monitoring/docker-compose.yml `
               -f docker/pihole/docker-compose.yml `
               up -d