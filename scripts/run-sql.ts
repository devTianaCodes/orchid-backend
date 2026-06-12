import "dotenv/config";

import { readFile } from "node:fs/promises";
import path from "node:path";

import pg from "pg";

const defaultDatabaseUrl = "postgresql://orchidcare:orchidcare@localhost:5432/orchidcare";
const databaseUrl = process.env.DATABASE_URL ?? defaultDatabaseUrl;
const sqlPath = process.argv[2];

if (!sqlPath) {
  console.error("Usage: tsx scripts/run-sql.ts <path-to-sql-file>");
  process.exit(1);
}

const resolvedPath = path.resolve(sqlPath);
const sql = await readFile(resolvedPath, "utf8");
const client = new pg.Client({ connectionString: databaseUrl });

try {
  await client.connect();
  await client.query(sql);
  console.info(`Applied SQL file: ${resolvedPath}`);
} finally {
  await client.end();
}
