import type { NextFunction, Request, Response } from "express";

import type { OrchidService } from "./orchid.service.js";
import type {
  OrchidBloomSeason,
  OrchidDifficulty,
  OrchidGrowthType,
  OrchidLightNeeds,
  OrchidListFilters,
  OrchidWateringNeeds,
} from "./orchid.types.js";

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
    async listOrchids(request, response) {
      const filters = parseListFilters(request);

      if ("error" in filters) {
        response.status(400).json({
          error: {
            message: filters.error,
          },
        });

        return;
      }

      const orchids = await service.listOrchids(filters);

      response.json(orchids);
    },
  };
}

type ParseResult = OrchidListFilters | { error: string };

const difficultyValues = ["beginner", "intermediate", "advanced"] as const;
const lightValues = ["low", "medium", "bright-indirect", "high"] as const;
const waterValues = ["low", "moderate", "frequent"] as const;
const growthTypeValues = ["epiphyte", "terrestrial", "lithophyte", "semi-terrestrial"] as const;
const bloomSeasonValues = ["winter", "spring", "summer", "autumn", "varies"] as const;

function parseListFilters(request: Request): ParseResult {
  const filters: OrchidListFilters = {};
  const query = request.query;

  const q = getSingleQueryValue(query.q);

  if (q) {
    filters.q = q.trim();
  }

  const difficulty = getSingleQueryValue(query.difficulty);

  if (difficulty) {
    if (!isOneOf(difficulty, difficultyValues)) {
      return { error: `Invalid difficulty filter: ${difficulty}` };
    }

    filters.difficulty = difficulty as OrchidDifficulty;
  }

  const light = getSingleQueryValue(query.light);

  if (light) {
    if (!isOneOf(light, lightValues)) {
      return { error: `Invalid light filter: ${light}` };
    }

    filters.light = light as OrchidLightNeeds;
  }

  const water = getSingleQueryValue(query.water);

  if (water) {
    if (!isOneOf(water, waterValues)) {
      return { error: `Invalid water filter: ${water}` };
    }

    filters.water = water as OrchidWateringNeeds;
  }

  const humidity = parseNumberQueryValue("humidity", query.humidity);

  if ("error" in humidity) {
    return humidity;
  }

  if (typeof humidity.value === "number") {
    filters.humidity = humidity.value;
  }

  const temperature = parseNumberQueryValue("temperature", query.temperature);

  if ("error" in temperature) {
    return temperature;
  }

  if (typeof temperature.value === "number") {
    filters.temperature = temperature.value;
  }

  const growthType = getSingleQueryValue(query.growthType);

  if (growthType) {
    if (!isOneOf(growthType, growthTypeValues)) {
      return { error: `Invalid growthType filter: ${growthType}` };
    }

    filters.growthType = growthType as OrchidGrowthType;
  }

  const bloomSeason = getSingleQueryValue(query.bloomSeason);

  if (bloomSeason) {
    if (!isOneOf(bloomSeason, bloomSeasonValues)) {
      return { error: `Invalid bloomSeason filter: ${bloomSeason}` };
    }

    filters.bloomSeason = bloomSeason as OrchidBloomSeason;
  }

  return filters;
}

function getSingleQueryValue(value: Request["query"][string]): string | undefined {
  if (typeof value === "string") {
    return value;
  }

  if (Array.isArray(value) && typeof value[0] === "string") {
    return value[0];
  }

  return undefined;
}

function isOneOf<TValue extends string>(
  value: string,
  validValues: readonly TValue[],
): value is TValue {
  return validValues.includes(value as TValue);
}

function parseNumberQueryValue(
  name: string,
  value: Request["query"][string],
): { value?: number } | { error: string } {
  const rawValue = getSingleQueryValue(value);

  if (!rawValue) {
    return {};
  }

  const parsedValue = Number(rawValue);

  if (!Number.isFinite(parsedValue)) {
    return { error: `Invalid ${name} filter: ${rawValue}` };
  }

  return { value: parsedValue };
}
