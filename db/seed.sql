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
      'https://upload.wikimedia.org/wikipedia/commons/8/8e/Angraecum_sesquipedale_Orchi_4.jpg',
      'White Angraecum sesquipedale orchid flower with a long nectar spur.',
      'https://commons.wikimedia.org/wiki/File:Angraecum_sesquipedale_Orchi_4.jpg',
      'CC BY-SA 3.0',
      'Orchi, via Wikimedia Commons'
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
    ),
    (
      'medusa-orchid',
      'Medusa Orchid',
      'Bulbophyllum medusae',
      'Bulbophyllum',
      'An unusual orchid with long fringed white flowers that resemble flowing hair.',
      'Southeast Asia',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/f/fe/Bulbophyllum_medusae_%2814363977295%29.jpg',
      'Bulbophyllum medusae orchid flowers with long white fringed segments.',
      'https://commons.wikimedia.org/wiki/File:Bulbophyllum_medusae_(14363977295).jpg',
      'CC BY 2.0',
      'Dick Culbert, via Wikimedia Commons'
    ),
    (
      'white-nun-orchid',
      'White Nun Orchid',
      'Lycaste skinneri',
      'Lycaste',
      'A graceful orchid known for large waxy flowers in white, pink, or lavender tones.',
      'Guatemala, Mexico, and Central America',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/a/a7/R._Warner_%26_B.S._Williams_-_The_Orchid_Album_-_volume_06_-_plate_283_%281887%29.jpg',
      'Botanical illustration of Lycaste skinneri white nun orchid flowers.',
      'https://commons.wikimedia.org/wiki/File:R._Warner_%26_B.S._Williams_-_The_Orchid_Album_-_volume_06_-_plate_283_(1887).jpg',
      'Public domain',
      'Unknown author, via Wikimedia Commons'
    ),
    (
      'butterfly-orchid',
      'Butterfly Orchid',
      'Psychopsis papilio',
      'Psychopsis',
      'A sequential-blooming orchid with tall stems and butterfly-like flowers.',
      'Trinidad and northern South America',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/3/37/Psychopsis_papilio_GotBot_2015_001.jpg',
      'Psychopsis papilio butterfly orchid flower on a tall stem.',
      'https://commons.wikimedia.org/wiki/File:Psychopsis_papilio_GotBot_2015_001.jpg',
      'CC BY 3.0',
      'Averater, via Wikimedia Commons'
    ),
    (
      'scarlet-slipper-orchid',
      'Scarlet Slipper Orchid',
      'Phragmipedium besseae',
      'Phragmipedium',
      'A vivid slipper orchid valued for bright orange to scarlet pouch-shaped flowers.',
      'Peru and Ecuador',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/8/87/Phragmipedium_besseae.jpg',
      'Bright orange Phragmipedium besseae slipper orchid flower.',
      'https://commons.wikimedia.org/wiki/File:Phragmipedium_besseae.jpg',
      'Public domain',
      'Wikimedia Commons'
    ),
    (
      'mother-of-pearl-orchid',
      'Mother of Pearl Orchid',
      'Catasetum pileatum',
      'Catasetum',
      'A deciduous orchid with large showy flowers and a seasonal dry rest.',
      'Venezuela, Colombia, Ecuador, and Brazil',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/5/5a/Catasetum_pileatum_Orchi_03.jpg',
      'Catasetum pileatum orchid flower with pale broad petals and a prominent lip.',
      'https://commons.wikimedia.org/wiki/File:Catasetum_pileatum_Orchi_03.jpg',
      'CC BY-SA 3.0',
      'Orchi, via Wikimedia Commons'
    ),
    (
      'fragrant-aerides',
      'Fragrant Aerides',
      'Aerides odorata',
      'Aerides',
      'A fragrant vandaceous orchid with pendant sprays of pink and white flowers.',
      'South and Southeast Asia',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/5/5f/A_and_B_Larsen_orchids_-_Aerides_odorata_750-34x.jpg',
      'Aerides odorata orchid spray with small pink and white flowers.',
      'https://commons.wikimedia.org/wiki/File:A_and_B_Larsen_orchids_-_Aerides_odorata_750-34x.jpg',
      'CC BY-SA 2.5 DK',
      'Arne and Bent Larsen, via Wikimedia Commons'
    ),
    (
      'foxtail-orchid',
      'Foxtail Orchid',
      'Rhynchostylis retusa',
      'Rhynchostylis',
      'A vandaceous orchid with dense pendant flower spikes that resemble a foxtail.',
      'Indian subcontinent and Southeast Asia',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/6/6f/Rhynchostylis_retusa_%28Foxtail_orchid%29.jpg',
      'Rhynchostylis retusa foxtail orchid with a dense pendant flower spike.',
      'https://commons.wikimedia.org/wiki/File:Rhynchostylis_retusa_(Foxtail_orchid).jpg',
      'CC BY-SA 4.0',
      'Akasmita, via Wikimedia Commons'
    ),
    (
      'chinese-ground-orchid',
      'Chinese Ground Orchid',
      'Bletilla striata',
      'Bletilla',
      'A hardy terrestrial orchid with pleated leaves and pink-purple spring flowers.',
      'China, Japan, Korea, and nearby East Asian regions',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/e/ee/Bletilla_striata_%27Chinese_ground_orchid%27_%28Orchidaceae%29_flower.JPG',
      'Pink-purple Bletilla striata Chinese ground orchid flower.',
      'https://commons.wikimedia.org/wiki/File:Bletilla_striata_%27Chinese_ground_orchid%27_(Orchidaceae)_flower.JPG',
      'CC BY-SA 3.0',
      'Magnus Manske, via Wikimedia Commons'
    ),
    (
      'samurai-orchid',
      'Samurai Orchid',
      'Vanda falcata',
      'Vanda',
      'A compact fragrant orchid formerly known as Neofinetia falcata.',
      'Japan, Korea, and China',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/3/31/Vanda_falcata_-_Orchid_Nursery_Margaret_Mee_-_DSC09749.jpg',
      'White Vanda falcata samurai orchid flowers with narrow petals.',
      'https://commons.wikimedia.org/wiki/File:Vanda_falcata_-_Orchid_Nursery_Margaret_Mee_-_DSC09749.jpg',
      'CC0',
      'Daderot, via Wikimedia Commons'
    ),
    (
      'black-orchid',
      'Black Orchid',
      'Prosthechea cochleata',
      'Prosthechea',
      'A long-blooming orchid with an upside-down flower form and a dark shell-like lip.',
      'Florida, the Caribbean, Central America, and northern South America',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/3/3e/Prosthechea_cochleata%2C_the_Clamshell_Orchid_%2811023302476%29.jpg',
      'Prosthechea cochleata black orchid flower with a dark central lip.',
      'https://commons.wikimedia.org/wiki/File:Prosthechea_cochleata,_the_Clamshell_Orchid_(11023302476).jpg',
      'CC BY 2.0',
      'Dick Culbert, via Wikimedia Commons'
    ),
    (
      'tiger-orchid',
      'Tiger Orchid',
      'Grammatophyllum speciosum',
      'Grammatophyllum',
      'A giant orchid with tall sprays of yellow flowers marked in brown.',
      'Southeast Asia and New Guinea',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/a/a7/Tiger_Orchid_%28Grammatophyllum_speciosum%29.jpg',
      'Grammatophyllum speciosum tiger orchid flowers with yellow and brown markings.',
      'https://commons.wikimedia.org/wiki/File:Tiger_Orchid_(Grammatophyllum_speciosum).jpg',
      'CC BY-SA 4.0',
      'Mokkie, via Wikimedia Commons'
    ),
    (
      'large-flowered-sobralia',
      'Large-flowered Sobralia',
      'Sobralia macrantha',
      'Sobralia',
      'A reed-like terrestrial orchid with large short-lived pink to purple flowers.',
      'Mexico and Central America',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/2/2c/2007_sobralia_macrantha.jpg',
      'Purple Sobralia macrantha large-flowered sobralia bloom.',
      'https://commons.wikimedia.org/wiki/File:2007_sobralia_macrantha.jpg',
      'CC BY-SA 3.0',
      'Rl, via Wikimedia Commons'
    ),
    (
      'calanthe-orchid',
      'Calanthe Orchid',
      'Calanthe discolor',
      'Calanthe',
      'A woodland terrestrial orchid with pleated leaves and delicate seasonal flowers.',
      'Japan and East Asia',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/6/66/Calanthe_discolor_Lindl.%2C_Sert._Orchid._t._9_%281838%29_%2841795883431%29.jpg',
      'Calanthe discolor orchid flowers with pale and warm-toned markings.',
      'https://commons.wikimedia.org/wiki/File:Calanthe_discolor_Lindl.,_Sert._Orchid._t._9_(1838)_(41795883431).jpg',
      'CC BY 2.0',
      'Sunoochi, via Wikimedia Commons'
    ),
    (
      'red-disa',
      'Red Disa',
      'Disa uniflora',
      'Disa',
      'A striking South African orchid with vivid red flowers from cool stream habitats.',
      'South Africa',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/0/0d/Disa_uniflora_orchid_species.jpg',
      'Red Disa uniflora orchid flower with broad scarlet sepals.',
      'https://commons.wikimedia.org/wiki/File:Disa_uniflora_orchid_species.jpg',
      'CC BY-SA 3.0',
      'Seattleorchid, via Wikimedia Commons'
    ),
    (
      'egret-orchid',
      'Egret Orchid',
      'Habenaria radiata',
      'Habenaria',
      'A small terrestrial orchid whose white fringed flowers resemble flying egrets.',
      'Japan, Korea, China, and eastern Russia',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/4/44/A_and_B_Larsen_orchids_-_Habenaria_radiata.jpg',
      'White Habenaria radiata egret orchid flowers with fringed petals.',
      'https://commons.wikimedia.org/wiki/File:A_and_B_Larsen_orchids_-_Habenaria_radiata.jpg',
      'CC BY-SA 2.5 DK',
      'Arne and Bent Larsen, via Wikimedia Commons'
    ),
    (
      'odontoglossum-orchid',
      'Odontoglossum Orchid',
      'Odontoglossum smithii',
      'Odontoglossum',
      'A cool-growing orchid with patterned flowers often represented in classic orchid collections.',
      'Andean South America',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/6/6b/Odontoglossum_smithii.jpg',
      'Botanical illustration of Odontoglossum smithii orchid flowers.',
      'https://commons.wikimedia.org/wiki/File:Odontoglossum_smithii.jpg',
      'Public domain',
      'Unknown illustrator, via Wikimedia Commons'
    ),
    (
      'equitant-oncidium',
      'Equitant Oncidium',
      'Tolumnia variegata',
      'Tolumnia',
      'A compact Caribbean orchid with fan-shaped foliage and colorful dancing flowers.',
      'Caribbean islands',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/2/26/Tolumnia_variegata_8129579.jpg',
      'Tolumnia variegata orchid flowers with small colorful blooms.',
      'https://commons.wikimedia.org/wiki/File:Tolumnia_variegata_8129579.jpg',
      'CC0',
      'Jim Kingdon, via Wikimedia Commons'
    ),
    (
      'twisted-trichopilia',
      'Twisted Trichopilia',
      'Trichopilia tortilis',
      'Trichopilia',
      'A fragrant orchid with twisted floral segments and a broad showy lip.',
      'Mexico and Central America',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/8/8f/R._Warner_%26_B.S._Williams_-_The_Orchid_Album_-_volume_08_-_plate_349_%281889%29.jpg',
      'Botanical illustration of Trichopilia tortilis orchid flowers.',
      'https://commons.wikimedia.org/wiki/File:R._Warner_%26_B.S._Williams_-_The_Orchid_Album_-_volume_08_-_plate_349_(1889).jpg',
      'Public domain',
      'Unknown author, via Wikimedia Commons'
    ),
    (
      'cobb-dendrochilum',
      'Cobb Dendrochilum',
      'Dendrochilum cobbianum',
      'Dendrochilum',
      'A graceful orchid with many small flowers carried in arching chains.',
      'Philippines',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/d/dc/Dendrochilum_cobbianum_at_the_Pacific_Orchid_Exposition_2010.jpg',
      'Dendrochilum cobbianum orchid with arching chains of small flowers.',
      'https://commons.wikimedia.org/wiki/File:Dendrochilum_cobbianum_at_the_Pacific_Orchid_Exposition_2010.jpg',
      'CC BY-SA 3.0',
      'Guillaume Paumier, via Wikimedia Commons'
    ),
    (
      'nun-orchid',
      'Nun Orchid',
      'Phaius tankervilleae',
      'Phaius',
      'A large terrestrial orchid with pleated leaves and tall spikes of brown and white flowers.',
      'Asia, Australia, and Pacific islands',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/a/a9/Phaius_tankervilleae_-_Flickr_003.jpg',
      'Phaius tankervilleae nun orchid flower with brown and white tones.',
      'https://commons.wikimedia.org/wiki/File:Phaius_tankervilleae_-_Flickr_003.jpg',
      'CC BY 2.0',
      'Elena Gaillard, via Wikimedia Commons'
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
    WHEN 'medusa-orchid' THEN 'advanced'
    WHEN 'white-nun-orchid' THEN 'intermediate'
    WHEN 'butterfly-orchid' THEN 'intermediate'
    WHEN 'scarlet-slipper-orchid' THEN 'advanced'
    WHEN 'mother-of-pearl-orchid' THEN 'advanced'
    WHEN 'fragrant-aerides' THEN 'intermediate'
    WHEN 'foxtail-orchid' THEN 'intermediate'
    WHEN 'chinese-ground-orchid' THEN 'beginner'
    WHEN 'samurai-orchid' THEN 'intermediate'
    WHEN 'black-orchid' THEN 'intermediate'
    WHEN 'tiger-orchid' THEN 'advanced'
    WHEN 'large-flowered-sobralia' THEN 'intermediate'
    WHEN 'calanthe-orchid' THEN 'intermediate'
    WHEN 'red-disa' THEN 'advanced'
    WHEN 'egret-orchid' THEN 'advanced'
    WHEN 'odontoglossum-orchid' THEN 'advanced'
    WHEN 'equitant-oncidium' THEN 'intermediate'
    WHEN 'twisted-trichopilia' THEN 'intermediate'
    WHEN 'cobb-dendrochilum' THEN 'intermediate'
    WHEN 'nun-orchid' THEN 'beginner'
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
    WHEN 'medusa-orchid' THEN 'medium'
    WHEN 'white-nun-orchid' THEN 'bright-indirect'
    WHEN 'butterfly-orchid' THEN 'bright-indirect'
    WHEN 'scarlet-slipper-orchid' THEN 'medium'
    WHEN 'mother-of-pearl-orchid' THEN 'bright-indirect'
    WHEN 'fragrant-aerides' THEN 'bright-indirect'
    WHEN 'foxtail-orchid' THEN 'bright-indirect'
    WHEN 'chinese-ground-orchid' THEN 'medium'
    WHEN 'samurai-orchid' THEN 'bright-indirect'
    WHEN 'black-orchid' THEN 'bright-indirect'
    WHEN 'tiger-orchid' THEN 'high'
    WHEN 'large-flowered-sobralia' THEN 'bright-indirect'
    WHEN 'calanthe-orchid' THEN 'medium'
    WHEN 'red-disa' THEN 'bright-indirect'
    WHEN 'egret-orchid' THEN 'medium'
    WHEN 'odontoglossum-orchid' THEN 'medium'
    WHEN 'equitant-oncidium' THEN 'bright-indirect'
    WHEN 'twisted-trichopilia' THEN 'bright-indirect'
    WHEN 'cobb-dendrochilum' THEN 'bright-indirect'
    WHEN 'nun-orchid' THEN 'bright-indirect'
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
    WHEN 'medusa-orchid' THEN 'frequent'
    WHEN 'white-nun-orchid' THEN 'moderate'
    WHEN 'butterfly-orchid' THEN 'moderate'
    WHEN 'scarlet-slipper-orchid' THEN 'frequent'
    WHEN 'mother-of-pearl-orchid' THEN 'moderate'
    WHEN 'fragrant-aerides' THEN 'frequent'
    WHEN 'foxtail-orchid' THEN 'frequent'
    WHEN 'chinese-ground-orchid' THEN 'moderate'
    WHEN 'samurai-orchid' THEN 'moderate'
    WHEN 'black-orchid' THEN 'moderate'
    WHEN 'tiger-orchid' THEN 'frequent'
    WHEN 'large-flowered-sobralia' THEN 'moderate'
    WHEN 'calanthe-orchid' THEN 'moderate'
    WHEN 'red-disa' THEN 'frequent'
    WHEN 'egret-orchid' THEN 'frequent'
    WHEN 'odontoglossum-orchid' THEN 'moderate'
    WHEN 'equitant-oncidium' THEN 'moderate'
    WHEN 'twisted-trichopilia' THEN 'moderate'
    WHEN 'cobb-dendrochilum' THEN 'moderate'
    WHEN 'nun-orchid' THEN 'moderate'
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
    WHEN 'medusa-orchid' THEN 70
    WHEN 'white-nun-orchid' THEN 50
    WHEN 'butterfly-orchid' THEN 55
    WHEN 'scarlet-slipper-orchid' THEN 60
    WHEN 'mother-of-pearl-orchid' THEN 50
    WHEN 'fragrant-aerides' THEN 60
    WHEN 'foxtail-orchid' THEN 60
    WHEN 'chinese-ground-orchid' THEN 45
    WHEN 'samurai-orchid' THEN 50
    WHEN 'black-orchid' THEN 55
    WHEN 'tiger-orchid' THEN 60
    WHEN 'large-flowered-sobralia' THEN 50
    WHEN 'calanthe-orchid' THEN 50
    WHEN 'red-disa' THEN 70
    WHEN 'egret-orchid' THEN 60
    WHEN 'odontoglossum-orchid' THEN 60
    WHEN 'equitant-oncidium' THEN 50
    WHEN 'twisted-trichopilia' THEN 55
    WHEN 'cobb-dendrochilum' THEN 55
    WHEN 'nun-orchid' THEN 50
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
    WHEN 'medusa-orchid' THEN 90
    WHEN 'white-nun-orchid' THEN 75
    WHEN 'butterfly-orchid' THEN 80
    WHEN 'scarlet-slipper-orchid' THEN 85
    WHEN 'mother-of-pearl-orchid' THEN 75
    WHEN 'fragrant-aerides' THEN 85
    WHEN 'foxtail-orchid' THEN 85
    WHEN 'chinese-ground-orchid' THEN 70
    WHEN 'samurai-orchid' THEN 75
    WHEN 'black-orchid' THEN 80
    WHEN 'tiger-orchid' THEN 85
    WHEN 'large-flowered-sobralia' THEN 75
    WHEN 'calanthe-orchid' THEN 75
    WHEN 'red-disa' THEN 90
    WHEN 'egret-orchid' THEN 85
    WHEN 'odontoglossum-orchid' THEN 85
    WHEN 'equitant-oncidium' THEN 75
    WHEN 'twisted-trichopilia' THEN 80
    WHEN 'cobb-dendrochilum' THEN 80
    WHEN 'nun-orchid' THEN 80
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
    WHEN 'medusa-orchid' THEN 18
    WHEN 'white-nun-orchid' THEN 14
    WHEN 'butterfly-orchid' THEN 16
    WHEN 'scarlet-slipper-orchid' THEN 14
    WHEN 'mother-of-pearl-orchid' THEN 18
    WHEN 'fragrant-aerides' THEN 18
    WHEN 'foxtail-orchid' THEN 18
    WHEN 'chinese-ground-orchid' THEN 8
    WHEN 'samurai-orchid' THEN 12
    WHEN 'black-orchid' THEN 18
    WHEN 'tiger-orchid' THEN 20
    WHEN 'large-flowered-sobralia' THEN 16
    WHEN 'calanthe-orchid' THEN 10
    WHEN 'red-disa' THEN 8
    WHEN 'egret-orchid' THEN 10
    WHEN 'odontoglossum-orchid' THEN 10
    WHEN 'equitant-oncidium' THEN 18
    WHEN 'twisted-trichopilia' THEN 16
    WHEN 'cobb-dendrochilum' THEN 16
    WHEN 'nun-orchid' THEN 16
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
    WHEN 'medusa-orchid' THEN 30
    WHEN 'white-nun-orchid' THEN 26
    WHEN 'butterfly-orchid' THEN 28
    WHEN 'scarlet-slipper-orchid' THEN 26
    WHEN 'mother-of-pearl-orchid' THEN 30
    WHEN 'fragrant-aerides' THEN 32
    WHEN 'foxtail-orchid' THEN 32
    WHEN 'chinese-ground-orchid' THEN 28
    WHEN 'samurai-orchid' THEN 28
    WHEN 'black-orchid' THEN 30
    WHEN 'tiger-orchid' THEN 32
    WHEN 'large-flowered-sobralia' THEN 28
    WHEN 'calanthe-orchid' THEN 26
    WHEN 'red-disa' THEN 22
    WHEN 'egret-orchid' THEN 28
    WHEN 'odontoglossum-orchid' THEN 24
    WHEN 'equitant-oncidium' THEN 30
    WHEN 'twisted-trichopilia' THEN 28
    WHEN 'cobb-dendrochilum' THEN 28
    WHEN 'nun-orchid' THEN 30
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
    WHEN 'medusa-orchid' THEN 'Fine to medium bark or basket culture with constant humidity and airflow.'
    WHEN 'white-nun-orchid' THEN 'Medium bark mix with moisture retention during growth and excellent drainage.'
    WHEN 'butterfly-orchid' THEN 'Medium bark mix or mounted culture with steady moisture and airflow.'
    WHEN 'scarlet-slipper-orchid' THEN 'Fine bark mix with moisture retention, clean water, and steady drainage.'
    WHEN 'mother-of-pearl-orchid' THEN 'Medium bark mix that supports a dry rest after leaf drop.'
    WHEN 'fragrant-aerides' THEN 'Open basket or coarse bark with fast drainage and high humidity.'
    WHEN 'foxtail-orchid' THEN 'Open basket, coarse bark, or mounted culture with strong root airflow.'
    WHEN 'chinese-ground-orchid' THEN 'Loose terrestrial mix with organic matter and reliable drainage.'
    WHEN 'samurai-orchid' THEN 'Coarse bark, mounted culture, or traditional airy mound culture.'
    WHEN 'black-orchid' THEN 'Medium bark mix or mounted culture with steady moisture and airflow.'
    WHEN 'tiger-orchid' THEN 'Very coarse bark, basket culture, or a large free-draining container.'
    WHEN 'large-flowered-sobralia' THEN 'Rich but free-draining terrestrial mix that stays lightly moist.'
    WHEN 'calanthe-orchid' THEN 'Loose terrestrial mix with organic matter and seasonal moisture.'
    WHEN 'red-disa' THEN 'Cool, clean, moisture-retentive terrestrial mix with excellent water quality.'
    WHEN 'egret-orchid' THEN 'Moist terrestrial bog-style mix with seasonal winter rest.'
    WHEN 'odontoglossum-orchid' THEN 'Fine to medium bark mix kept cool, airy, and evenly moist.'
    WHEN 'equitant-oncidium' THEN 'Small bark, mounted culture, or fast-draining mix for compact roots.'
    WHEN 'twisted-trichopilia' THEN 'Medium bark mix with moisture retention and steady airflow.'
    WHEN 'cobb-dendrochilum' THEN 'Fine to medium bark mix with steady moisture and good drainage.'
    WHEN 'nun-orchid' THEN 'Rich terrestrial orchid mix with drainage and moisture retention.'
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
    WHEN 'medusa-orchid' THEN 'varies'
    WHEN 'white-nun-orchid' THEN 'winter'
    WHEN 'butterfly-orchid' THEN 'varies'
    WHEN 'scarlet-slipper-orchid' THEN 'varies'
    WHEN 'mother-of-pearl-orchid' THEN 'summer'
    WHEN 'fragrant-aerides' THEN 'summer'
    WHEN 'foxtail-orchid' THEN 'spring'
    WHEN 'chinese-ground-orchid' THEN 'spring'
    WHEN 'samurai-orchid' THEN 'summer'
    WHEN 'black-orchid' THEN 'varies'
    WHEN 'tiger-orchid' THEN 'varies'
    WHEN 'large-flowered-sobralia' THEN 'summer'
    WHEN 'calanthe-orchid' THEN 'spring'
    WHEN 'red-disa' THEN 'summer'
    WHEN 'egret-orchid' THEN 'summer'
    WHEN 'odontoglossum-orchid' THEN 'winter'
    WHEN 'equitant-oncidium' THEN 'varies'
    WHEN 'twisted-trichopilia' THEN 'spring'
    WHEN 'cobb-dendrochilum' THEN 'spring'
    WHEN 'nun-orchid' THEN 'spring'
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
    WHEN 'medusa-orchid' THEN 'Fringed flower segments hang in clusters and need high humidity to look their best.'
    WHEN 'white-nun-orchid' THEN 'Large waxy flowers usually open from mature pseudobulbs after seasonal growth.'
    WHEN 'butterfly-orchid' THEN 'Long-lived stems can produce one butterfly-like flower after another.'
    WHEN 'scarlet-slipper-orchid' THEN 'Bright slipper flowers last well when roots stay evenly moist.'
    WHEN 'mother-of-pearl-orchid' THEN 'Showy flowers appear during the warm growing season before a drier rest.'
    WHEN 'fragrant-aerides' THEN 'Pendant sprays carry many fragrant small flowers in warm humid conditions.'
    WHEN 'foxtail-orchid' THEN 'Dense pendant spikes carry many small flowers and can be strongly ornamental.'
    WHEN 'chinese-ground-orchid' THEN 'Hardy pleated leaves and pink spring flowers rise from terrestrial pseudobulbs.'
    WHEN 'samurai-orchid' THEN 'Small fragrant white flowers open in warm weather from compact fans.'
    WHEN 'black-orchid' THEN 'Sequential flowers can continue for a long season from mature growths.'
    WHEN 'tiger-orchid' THEN 'Huge plants can carry tall spotted flower sprays when mature.'
    WHEN 'large-flowered-sobralia' THEN 'Large blooms are showy but often short-lived, opening from reed-like stems.'
    WHEN 'calanthe-orchid' THEN 'Seasonal spikes rise from pleated foliage after active growth.'
    WHEN 'red-disa' THEN 'Brilliant red flowers appear in cool wet conditions and need constant moisture.'
    WHEN 'egret-orchid' THEN 'White fringed flowers look like small birds in flight.'
    WHEN 'odontoglossum-orchid' THEN 'Patterned flowers prefer cool, humid, intermediate-to-low light conditions.'
    WHEN 'equitant-oncidium' THEN 'Compact plants can bloom with colorful sprays from fan-shaped growths.'
    WHEN 'twisted-trichopilia' THEN 'Fragrant flowers have twisted segments and a wide decorative lip.'
    WHEN 'cobb-dendrochilum' THEN 'Arching chains carry many small flowers from compact growths.'
    WHEN 'nun-orchid' THEN 'Tall spikes emerge from large pleated leaves and carry broad flowers.'
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
    WHEN 'medusa-orchid' THEN 'Grow warm, shaded, and very humid with steady moisture, quick drainage, and strong airflow.'
    WHEN 'white-nun-orchid' THEN 'Water well in active growth, give bright filtered light, and reduce watering after growth matures.'
    WHEN 'butterfly-orchid' THEN 'Provide bright filtered light, steady humidity, and avoid cutting green flowering stems.'
    WHEN 'scarlet-slipper-orchid' THEN 'Keep evenly moist in moderate light with clean water and avoid drying the root zone hard.'
    WHEN 'mother-of-pearl-orchid' THEN 'Water and feed during leafy growth, then give a drier rest after leaves yellow and drop.'
    WHEN 'fragrant-aerides' THEN 'Grow warm and bright with frequent watering, high humidity, and excellent root airflow.'
    WHEN 'foxtail-orchid' THEN 'Give warm bright conditions, high humidity, frequent watering, and a fast-drying root zone.'
    WHEN 'chinese-ground-orchid' THEN 'Grow in a free-draining terrestrial mix with moderate light and a cooler winter rest.'
    WHEN 'samurai-orchid' THEN 'Grow bright and airy with moderate moisture, good humidity, and cooler nights when possible.'
    WHEN 'black-orchid' THEN 'Provide bright filtered light, steady warmth, and a lightly drying period between waterings.'
    WHEN 'tiger-orchid' THEN 'Give very bright warmth, high humidity, strong airflow, and ample space for large growth.'
    WHEN 'large-flowered-sobralia' THEN 'Grow warm in bright filtered light with steady moisture and room for tall cane-like stems.'
    WHEN 'calanthe-orchid' THEN 'Water during active growth, reduce after leaf drop, and keep the terrestrial mix airy.'
    WHEN 'red-disa' THEN 'Keep cool, wet, and bright with very clean water and avoid warm stagnant conditions.'
    WHEN 'egret-orchid' THEN 'Grow in moist acidic media during growth, then provide a cool drier winter dormancy.'
    WHEN 'odontoglossum-orchid' THEN 'Keep cool, humid, and evenly moist with gentle light and excellent airflow.'
    WHEN 'equitant-oncidium' THEN 'Grow bright and airy in a small fast-draining setup, watering as roots approach dryness.'
    WHEN 'twisted-trichopilia' THEN 'Provide intermediate warmth, bright shade, steady humidity, and a lightly moist bark mix.'
    WHEN 'cobb-dendrochilum' THEN 'Grow in bright filtered light with steady moisture and avoid letting fine roots dry hard.'
    WHEN 'nun-orchid' THEN 'Grow warm in bright shade with regular water during growth and a lighter winter rest.'
  END
FROM seeded_orchids;

COMMIT;
