# OrchidCare Backend

Backend API for OrchidCare, an orchid encyclopedia web app.

This repository contains the Node, Express, TypeScript, and PostgreSQL API shell for orchid data, search, filters, detailed care pages, and future account-backed features.

## Planned Stack

- Node.js
- Express
- TypeScript
- PostgreSQL
- Docker Compose for local database development
- npm

## Planned MVP API

- `GET /api/health`
- `GET /api/orchids`
- `GET /api/orchids/:slug`
- `GET /api/orchid-filters`

## Planned Database

The MVP database will use PostgreSQL and a repeatable SQL seed file with 50 real orchid types. Orchid image data must include legally reusable source URLs, license information, and attribution.

## Current Status

This is a project bootstrap scaffold. The health API can run, but the orchid database and feature endpoints are still planned work.

## Local Setup

```bash
npm install
npm run dev
```

The API will start on:

```bash
http://localhost:3000/api
```

Health check:

```bash
curl http://localhost:3000/api/health
```

PostgreSQL can be started later with:

```bash
docker compose up -d
```
