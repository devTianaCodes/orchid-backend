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
  getOrchidBySlug: OrchidRequestHandler;
  getFilterMetadata: OrchidRequestHandler;
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

    async getOrchidBySlug(request, response) {
      const slug = getRouteParamValue(request.params.slug);

      if (!slug || !isValidSlug(slug)) {
        response.status(400).json({
          error: {
            message: "Invalid orchid slug",
          },
        });

        return;
      }

      const orchid = await service.getOrchidBySlug(slug);

      if (!orchid) {
        response.status(404).json({
          error: {
            message: `Orchid not found: ${slug}`,
          },
        });

        return;
      }

      response.json(orchid);
    },

    async getFilterMetadata(_request, response) {
      const metadata = await service.getFilterMetadata();

      response.json(metadata);
    },
  };
}

type ParseResult = OrchidListFilters | { error: string };

const difficultyValues = ["beginner", "intermediate", "advanced"] as const;
const lightValues = ["low", "medium", "bright-indirect", "high"] as const;
const waterValues = ["low", "moderate", "frequent"] as const;
const growthTypeValues = ["epiphyte", "terrestrial", "lithophyte", "semi-terrestrial"] as const;
const bloomSeasonValues = ["winter", "spring", "summer", "autumn", "varies"] as const;
const defaultPage = 1;
const defaultPageSize = 12;
const maxPageSize = 40;

function parseListFilters(request: Request): ParseResult {
  const filters: OrchidListFilters = {
    page: defaultPage,
    pageSize: defaultPageSize,
  };
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

  const page = parsePositiveIntegerQueryValue("page", query.page);

  if ("error" in page) {
    return page;
  }

  if (typeof page.value === "number") {
    filters.page = page.value;
  }

  const pageSize = parsePositiveIntegerQueryValue("pageSize", query.pageSize);

  if ("error" in pageSize) {
    return pageSize;
  }

  if (typeof pageSize.value === "number") {
    if (pageSize.value > maxPageSize) {
      return { error: `pageSize must be less than or equal to ${maxPageSize}` };
    }

    filters.pageSize = pageSize.value;
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

function getRouteParamValue(value: string | string[]): string | undefined {
  return Array.isArray(value) ? value[0] : value;
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

function parsePositiveIntegerQueryValue(
  name: string,
  value: Request["query"][string],
): { value?: number } | { error: string } {
  const rawValue = getSingleQueryValue(value);

  if (!rawValue) {
    return {};
  }

  const parsedValue = Number(rawValue);

  if (!Number.isInteger(parsedValue) || parsedValue < 1) {
    return { error: `${name} must be a positive integer` };
  }

  return { value: parsedValue };
}

function isValidSlug(slug: string) {
  return /^[a-z0-9]+(?:-[a-z0-9]+)*$/.test(slug);
}
