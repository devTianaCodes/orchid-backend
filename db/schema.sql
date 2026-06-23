BEGIN;

DROP TABLE IF EXISTS orchid_care_profiles;
DROP TABLE IF EXISTS orchids;

CREATE TABLE orchids (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  slug TEXT NOT NULL UNIQUE,
  common_name TEXT NOT NULL,
  scientific_name TEXT NOT NULL,
  genus TEXT NOT NULL,
  short_description TEXT NOT NULL,
  native_region TEXT NOT NULL,
  is_rare BOOLEAN NOT NULL DEFAULT FALSE,
  growth_type TEXT NOT NULL CHECK (
    growth_type IN ('epiphyte', 'terrestrial', 'lithophyte', 'semi-terrestrial')
  ),
  image_url TEXT,
  image_alt TEXT,
  image_source_url TEXT,
  image_license TEXT,
  image_attribution TEXT,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  CONSTRAINT orchid_slug_format CHECK (slug ~ '^[a-z0-9]+(?:-[a-z0-9]+)*$'),
  CONSTRAINT orchid_image_metadata CHECK (
    image_url IS NULL
    OR (
      image_alt IS NOT NULL
      AND image_source_url IS NOT NULL
      AND image_license IS NOT NULL
      AND image_attribution IS NOT NULL
    )
  )
);

CREATE TABLE orchid_care_profiles (
  id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
  orchid_id BIGINT NOT NULL UNIQUE REFERENCES orchids(id) ON DELETE CASCADE,
  difficulty TEXT NOT NULL CHECK (difficulty IN ('beginner', 'intermediate', 'advanced')),
  light_needs TEXT NOT NULL CHECK (
    light_needs IN ('low', 'medium', 'bright-indirect', 'high')
  ),
  watering_needs TEXT NOT NULL CHECK (watering_needs IN ('low', 'moderate', 'frequent')),
  humidity_min_percent SMALLINT NOT NULL CHECK (
    humidity_min_percent >= 0
    AND humidity_min_percent <= 100
  ),
  humidity_max_percent SMALLINT NOT NULL CHECK (
    humidity_max_percent >= humidity_min_percent
    AND humidity_max_percent <= 100
  ),
  temperature_min_celsius SMALLINT NOT NULL,
  temperature_max_celsius SMALLINT NOT NULL CHECK (
    temperature_max_celsius >= temperature_min_celsius
  ),
  potting_medium TEXT NOT NULL,
  bloom_season TEXT NOT NULL CHECK (
    bloom_season IN ('winter', 'spring', 'summer', 'autumn', 'varies')
  ),
  bloom_notes TEXT NOT NULL,
  care_summary TEXT NOT NULL,
  created_at TIMESTAMPTZ NOT NULL DEFAULT NOW(),
  updated_at TIMESTAMPTZ NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_orchids_slug ON orchids(slug);
CREATE INDEX idx_orchids_common_name ON orchids(common_name);
CREATE INDEX idx_orchids_scientific_name ON orchids(scientific_name);
CREATE INDEX idx_orchids_genus ON orchids(genus);
CREATE INDEX idx_orchids_growth_type ON orchids(growth_type);
CREATE INDEX idx_orchid_care_profiles_difficulty ON orchid_care_profiles(difficulty);
CREATE INDEX idx_orchid_care_profiles_light_needs ON orchid_care_profiles(light_needs);
CREATE INDEX idx_orchid_care_profiles_watering_needs ON orchid_care_profiles(watering_needs);
CREATE INDEX idx_orchid_care_profiles_bloom_season ON orchid_care_profiles(bloom_season);

CREATE OR REPLACE FUNCTION set_updated_at()
RETURNS TRIGGER AS $$
BEGIN
  NEW.updated_at = NOW();
  RETURN NEW;
END;
$$ LANGUAGE plpgsql;

CREATE TRIGGER set_orchids_updated_at
BEFORE UPDATE ON orchids
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

CREATE TRIGGER set_orchid_care_profiles_updated_at
BEFORE UPDATE ON orchid_care_profiles
FOR EACH ROW
EXECUTE FUNCTION set_updated_at();

COMMIT;
