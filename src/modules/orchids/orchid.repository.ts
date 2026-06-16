import type { Pool } from "pg";

import type { OrchidListFilters, OrchidListItem } from "./orchid.types.js";

export type OrchidRepository = {
  listOrchids: (filters?: OrchidListFilters) => Promise<OrchidListItem[]>;
};

type OrchidListRow = {
  slug: string;
  common_name: string;
  scientific_name: string;
  genus: string;
  short_description: string;
  growth_type: OrchidListItem["growthType"];
  difficulty: OrchidListItem["difficulty"];
  light_needs: OrchidListItem["lightNeeds"];
  watering_needs: OrchidListItem["wateringNeeds"];
  bloom_season: OrchidListItem["bloomSeason"];
  image_url: string | null;
  image_alt: string | null;
};

export function createOrchidRepository(pool: Pool): OrchidRepository {
  return {
    async listOrchids(filters = {}) {
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

      const whereSql = whereClauses.length > 0 ? `WHERE ${whereClauses.join(" AND ")}` : "";

      const result = await pool.query<OrchidListRow>(
        `
        SELECT
          orchids.slug,
          orchids.common_name,
          orchids.scientific_name,
          orchids.genus,
          orchids.short_description,
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
      `,
        params,
      );

      return result.rows.map(mapOrchidListRow);
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
    growthType: row.growth_type,
    difficulty: row.difficulty,
    lightNeeds: row.light_needs,
    wateringNeeds: row.watering_needs,
    bloomSeason: row.bloom_season,
    imageUrl: row.image_url,
    imageAlt: row.image_alt,
  };
}
