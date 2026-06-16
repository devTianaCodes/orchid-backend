import cors from "cors";
import express from "express";
import helmet from "helmet";

import { env } from "./config/env.js";
import { errorHandler } from "./middleware/errorHandler.js";
import { notFoundHandler } from "./middleware/notFoundHandler.js";
import { requestLogger } from "./middleware/requestLogger.js";
import { healthRouter } from "./modules/health/health.routes.js";
import { orchidFilterRouter, orchidRouter } from "./modules/orchids/orchid.routes.js";

export function createApp() {
  const app = express();

  app.use(helmet());
  app.use(cors({ origin: env.corsOrigin }));
  app.use(express.json());
  app.use(requestLogger);

  app.use("/api/health", healthRouter);
  app.use("/api/orchids", orchidRouter);
  app.use("/api/orchid-filters", orchidFilterRouter);

  app.use(notFoundHandler);
  app.use(errorHandler);

  return app;
}
