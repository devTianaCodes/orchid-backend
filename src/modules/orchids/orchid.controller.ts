import type { NextFunction, Request, Response } from "express";

import type { OrchidService } from "./orchid.service.js";

type OrchidRequestHandler = (
  request: Request,
  response: Response,
  next: NextFunction,
) => Promise<void>;

export type OrchidController = {
  listOrchids: OrchidRequestHandler;
};

export function createOrchidController(service: OrchidService): OrchidController {
  return {
    async listOrchids(_request, response) {
      const orchids = await service.listOrchids();

      response.json(orchids);
    },
  };
}
