# OrchidCare Database

This folder contains the PostgreSQL foundation for the OrchidCare encyclopedia.

## Files

- `schema.sql` - repeatable database schema for orchid encyclopedia tables.
- `seed.sql` - repeatable seed script placeholder for the planned 50 real orchid records.

## Local Usage

Start PostgreSQL:

```bash
docker compose up -d
```

Apply schema and seed data:

```bash
export DATABASE_URL="postgresql://orchidcare:orchidcare@localhost:5432/orchidcare"
npm run db:reset
```

## Data Rules

- Each orchid uses a stable lowercase `slug` for public URLs.
- Care profile records are one-to-one with orchids.
- Image fields must only contain legally reusable images.
- Store image source, license, and attribution whenever an image URL is provided.
