export type OrchidGrowthType = "epiphyte" | "terrestrial" | "lithophyte" | "semi-terrestrial";

export type OrchidDifficulty = "beginner" | "intermediate" | "advanced";

export type OrchidLightNeeds = "low" | "medium" | "bright-indirect" | "high";

export type OrchidWateringNeeds = "low" | "moderate" | "frequent";

export type OrchidBloomSeason = "winter" | "spring" | "summer" | "autumn" | "varies";

export type OrchidListItem = {
  slug: string;
  commonName: string;
  scientificName: string;
  genus: string;
  shortDescription: string;
  growthType: OrchidGrowthType;
  difficulty: OrchidDifficulty;
  lightNeeds: OrchidLightNeeds;
  wateringNeeds: OrchidWateringNeeds;
  bloomSeason: OrchidBloomSeason;
  imageUrl: string | null;
  imageAlt: string | null;
};

export type OrchidDetail = OrchidListItem & {
  nativeRegion: string;
  humidityMinPercent: number;
  humidityMaxPercent: number;
  temperatureMinCelsius: number;
  temperatureMaxCelsius: number;
  pottingMedium: string;
  bloomNotes: string;
  careSummary: string;
  imageSourceUrl: string | null;
  imageLicense: string | null;
  imageAttribution: string | null;
};

export type OrchidListFilters = {
  q?: string;
  difficulty?: OrchidDifficulty;
  light?: OrchidLightNeeds;
  water?: OrchidWateringNeeds;
  humidity?: number;
  temperature?: number;
  growthType?: OrchidGrowthType;
  bloomSeason?: OrchidBloomSeason;
};

export type OrchidListResponse = {
  orchids: OrchidListItem[];
};

export type OrchidDetailResponse = {
  orchid: OrchidDetail;
};
