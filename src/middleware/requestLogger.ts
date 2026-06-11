import type { RequestHandler } from "express";

export const requestLogger: RequestHandler = (request, _response, next) => {
  if (process.env.NODE_ENV !== "test") {
    console.info(`${request.method} ${request.originalUrl}`);
  }

  next();
};
