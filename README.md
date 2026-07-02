# OrchidCare Backend

Node, Express, TypeScript, and PostgreSQL API for the OrchidCare orchid encyclopedia.

The API serves orchid list data, search and filters, pagination, detail pages, rare orchid records, and image attribution metadata for the frontend.

## Stack

- Node.js
- Express
- TypeScript
- PostgreSQL
- Docker Compose for local database development
- npm

## API Endpoints

- `GET /api/health`
- `GET /api/orchids`
- `GET /api/orchids/:slug`
- `GET /api/orchid-filters`

`GET /api/orchids` supports search, filters, pagination, and rare-orchid filtering.

## Local Setup

Install dependencies:

```bash
npm install
```

Create a local environment file if needed:

```bash
cp .env.example .env
```

Default local values:

```bash
PORT=3000
DATABASE_URL=postgresql://orchidcare:orchidcare@localhost:5432/orchidcare
CORS_ORIGIN=http://localhost:5173
```

Start PostgreSQL:

```bash
docker compose up -d
```

Apply the schema and seed data:

```bash
npm run db:reset
```

Start the API:

```bash
npm run dev
```

The API runs at:

```bash
http://localhost:3000/api
```

Health check:

```bash
curl http://localhost:3000/api/health
```

## Useful Scripts

```bash
npm run lint
npm run format:check
npm run build
npm run db:schema
npm run db:seed
npm run db:reset
```

Use `npm run build` before publishing or reviewing a final change.

## Database Notes

- `db/schema.sql` defines the repeatable PostgreSQL schema.
- `db/seed.sql` seeds the current orchid encyclopedia records, including rare orchids.
- Image data should include a reusable image URL, source URL, license, alt text, and attribution.
- The seed script assumes a clean schema. Use `npm run db:reset` when reloading all seed data locally.

## Later Features

Authentication, synced favorites, personal orchid collections, notes, reminders, and admin content tools are planned after the public MVP is stable.
