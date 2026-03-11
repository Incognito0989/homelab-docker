# Homelab Docker

This repository contains Docker Compose configurations used to deploy and manage services in my personal homelab environment.

The goal of this project is to maintain reproducible infrastructure configurations for self-hosted applications using Docker and Docker Compose.

## Overview

This repository demonstrates how to deploy and manage containerized services for media streaming, photo management, and reverse proxy routing. Each service is organized into its own directory with its own Docker Compose configuration.

The setup focuses on:

- Containerized infrastructure
- Persistent storage
- Service isolation
- Simple deployment and reproducibility

## Services

### Jellyfin
Self-hosted media server for streaming movies and TV shows.

Features:
- Hardware accelerated streaming support
- Local media library management
- Multi-device playback

### Immich
Self-hosted photo and video backup platform with machine learning features.

Features:
- Automatic photo backup
- Face recognition
- Smart search and tagging
- Mobile and web access

### Nginx Proxy Manager
Reverse proxy used to route external traffic to internal services.

Features:
- Simple web interface
- SSL certificate management with Let's Encrypt
- Host-based routing for homelab services

## Requirements

- Docker
- Docker Compose
- Linux or Windows server capable of running containers


### Start Services

You can start services individually or run all services at once.

#### Start an individual service

Navigate to the service directory and start the stack:

```cd <docker-compose directory>```

```docker compose up -d```

Example:

```cd immich```

```docker compose up -d```

Repeat the process for other services such as `jellyfin` or `nginx-proxy-manager`.

#### Start all services

From the repository root, start all services using the root Docker Compose file:


```docker compose up -d```

This will start all services defined in the root `docker-compose.yml`.

## Configuration

Environment variables should be defined in a `.env` file for each service where required.  
Example files (`.env.example`) should be used as templates.

Sensitive information such as passwords or API keys should **not be committed to the repository**.

## Purpose

This project serves as both:

- A personal infrastructure repository for managing my homelab
- A demonstration of containerized service deployment using Docker Compose