BEGIN;

WITH seeded_orchids AS (
  INSERT INTO orchids (
    slug,
    common_name,
    scientific_name,
    genus,
    short_description,
    native_region,
    growth_type,
    image_url,
    image_alt,
    image_source_url,
    image_license,
    image_attribution
  )
  VALUES
    (
      'moth-orchid',
      'Moth Orchid',
      'Phalaenopsis amabilis',
      'Phalaenopsis',
      'A popular indoor orchid known for long-lasting arching sprays of rounded flowers.',
      'Southeast Asia and northern Australia',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/5/59/Phalaenopsis_amabilis_Orchi_198.jpg',
      'White Phalaenopsis amabilis moth orchid flowers with yellow and red markings.',
      'https://commons.wikimedia.org/wiki/File:Phalaenopsis_amabilis_Orchi_198.jpg',
      'CC BY-SA 3.0',
      'Orchi, via Wikimedia Commons'
    ),
    (
      'corsage-orchid',
      'Corsage Orchid',
      'Cattleya labiata',
      'Cattleya',
      'A classic large-flowered orchid group valued for fragrant, showy blooms.',
      'Brazil',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/c/c1/Cattleya_labiata_Orchi_1013.jpg',
      'Purple Cattleya labiata corsage orchid flower with a ruffled lip.',
      'https://commons.wikimedia.org/wiki/File:Cattleya_labiata_Orchi_1013.jpg',
      'CC BY-SA 3.0',
      'Orchi, via Wikimedia Commons'
    ),
    (
      'lady-slipper-orchid',
      'Lady Slipper Orchid',
      'Paphiopedilum insigne',
      'Paphiopedilum',
      'A slipper orchid with a pouch-shaped lip and attractive mottled or strap-like foliage.',
      'Northeastern India and nearby Himalayan regions',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/e/e3/Paphiopedilum_insigne_Orchi_01.jpg',
      'Paphiopedilum insigne lady slipper orchid flower with a pouch-shaped lip.',
      'https://commons.wikimedia.org/wiki/File:Paphiopedilum_insigne_Orchi_01.jpg',
      'CC BY-SA 3.0',
      'Orchi, via Wikimedia Commons'
    ),
    (
      'noble-dendrobium',
      'Noble Dendrobium',
      'Dendrobium nobile',
      'Dendrobium',
      'A cane-forming orchid that can bloom heavily from nodes along mature stems.',
      'Himalayan and Southeast Asian regions',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/b/bb/Dendrobium_nobile_-_flower_view_01.jpg',
      'Close view of a pale Dendrobium nobile flower with a dark purple throat.',
      'https://commons.wikimedia.org/wiki/File:Dendrobium_nobile_-_flower_view_01.jpg',
      'CC BY-SA 4.0',
      'Fan Wen, via Wikimedia Commons'
    ),
    (
      'dancing-lady-orchid',
      'Dancing Lady Orchid',
      'Oncidium sphacelatum',
      'Oncidium',
      'A warm-growing orchid with branching sprays of small yellow flowers.',
      'Mexico, Central America, and northern South America',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/3/37/Oncidium_sphacelatum03.jpg',
      'Branching spray of yellow Oncidium sphacelatum dancing lady orchid flowers.',
      'https://commons.wikimedia.org/wiki/File:Oncidium_sphacelatum03.jpg',
      'CC BY-SA 3.0',
      'Michael Wolf, via Wikimedia Commons'
    ),
    (
      'blue-vanda',
      'Blue Vanda',
      'Vanda coerulea',
      'Vanda',
      'A striking vandaceous orchid known for long-lasting blue to violet flowers.',
      'Northeast India, Myanmar, Thailand, and southern China',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/5/5c/Vanda_coerulea_-_United_States_Botanic_Garden_-_DSC09600.JPG',
      'Blue-purple Vanda coerulea orchid flowers on an upright spray.',
      'https://commons.wikimedia.org/wiki/File:Vanda_coerulea_-_United_States_Botanic_Garden_-_DSC09600.JPG',
      'CC0',
      'Daderot, via Wikimedia Commons'
    ),
    (
      'spider-orchid',
      'Spider Orchid',
      'Brassia verrucosa',
      'Brassia',
      'An orchid with very long narrow petals and sepals that give the flowers a spider-like shape.',
      'Mexico, Central America, Venezuela, and Brazil',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/8/84/Brassia_verrucosa_Orchi_03.jpg',
      'Brassia verrucosa spider orchid flowers with long narrow yellow-green segments.',
      'https://commons.wikimedia.org/wiki/File:Brassia_verrucosa_Orchi_03.jpg',
      'CC BY-SA 3.0',
      'Orchi, via Wikimedia Commons'
    ),
    (
      'aloe-leafed-cymbidium',
      'Aloe-leafed Cymbidium',
      'Cymbidium aloifolium',
      'Cymbidium',
      'A warm-growing cymbidium with arching sprays of many small patterned flowers.',
      'South and Southeast Asia',
      'lithophyte',
      'https://upload.wikimedia.org/wikipedia/commons/a/a8/CymbidiumAloifolium2.jpg',
      'Cymbidium aloifolium orchid flowers arranged along a pendant spray.',
      'https://commons.wikimedia.org/wiki/File:CymbidiumAloifolium2.jpg',
      'Public domain',
      'Chhe, via Wikimedia Commons'
    ),
    (
      'outstanding-miltonia',
      'Outstanding Miltonia',
      'Miltonia spectabilis',
      'Miltonia',
      'A Brazilian orchid with broad, open flowers often marked with contrasting lips.',
      'Eastern Brazil',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/6/6d/Miltonia_spectabilis2.jpg',
      'Miltonia spectabilis orchid flower with pale petals and a colorful lip.',
      'https://commons.wikimedia.org/wiki/File:Miltonia_spectabilis2.jpg',
      'CC BY-SA 3.0',
      'KENPEI, via Wikimedia Commons'
    ),
    (
      'vanilla-orchid',
      'Vanilla Orchid',
      'Vanilla planifolia',
      'Vanilla',
      'A climbing orchid grown for aromatic seed pods used to produce vanilla.',
      'Mexico, Central America, Colombia, and northern Brazil',
      'semi-terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/4/40/Vanilla_planifolia_1.jpg',
      'Vanilla planifolia orchid vine with pale green-yellow flowers.',
      'https://commons.wikimedia.org/wiki/File:Vanilla_planifolia_1.jpg',
      'Public domain',
      'Everglades National Park, via Wikimedia Commons'
    )
  RETURNING id, slug
)
INSERT INTO orchid_care_profiles (
  orchid_id,
  difficulty,
  light_needs,
  watering_needs,
  humidity_min_percent,
  humidity_max_percent,
  temperature_min_celsius,
  temperature_max_celsius,
  potting_medium,
  bloom_season,
  bloom_notes,
  care_summary
)
SELECT
  id,
  CASE slug
    WHEN 'moth-orchid' THEN 'beginner'
    WHEN 'corsage-orchid' THEN 'intermediate'
    WHEN 'lady-slipper-orchid' THEN 'intermediate'
    WHEN 'noble-dendrobium' THEN 'intermediate'
    WHEN 'dancing-lady-orchid' THEN 'beginner'
    WHEN 'blue-vanda' THEN 'advanced'
    WHEN 'spider-orchid' THEN 'intermediate'
    WHEN 'aloe-leafed-cymbidium' THEN 'intermediate'
    WHEN 'outstanding-miltonia' THEN 'intermediate'
    WHEN 'vanilla-orchid' THEN 'advanced'
  END,
  CASE slug
    WHEN 'moth-orchid' THEN 'bright-indirect'
    WHEN 'corsage-orchid' THEN 'high'
    WHEN 'lady-slipper-orchid' THEN 'medium'
    WHEN 'noble-dendrobium' THEN 'bright-indirect'
    WHEN 'dancing-lady-orchid' THEN 'bright-indirect'
    WHEN 'blue-vanda' THEN 'high'
    WHEN 'spider-orchid' THEN 'bright-indirect'
    WHEN 'aloe-leafed-cymbidium' THEN 'bright-indirect'
    WHEN 'outstanding-miltonia' THEN 'medium'
    WHEN 'vanilla-orchid' THEN 'bright-indirect'
  END,
  CASE slug
    WHEN 'moth-orchid' THEN 'moderate'
    WHEN 'corsage-orchid' THEN 'moderate'
    WHEN 'lady-slipper-orchid' THEN 'moderate'
    WHEN 'noble-dendrobium' THEN 'moderate'
    WHEN 'dancing-lady-orchid' THEN 'moderate'
    WHEN 'blue-vanda' THEN 'frequent'
    WHEN 'spider-orchid' THEN 'moderate'
    WHEN 'aloe-leafed-cymbidium' THEN 'moderate'
    WHEN 'outstanding-miltonia' THEN 'moderate'
    WHEN 'vanilla-orchid' THEN 'frequent'
  END,
  CASE slug
    WHEN 'moth-orchid' THEN 50
    WHEN 'corsage-orchid' THEN 50
    WHEN 'lady-slipper-orchid' THEN 50
    WHEN 'noble-dendrobium' THEN 45
    WHEN 'dancing-lady-orchid' THEN 50
    WHEN 'blue-vanda' THEN 60
    WHEN 'spider-orchid' THEN 55
    WHEN 'aloe-leafed-cymbidium' THEN 50
    WHEN 'outstanding-miltonia' THEN 60
    WHEN 'vanilla-orchid' THEN 70
  END,
  CASE slug
    WHEN 'moth-orchid' THEN 70
    WHEN 'corsage-orchid' THEN 70
    WHEN 'lady-slipper-orchid' THEN 70
    WHEN 'noble-dendrobium' THEN 65
    WHEN 'dancing-lady-orchid' THEN 75
    WHEN 'blue-vanda' THEN 85
    WHEN 'spider-orchid' THEN 80
    WHEN 'aloe-leafed-cymbidium' THEN 75
    WHEN 'outstanding-miltonia' THEN 80
    WHEN 'vanilla-orchid' THEN 90
  END,
  CASE slug
    WHEN 'moth-orchid' THEN 18
    WHEN 'corsage-orchid' THEN 16
    WHEN 'lady-slipper-orchid' THEN 16
    WHEN 'noble-dendrobium' THEN 10
    WHEN 'dancing-lady-orchid' THEN 18
    WHEN 'blue-vanda' THEN 18
    WHEN 'spider-orchid' THEN 16
    WHEN 'aloe-leafed-cymbidium' THEN 18
    WHEN 'outstanding-miltonia' THEN 18
    WHEN 'vanilla-orchid' THEN 20
  END,
  CASE slug
    WHEN 'moth-orchid' THEN 29
    WHEN 'corsage-orchid' THEN 30
    WHEN 'lady-slipper-orchid' THEN 27
    WHEN 'noble-dendrobium' THEN 28
    WHEN 'dancing-lady-orchid' THEN 30
    WHEN 'blue-vanda' THEN 32
    WHEN 'spider-orchid' THEN 28
    WHEN 'aloe-leafed-cymbidium' THEN 32
    WHEN 'outstanding-miltonia' THEN 28
    WHEN 'vanilla-orchid' THEN 32
  END,
  CASE slug
    WHEN 'moth-orchid' THEN 'Medium bark mix with good drainage and airflow.'
    WHEN 'corsage-orchid' THEN 'Coarse bark mix or mounted culture for strong root aeration.'
    WHEN 'lady-slipper-orchid' THEN 'Fine bark mix with moisture retention and steady drainage.'
    WHEN 'noble-dendrobium' THEN 'Small to medium bark mix; allow a cooler, drier winter rest.'
    WHEN 'dancing-lady-orchid' THEN 'Fine to medium bark mix that dries lightly between watering.'
    WHEN 'blue-vanda' THEN 'Open basket, coarse bark, or mounted culture with excellent airflow.'
    WHEN 'spider-orchid' THEN 'Medium bark mix that keeps roots airy but not fully dry for long.'
    WHEN 'aloe-leafed-cymbidium' THEN 'Coarse bark mix or mounted culture with strong drainage.'
    WHEN 'outstanding-miltonia' THEN 'Fine to medium bark mix with steady moisture and drainage.'
    WHEN 'vanilla-orchid' THEN 'Rich, fast-draining organic mix with a support for climbing roots.'
  END,
  CASE slug
    WHEN 'moth-orchid' THEN 'varies'
    WHEN 'corsage-orchid' THEN 'spring'
    WHEN 'lady-slipper-orchid' THEN 'winter'
    WHEN 'noble-dendrobium' THEN 'spring'
    WHEN 'dancing-lady-orchid' THEN 'varies'
    WHEN 'blue-vanda' THEN 'autumn'
    WHEN 'spider-orchid' THEN 'summer'
    WHEN 'aloe-leafed-cymbidium' THEN 'spring'
    WHEN 'outstanding-miltonia' THEN 'summer'
    WHEN 'vanilla-orchid' THEN 'varies'
  END,
  CASE slug
    WHEN 'moth-orchid' THEN 'Can bloom indoors for several months when kept warm and evenly cared for.'
    WHEN 'corsage-orchid' THEN 'Large fragrant flowers usually appear from mature pseudobulbs.'
    WHEN 'lady-slipper-orchid' THEN 'Distinctive pouch-shaped blooms can last for weeks.'
    WHEN 'noble-dendrobium' THEN 'Blooms form along mature canes after a cooler, brighter rest period.'
    WHEN 'dancing-lady-orchid' THEN 'Branching sprays carry many small flowers, often yellow or brown-marked.'
    WHEN 'blue-vanda' THEN 'Tall sprays carry blue to violet flowers that can last for several weeks.'
    WHEN 'spider-orchid' THEN 'Spider-like flowers open from arching sprays, often in warm bright seasons.'
    WHEN 'aloe-leafed-cymbidium' THEN 'Pendant sprays can carry many small patterned blooms.'
    WHEN 'outstanding-miltonia' THEN 'Flat open flowers are often showy and may appear from mature growths.'
    WHEN 'vanilla-orchid' THEN 'Short-lived pale flowers may need hand pollination to produce pods.'
  END,
  CASE slug
    WHEN 'moth-orchid' THEN 'Keep warm in bright indirect light, water when the bark is nearly dry, and avoid water sitting in the crown.'
    WHEN 'corsage-orchid' THEN 'Provide bright light, strong airflow, and a drying period between thorough waterings.'
    WHEN 'lady-slipper-orchid' THEN 'Grow in moderate light with evenly moist media, avoiding complete dryness.'
    WHEN 'noble-dendrobium' THEN 'Grow bright and warm during active growth, then give a cooler, drier rest to encourage bloom.'
    WHEN 'dancing-lady-orchid' THEN 'Give bright filtered light, steady humidity, and water as the potting mix approaches dryness.'
    WHEN 'blue-vanda' THEN 'Grow very bright and humid with strong airflow, frequent watering, and quick root drying.'
    WHEN 'spider-orchid' THEN 'Provide bright filtered light, good humidity, and water before the media stays dry too long.'
    WHEN 'aloe-leafed-cymbidium' THEN 'Grow warm in bright filtered light with strong drainage and steady active-season watering.'
    WHEN 'outstanding-miltonia' THEN 'Keep evenly moist in medium light with warm conditions and gentle airflow.'
    WHEN 'vanilla-orchid' THEN 'Grow warm and humid with filtered light, a climbing support, and consistent moisture without soggy roots.'
  END
FROM seeded_orchids;

COMMIT;
