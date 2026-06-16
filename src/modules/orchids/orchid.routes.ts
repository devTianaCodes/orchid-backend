import express from "express";

import { pool } from "../../db/pool.js";
import { asyncHandler } from "../../utils/asyncHandler.js";
import { createOrchidController } from "./orchid.controller.js";
import { createOrchidRepository } from "./orchid.repository.js";
import { createOrchidService } from "./orchid.service.js";

const orchidRepository = createOrchidRepository(pool);
const orchidService = createOrchidService(orchidRepository);
const orchidController = createOrchidController(orchidService);

export const orchidRouter = express.Router();

orchidRouter.get("/", asyncHandler(orchidController.listOrchids));
orchidRouter.get("/:slug", asyncHandler(orchidController.getOrchidBySlug));
