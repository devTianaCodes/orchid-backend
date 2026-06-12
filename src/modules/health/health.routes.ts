import express from "express";

import type { HealthResponse } from "./health.types.js";

export const healthRouter = express.Router();

healthRouter.get("/", (_request, response) => {
  const health: HealthResponse = {
    status: "ok",
    service: "orchid-backend",
  };

  response.json(health);
});
