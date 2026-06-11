# OrchidCare Backend

Backend API for OrchidCare, an orchid encyclopedia web app.

This repository will contain the Node, Express, TypeScript, and PostgreSQL API for orchid data, search, filters, detailed care pages, and future account-backed features.

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

This is a minimal publish-ready scaffold. Real API implementation starts after the repository is published.

## Planned Local Setup

```bash
npm install
npm run dev
```

These commands will be enabled when the Express app is bootstrapped in the next phase.
