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
    ),
    (
      'reed-stem-epidendrum',
      'Reed-stem Epidendrum',
      'Epidendrum radicans',
      'Epidendrum',
      'A vigorous reed-stem orchid with clusters of bright orange to red flowers.',
      'Mexico, Central America, and northern South America',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/2/22/Epidendrum_radicans_1.jpg',
      'Cluster of orange Epidendrum radicans reed-stem orchid flowers.',
      'https://commons.wikimedia.org/wiki/File:Epidendrum_radicans_1.jpg',
      'CC BY 3.0',
      'Vaikoovery, via Wikimedia Commons'
    ),
    (
      'jewel-orchid',
      'Jewel Orchid',
      'Ludisia discolor',
      'Ludisia',
      'A terrestrial orchid grown mainly for velvety dark leaves with pale veins.',
      'Southeast Asia',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/7/7a/Ludisia_discolor_%2833319651986%29.jpg',
      'Ludisia discolor jewel orchid foliage with dark leaves and pale veins.',
      'https://commons.wikimedia.org/wiki/File:Ludisia_discolor_(33319651986).jpg',
      'CC BY-SA 2.0',
      'Bjorn S., via Wikimedia Commons'
    ),
    (
      'king-of-the-masdevallias',
      'King of the Masdevallias',
      'Masdevallia veitchiana',
      'Masdevallia',
      'A cool-growing orchid prized for large triangular orange flowers.',
      'Peru',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/6/6a/Masdevallia_veitchiana_-_Orchid_%2819%29.jpg',
      'Orange Masdevallia veitchiana orchid flower with long sepal tails.',
      'https://commons.wikimedia.org/wiki/File:Masdevallia_veitchiana_-_Orchid_(19).jpg',
      'CC BY 2.0',
      'Geoff Gallice, via Wikimedia Commons'
    ),
    (
      'zygopetalum-orchid',
      'Zygopetalum Orchid',
      'Zygopetalum maculatum',
      'Zygopetalum',
      'A fragrant orchid with patterned green and brown petals and a purple lip.',
      'Brazil, Peru, and Bolivia',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/f/f7/A_and_B_Larsen_orchids_-_Zygopetalum_Mackayi_1053-9.jpg',
      'Zygopetalum orchid flower with green patterned petals and a purple lip.',
      'https://commons.wikimedia.org/wiki/File:A_and_B_Larsen_orchids_-_Zygopetalum_Mackayi_1053-9.jpg',
      'CC BY-SA 2.5 DK',
      'Arne and Bent Larsen, via Wikimedia Commons'
    ),
    (
      'crested-coelogyne',
      'Crested Coelogyne',
      'Coelogyne cristata',
      'Coelogyne',
      'A cool-growing orchid with graceful white flowers and yellow crested lips.',
      'Himalayan regions',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/4/45/Coelogyne_cristata_Orchi_103.jpg',
      'White Coelogyne cristata orchid flowers with yellow markings on the lip.',
      'https://commons.wikimedia.org/wiki/File:Coelogyne_cristata_Orchi_103.jpg',
      'CC BY-SA 3.0',
      'Orchi, via Wikimedia Commons'
    ),
    (
      'tiger-stanhopea',
      'Tiger Stanhopea',
      'Stanhopea tigrina',
      'Stanhopea',
      'A dramatic basket-grown orchid with large hanging, fragrant, spotted flowers.',
      'Mexico',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/b/b3/Stanhopea_tigrina%2C_2015-08-08%2C_Phipps_Conservatory%2C_01.jpg',
      'Large spotted Stanhopea tigrina orchid flower hanging below the plant.',
      'https://commons.wikimedia.org/wiki/File:Stanhopea_tigrina,_2015-08-08,_Phipps_Conservatory,_01.jpg',
      'CC0',
      'Cbaile19, via Wikimedia Commons'
    ),
    (
      'darwins-orchid',
      'Darwin''s Orchid',
      'Angraecum sesquipedale',
      'Angraecum',
      'A Madagascan orchid famous for starry white night-fragrant flowers with a very long spur.',
      'Madagascar',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/4/4e/Angraecum_sesquipedale_Thouars%2C_Hist._Orchid._66_%281822%29_%2832375519248%29.jpg',
      'White Angraecum sesquipedale orchid flower with a long nectar spur.',
      'https://commons.wikimedia.org/wiki/File:Angraecum_sesquipedale_Thouars,_Hist._Orchid._66_(1822)_(32375519248).jpg',
      'CC BY 2.0',
      'Sunoochi, via Wikimedia Commons'
    ),
    (
      'laelia-anceps',
      'Laelia Anceps',
      'Laelia anceps',
      'Laelia',
      'A resilient Mexican orchid with elegant lavender flowers on tall stems.',
      'Mexico and Honduras',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/d/d7/Laelia_anceps_001_GotBot_2016.jpg',
      'Lavender Laelia anceps orchid flower on a tall stem.',
      'https://commons.wikimedia.org/wiki/File:Laelia_anceps_001_GotBot_2016.jpg',
      'CC BY 4.0',
      'Averater, via Wikimedia Commons'
    ),
    (
      'coconut-orchid',
      'Coconut Orchid',
      'Maxillaria tenuifolia',
      'Maxillaria',
      'A compact orchid known for coconut-scented red flowers and grassy foliage.',
      'Mexico and Central America',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/0/0b/Maxillaria_tenuifolia%2C_2015-03-13%2C_Phipps_Conservatory.jpg',
      'Red Maxillaria tenuifolia coconut orchid flower among narrow green leaves.',
      'https://commons.wikimedia.org/wiki/File:Maxillaria_tenuifolia,_2015-03-13,_Phipps_Conservatory.jpg',
      'CC0',
      'Cbaile19, via Wikimedia Commons'
    ),
    (
      'monkey-face-orchid',
      'Monkey Face Orchid',
      'Dracula simia',
      'Dracula',
      'A cool, humid cloud-forest orchid with unusual flowers that resemble a monkey face.',
      'Ecuador and Peru',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/5/5a/15.Dracula_simia%2C_the_Monkey_Face_Orchid_%2810957423336%29.jpg',
      'Dracula simia monkey face orchid flower with long tails.',
      'https://commons.wikimedia.org/wiki/File:15.Dracula_simia,_the_Monkey_Face_Orchid_(10957423336).jpg',
      'CC BY 2.0',
      'Dick Culbert, via Wikimedia Commons'
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
    WHEN 'reed-stem-epidendrum' THEN 'beginner'
    WHEN 'jewel-orchid' THEN 'beginner'
    WHEN 'king-of-the-masdevallias' THEN 'advanced'
    WHEN 'zygopetalum-orchid' THEN 'intermediate'
    WHEN 'crested-coelogyne' THEN 'intermediate'
    WHEN 'tiger-stanhopea' THEN 'advanced'
    WHEN 'darwins-orchid' THEN 'advanced'
    WHEN 'laelia-anceps' THEN 'intermediate'
    WHEN 'coconut-orchid' THEN 'intermediate'
    WHEN 'monkey-face-orchid' THEN 'advanced'
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
    WHEN 'reed-stem-epidendrum' THEN 'high'
    WHEN 'jewel-orchid' THEN 'low'
    WHEN 'king-of-the-masdevallias' THEN 'medium'
    WHEN 'zygopetalum-orchid' THEN 'bright-indirect'
    WHEN 'crested-coelogyne' THEN 'bright-indirect'
    WHEN 'tiger-stanhopea' THEN 'bright-indirect'
    WHEN 'darwins-orchid' THEN 'bright-indirect'
    WHEN 'laelia-anceps' THEN 'high'
    WHEN 'coconut-orchid' THEN 'bright-indirect'
    WHEN 'monkey-face-orchid' THEN 'medium'
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
    WHEN 'reed-stem-epidendrum' THEN 'moderate'
    WHEN 'jewel-orchid' THEN 'moderate'
    WHEN 'king-of-the-masdevallias' THEN 'frequent'
    WHEN 'zygopetalum-orchid' THEN 'moderate'
    WHEN 'crested-coelogyne' THEN 'moderate'
    WHEN 'tiger-stanhopea' THEN 'frequent'
    WHEN 'darwins-orchid' THEN 'moderate'
    WHEN 'laelia-anceps' THEN 'moderate'
    WHEN 'coconut-orchid' THEN 'moderate'
    WHEN 'monkey-face-orchid' THEN 'frequent'
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
    WHEN 'reed-stem-epidendrum' THEN 45
    WHEN 'jewel-orchid' THEN 50
    WHEN 'king-of-the-masdevallias' THEN 70
    WHEN 'zygopetalum-orchid' THEN 50
    WHEN 'crested-coelogyne' THEN 50
    WHEN 'tiger-stanhopea' THEN 60
    WHEN 'darwins-orchid' THEN 60
    WHEN 'laelia-anceps' THEN 45
    WHEN 'coconut-orchid' THEN 50
    WHEN 'monkey-face-orchid' THEN 75
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
    WHEN 'reed-stem-epidendrum' THEN 70
    WHEN 'jewel-orchid' THEN 75
    WHEN 'king-of-the-masdevallias' THEN 90
    WHEN 'zygopetalum-orchid' THEN 75
    WHEN 'crested-coelogyne' THEN 75
    WHEN 'tiger-stanhopea' THEN 85
    WHEN 'darwins-orchid' THEN 80
    WHEN 'laelia-anceps' THEN 70
    WHEN 'coconut-orchid' THEN 75
    WHEN 'monkey-face-orchid' THEN 90
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
    WHEN 'reed-stem-epidendrum' THEN 16
    WHEN 'jewel-orchid' THEN 18
    WHEN 'king-of-the-masdevallias' THEN 10
    WHEN 'zygopetalum-orchid' THEN 14
    WHEN 'crested-coelogyne' THEN 8
    WHEN 'tiger-stanhopea' THEN 16
    WHEN 'darwins-orchid' THEN 18
    WHEN 'laelia-anceps' THEN 12
    WHEN 'coconut-orchid' THEN 16
    WHEN 'monkey-face-orchid' THEN 10
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
    WHEN 'reed-stem-epidendrum' THEN 30
    WHEN 'jewel-orchid' THEN 28
    WHEN 'king-of-the-masdevallias' THEN 22
    WHEN 'zygopetalum-orchid' THEN 26
    WHEN 'crested-coelogyne' THEN 24
    WHEN 'tiger-stanhopea' THEN 28
    WHEN 'darwins-orchid' THEN 30
    WHEN 'laelia-anceps' THEN 28
    WHEN 'coconut-orchid' THEN 30
    WHEN 'monkey-face-orchid' THEN 22
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
    WHEN 'reed-stem-epidendrum' THEN 'Medium bark or terrestrial orchid mix with good drainage.'
    WHEN 'jewel-orchid' THEN 'Loose terrestrial mix with fine bark, perlite, and moisture retention.'
    WHEN 'king-of-the-masdevallias' THEN 'Fine bark or sphagnum-based mix kept cool, airy, and moist.'
    WHEN 'zygopetalum-orchid' THEN 'Medium bark mix with some moisture retention around active roots.'
    WHEN 'crested-coelogyne' THEN 'Medium bark mix or basket culture with a cooler winter rest.'
    WHEN 'tiger-stanhopea' THEN 'Open basket with coarse bark or sphagnum so pendant flowers can emerge.'
    WHEN 'darwins-orchid' THEN 'Coarse bark or mounted culture with strong airflow and steady humidity.'
    WHEN 'laelia-anceps' THEN 'Coarse bark, lava rock, or mounted culture with quick drying.'
    WHEN 'coconut-orchid' THEN 'Fine to medium bark mix that dries lightly between waterings.'
    WHEN 'monkey-face-orchid' THEN 'Fine bark or sphagnum-based mix kept cool, humid, and never stale.'
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
    WHEN 'reed-stem-epidendrum' THEN 'varies'
    WHEN 'jewel-orchid' THEN 'winter'
    WHEN 'king-of-the-masdevallias' THEN 'spring'
    WHEN 'zygopetalum-orchid' THEN 'winter'
    WHEN 'crested-coelogyne' THEN 'winter'
    WHEN 'tiger-stanhopea' THEN 'summer'
    WHEN 'darwins-orchid' THEN 'winter'
    WHEN 'laelia-anceps' THEN 'winter'
    WHEN 'coconut-orchid' THEN 'spring'
    WHEN 'monkey-face-orchid' THEN 'varies'
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
    WHEN 'reed-stem-epidendrum' THEN 'Flower clusters can repeat from tall reed-like stems in bright conditions.'
    WHEN 'jewel-orchid' THEN 'Small white flowers appear on upright spikes above the decorative foliage.'
    WHEN 'king-of-the-masdevallias' THEN 'Large triangular flowers prefer cool, humid, shaded conditions.'
    WHEN 'zygopetalum-orchid' THEN 'Fragrant blooms often combine green, brown, and purple markings.'
    WHEN 'crested-coelogyne' THEN 'Arching stems carry white flowers with yellow crests after a cool rest.'
    WHEN 'tiger-stanhopea' THEN 'Large pendant flowers emerge downward through open basket media.'
    WHEN 'darwins-orchid' THEN 'Night-fragrant white flowers have a long nectar spur.'
    WHEN 'laelia-anceps' THEN 'Tall spikes carry elegant lavender flowers, often in cooler months.'
    WHEN 'coconut-orchid' THEN 'Red flowers are known for a sweet coconut-like fragrance.'
    WHEN 'monkey-face-orchid' THEN 'Unusual flowers prefer cool cloud-forest conditions and high humidity.'
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
    WHEN 'reed-stem-epidendrum' THEN 'Give bright light, regular watering in growth, and a free-draining mix that never stays soggy.'
    WHEN 'jewel-orchid' THEN 'Grow in low to medium light with steady moisture and avoid harsh direct sun on the foliage.'
    WHEN 'king-of-the-masdevallias' THEN 'Keep cool, shaded, humid, and evenly moist with strong air movement.'
    WHEN 'zygopetalum-orchid' THEN 'Provide bright filtered light, intermediate temperatures, and water before the mix fully dries.'
    WHEN 'crested-coelogyne' THEN 'Grow bright and moist during active growth, then provide a cooler, slightly drier rest.'
    WHEN 'tiger-stanhopea' THEN 'Use basket culture, warm humid air, frequent watering, and space below for pendant blooms.'
    WHEN 'darwins-orchid' THEN 'Grow warm in bright filtered light with high humidity, airflow, and steady moisture.'
    WHEN 'laelia-anceps' THEN 'Give bright light, quick drainage, and a distinct dry-down between waterings.'
    WHEN 'coconut-orchid' THEN 'Grow in bright filtered light, water as roots approach dryness, and maintain gentle airflow.'
    WHEN 'monkey-face-orchid' THEN 'Keep cool, very humid, shaded, and evenly moist while avoiding stagnant media.'
  END
FROM seeded_orchids;

COMMIT;
