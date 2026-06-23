import type { Pool } from "pg";

import type {
  OrchidBloomSeason,
  OrchidDetail,
  OrchidDifficulty,
  OrchidFilterMetadataResponse,
  OrchidGrowthType,
  OrchidLightNeeds,
  OrchidListFilters,
  OrchidListItem,
  OrchidWateringNeeds,
} from "./orchid.types.js";

export type OrchidRepository = {
  listOrchids: (
    filters: OrchidListFilters,
  ) => Promise<{ orchids: OrchidListItem[]; totalItems: number }>;
  findOrchidBySlug: (slug: string) => Promise<OrchidDetail | null>;
  getFilterMetadata: () => Promise<OrchidFilterMetadataResponse>;
};

type OrchidListRow = {
  slug: string;
  common_name: string;
  scientific_name: string;
  genus: string;
  short_description: string;
  is_rare: boolean;
  growth_type: OrchidListItem["growthType"];
  difficulty: OrchidListItem["difficulty"];
  light_needs: OrchidListItem["lightNeeds"];
  watering_needs: OrchidListItem["wateringNeeds"];
  bloom_season: OrchidListItem["bloomSeason"];
  image_url: string | null;
  image_alt: string | null;
};

type OrchidDetailRow = OrchidListRow & {
  native_region: string;
  humidity_min_percent: number;
  humidity_max_percent: number;
  temperature_min_celsius: number;
  temperature_max_celsius: number;
  potting_medium: string;
  bloom_notes: string;
  care_summary: string;
  image_source_url: string | null;
  image_license: string | null;
  image_attribution: string | null;
};

type OrchidFilterMetadataRow = {
  difficulties: OrchidDifficulty[];
  light_needs: OrchidLightNeeds[];
  watering_needs: OrchidWateringNeeds[];
  growth_types: OrchidGrowthType[];
  bloom_seasons: OrchidBloomSeason[];
  humidity_min_percent: number;
  humidity_max_percent: number;
  temperature_min_celsius: number;
  temperature_max_celsius: number;
};

type OrchidCountRow = {
  total_items: string;
};

export function createOrchidRepository(pool: Pool): OrchidRepository {
  return {
    async listOrchids(filters) {
      const { params, whereSql } = buildListFilterQuery(filters);
      const offset = (filters.page - 1) * filters.pageSize;

      const countResult = await pool.query<OrchidCountRow>(
        `
        SELECT COUNT(*) AS total_items
        FROM orchids
        INNER JOIN orchid_care_profiles ON orchid_care_profiles.orchid_id = orchids.id
        ${whereSql}
      `,
        params,
      );

      const result = await pool.query<OrchidListRow>(
        `
        SELECT
          orchids.slug,
          orchids.common_name,
          orchids.scientific_name,
          orchids.genus,
          orchids.short_description,
          orchids.is_rare,
          orchids.growth_type,
          orchid_care_profiles.difficulty,
          orchid_care_profiles.light_needs,
          orchid_care_profiles.watering_needs,
          orchid_care_profiles.bloom_season,
          orchids.image_url,
          orchids.image_alt
        FROM orchids
        INNER JOIN orchid_care_profiles ON orchid_care_profiles.orchid_id = orchids.id
        ${whereSql}
        ORDER BY orchids.common_name ASC
        LIMIT $${params.length + 1}
        OFFSET $${params.length + 2}
      `,
        [...params, filters.pageSize, offset],
      );

      return {
        orchids: result.rows.map(mapOrchidListRow),
        totalItems: Number(countResult.rows[0]?.total_items ?? 0),
      };
    },

    async findOrchidBySlug(slug) {
      const result = await pool.query<OrchidDetailRow>(
        `
        SELECT
          orchids.slug,
          orchids.common_name,
          orchids.scientific_name,
          orchids.genus,
          orchids.short_description,
          orchids.native_region,
          orchids.is_rare,
          orchids.growth_type,
          orchid_care_profiles.difficulty,
          orchid_care_profiles.light_needs,
          orchid_care_profiles.watering_needs,
          orchid_care_profiles.humidity_min_percent,
          orchid_care_profiles.humidity_max_percent,
          orchid_care_profiles.temperature_min_celsius,
          orchid_care_profiles.temperature_max_celsius,
          orchid_care_profiles.potting_medium,
          orchid_care_profiles.bloom_season,
          orchid_care_profiles.bloom_notes,
          orchid_care_profiles.care_summary,
          orchids.image_url,
          orchids.image_alt,
          orchids.image_source_url,
          orchids.image_license,
          orchids.image_attribution
        FROM orchids
        INNER JOIN orchid_care_profiles ON orchid_care_profiles.orchid_id = orchids.id
        WHERE orchids.slug = $1
        LIMIT 1
      `,
        [slug],
      );

      const row = result.rows[0];

      return row ? mapOrchidDetailRow(row) : null;
    },

    async getFilterMetadata() {
      const result = await pool.query<OrchidFilterMetadataRow>(`
        SELECT
          ARRAY_AGG(DISTINCT orchid_care_profiles.difficulty ORDER BY orchid_care_profiles.difficulty)
            AS difficulties,
          ARRAY_AGG(DISTINCT orchid_care_profiles.light_needs ORDER BY orchid_care_profiles.light_needs)
            AS light_needs,
          ARRAY_AGG(DISTINCT orchid_care_profiles.watering_needs ORDER BY orchid_care_profiles.watering_needs)
            AS watering_needs,
          ARRAY_AGG(DISTINCT orchids.growth_type ORDER BY orchids.growth_type)
            AS growth_types,
          ARRAY_AGG(DISTINCT orchid_care_profiles.bloom_season ORDER BY orchid_care_profiles.bloom_season)
            AS bloom_seasons,
          MIN(orchid_care_profiles.humidity_min_percent) AS humidity_min_percent,
          MAX(orchid_care_profiles.humidity_max_percent) AS humidity_max_percent,
          MIN(orchid_care_profiles.temperature_min_celsius) AS temperature_min_celsius,
          MAX(orchid_care_profiles.temperature_max_celsius) AS temperature_max_celsius
        FROM orchids
        INNER JOIN orchid_care_profiles ON orchid_care_profiles.orchid_id = orchids.id
      `);

      return mapOrchidFilterMetadataRow(result.rows[0]);
    },
  };
}

function mapOrchidListRow(row: OrchidListRow): OrchidListItem {
  return {
    slug: row.slug,
    commonName: row.common_name,
    scientificName: row.scientific_name,
    genus: row.genus,
    shortDescription: row.short_description,
    isRare: row.is_rare,
    growthType: row.growth_type,
    difficulty: row.difficulty,
    lightNeeds: row.light_needs,
    wateringNeeds: row.watering_needs,
    bloomSeason: row.bloom_season,
    imageUrl: row.image_url,
    imageAlt: row.image_alt,
  };
}

function buildListFilterQuery(filters: OrchidListFilters) {
  const params: Array<number | string> = [];
  const whereClauses: string[] = [];

  if (filters.q) {
    params.push(`%${filters.q}%`);
    whereClauses.push(`(
      orchids.common_name ILIKE $${params.length}
      OR orchids.scientific_name ILIKE $${params.length}
      OR orchids.genus ILIKE $${params.length}
      OR orchids.short_description ILIKE $${params.length}
      OR orchid_care_profiles.potting_medium ILIKE $${params.length}
      OR orchid_care_profiles.bloom_notes ILIKE $${params.length}
      OR orchid_care_profiles.care_summary ILIKE $${params.length}
    )`);
  }

  if (filters.difficulty) {
    params.push(filters.difficulty);
    whereClauses.push(`orchid_care_profiles.difficulty = $${params.length}`);
  }

  if (filters.light) {
    params.push(filters.light);
    whereClauses.push(`orchid_care_profiles.light_needs = $${params.length}`);
  }

  if (filters.water) {
    params.push(filters.water);
    whereClauses.push(`orchid_care_profiles.watering_needs = $${params.length}`);
  }

  if (typeof filters.humidity === "number") {
    params.push(filters.humidity);
    whereClauses.push(`$${params.length} BETWEEN orchid_care_profiles.humidity_min_percent
      AND orchid_care_profiles.humidity_max_percent`);
  }

  if (typeof filters.temperature === "number") {
    params.push(filters.temperature);
    whereClauses.push(`$${params.length} BETWEEN orchid_care_profiles.temperature_min_celsius
      AND orchid_care_profiles.temperature_max_celsius`);
  }

  if (filters.growthType) {
    params.push(filters.growthType);
    whereClauses.push(`orchids.growth_type = $${params.length}`);
  }

  if (filters.bloomSeason) {
    params.push(filters.bloomSeason);
    whereClauses.push(`orchid_care_profiles.bloom_season = $${params.length}`);
  }

  return {
    params,
    whereSql: whereClauses.length > 0 ? `WHERE ${whereClauses.join(" AND ")}` : "",
  };
}

function mapOrchidDetailRow(row: OrchidDetailRow): OrchidDetail {
  return {
    ...mapOrchidListRow(row),
    nativeRegion: row.native_region,
    humidityMinPercent: row.humidity_min_percent,
    humidityMaxPercent: row.humidity_max_percent,
    temperatureMinCelsius: row.temperature_min_celsius,
    temperatureMaxCelsius: row.temperature_max_celsius,
    pottingMedium: row.potting_medium,
    bloomNotes: row.bloom_notes,
    careSummary: row.care_summary,
    imageSourceUrl: row.image_source_url,
    imageLicense: row.image_license,
    imageAttribution: row.image_attribution,
  };
}

function mapOrchidFilterMetadataRow(row: OrchidFilterMetadataRow): OrchidFilterMetadataResponse {
  return {
    filters: {
      difficulties: row.difficulties.map(mapFilterOption),
      lightNeeds: row.light_needs.map(mapFilterOption),
      wateringNeeds: row.watering_needs.map(mapFilterOption),
      growthTypes: row.growth_types.map(mapFilterOption),
      bloomSeasons: row.bloom_seasons.map(mapFilterOption),
      humidityPercentRange: {
        min: row.humidity_min_percent,
        max: row.humidity_max_percent,
      },
      temperatureCelsiusRange: {
        min: row.temperature_min_celsius,
        max: row.temperature_max_celsius,
      },
    },
  };
}

function mapFilterOption<TValue extends string>(value: TValue) {
  return {
    value,
    label: formatFilterLabel(value),
  };
}

function formatFilterLabel(value: string) {
  return value
    .split("-")
    .map((part) => part.charAt(0).toUpperCase() + part.slice(1))
    .join(" ");
}
