import type { Pool } from "pg";

import type { OrchidListItem } from "./orchid.types.js";

export type OrchidRepository = {
  listOrchids: () => Promise<OrchidListItem[]>;
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
    async listOrchids() {
      const result = await pool.query<OrchidListRow>(`
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
        ORDER BY orchids.common_name ASC
      `);

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
