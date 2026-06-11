import express from "express";

export const healthRouter = express.Router();

healthRouter.get("/", (_request, response) => {
  response.json({
    status: "ok",
    service: "orchid-backend",
  });
});
