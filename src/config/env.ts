import "dotenv/config";

const defaultPort = 3000;

function readPort(value: string | undefined) {
  if (!value) {
    return defaultPort;
  }

  const port = Number(value);
  if (!Number.isInteger(port) || port <= 0) {
    return defaultPort;
  }

  return port;
}

export const env = {
  port: readPort(process.env.PORT),
  nodeEnv: process.env.NODE_ENV ?? "development",
  databaseUrl:
    process.env.DATABASE_URL ??
    "postgresql://orchidcare:orchidcare@localhost:5432/orchidcare",
  corsOrigin: process.env.CORS_ORIGIN ?? "http://localhost:5173",
  logLevel: process.env.LOG_LEVEL ?? "info",
};
