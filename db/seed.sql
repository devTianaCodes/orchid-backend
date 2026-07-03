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
      'https://upload.wikimedia.org/wikipedia/commons/e/e7/Pecteilis_radiata_%28flower%29.jpg',
      'Close view of a white Pecteilis radiata egret orchid flower with fringed petals.',
      'https://commons.wikimedia.org/wiki/File:Pecteilis_radiata_(flower).jpg',
      'CC BY-SA 4.0',
      'Alpsdake, via Wikimedia Commons'
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
    ),
    (
      'elizabeth-ann-bulbophyllum',
      'Elizabeth Ann Bulbophyllum',
      'Cirrhopetalum Elizabeth Ann',
      'Cirrhopetalum',
      'A dramatic hybrid orchid with pendant umbels of long, ribbon-like flowers.',
      'Cultivated hybrid',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/b/b3/A_and_B_Larsen_orchids_-_Cirrhopetalum_Elizabeth_Ann_Bucklebury_690-3.jpg',
      'Cirrhopetalum Elizabeth Ann orchid with long pendant reddish flowers.',
      'https://commons.wikimedia.org/wiki/File:A_and_B_Larsen_orchids_-_Cirrhopetalum_Elizabeth_Ann_Bucklebury_690-3.jpg',
      'CC BY-SA 2.5 DK',
      'Arne and Bent Larsen, via Wikimedia Commons'
    ),
    (
      'terete-vanda',
      'Terete Vanda',
      'Papilionanthe teres',
      'Papilionanthe',
      'A sun-loving vandaceous orchid with pencil-like leaves and pink flowers.',
      'South and Southeast Asia',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/e/ea/Plant_Orchid_Papilionanthe_teres_IMG_8643_03.jpg',
      'Papilionanthe teres orchid flower with pink petals and terete foliage.',
      'https://commons.wikimedia.org/wiki/File:Plant_Orchid_Papilionanthe_teres_IMG_8643_03.jpg',
      'CC BY-SA 4.0',
      'Rohit Naniwadekar, via Wikimedia Commons'
    ),
    (
      'scarlet-cochlioda',
      'Scarlet Cochlioda',
      'Oncidium noezlianum',
      'Oncidium',
      'A cool-growing Andean orchid with vivid orange-red flowers.',
      'Peru and Bolivia',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/f/f5/Oncidium_noezlianum_%28Mast.%29_M.W.Chase_%26_N.H.Williams_in_Lindleyana_21%283%29-_25_%282008%29_20241212_230500.jpg',
      'Orange-red Oncidium noezlianum orchid flowers.',
      'https://commons.wikimedia.org/wiki/File:Oncidium_noezlianum_(Mast.)_M.W.Chase_%26_N.H.Williams_in_Lindleyana_21(3)-_25_(2008)_20241212_230500.jpg',
      'CC BY 4.0',
      'Motohiro Sunouchi, via Wikimedia Commons'
    ),
    (
      'tracys-cymbidium',
      'Tracy''s Cymbidium',
      'Cymbidium tracyanum',
      'Cymbidium',
      'A fragrant cymbidium with arching sprays of large striped flowers.',
      'China, Myanmar, and Thailand',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/a/a8/Tracy%E2%80%99s_Cymbidium_%28Cymbidium_tracyanum%29.jpg',
      'Cymbidium tracyanum orchid flowers with striped yellow-green petals.',
      'https://commons.wikimedia.org/wiki/File:Tracy%E2%80%99s_Cymbidium_(Cymbidium_tracyanum).jpg',
      'CC0',
      'Deja Bayor Neba, via Wikimedia Commons'
    ),
    (
      'swan-orchid',
      'Swan Orchid',
      'Cycnoches chlorochilon',
      'Cycnoches',
      'A deciduous orchid with unusual swan-like flowers and a seasonal dry rest.',
      'Central and South America',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/1/1f/R._Warner_%26_B.S._Williams_-_The_Orchid_Album_-_volume_06_-_plate_263_%281887%29.jpg',
      'Botanical illustration of Cycnoches chlorochilon swan orchid flowers.',
      'https://commons.wikimedia.org/wiki/File:R._Warner_%26_B.S._Williams_-_The_Orchid_Album_-_volume_06_-_plate_263_(1887).jpg',
      'Public domain',
      'Unknown author, via Wikimedia Commons'
    ),
    (
      'galeandra-orchid',
      'Galeandra Orchid',
      'Galeandra baueri',
      'Galeandra',
      'A warm-growing orchid with hooded flowers and a seasonal growth rhythm.',
      'Central and South America',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/e/ec/Ogr%C3%B3d_Botaniczny_UJ_w_Krakowie_108.JPG',
      'Galeandra baueri orchid flower with a hooded lip.',
      'https://commons.wikimedia.org/wiki/File:Ogr%C3%B3d_Botaniczny_UJ_w_Krakowie_108.JPG',
      'CC BY-SA 3.0',
      'Raphael17, via Wikimedia Commons'
    ),
    (
      'antenna-restrepia',
      'Antenna Restrepia',
      'Restrepia antennifera',
      'Restrepia',
      'A cool cloud-forest orchid with small striped flowers and antenna-like petals.',
      'Colombia, Ecuador, Peru, and Venezuela',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/9/94/Restrepia_antennifera_Kunth_in_F.W.H.von_Humboldt%2C_A.J.A.Bonpland_%26_C.S.Kunth%2C_Nov._Gen._Sp._1_367_%281816%29_%2827438858628%29.jpg',
      'Restrepia antennifera orchid flower with striped segments and antenna-like petals.',
      'https://commons.wikimedia.org/wiki/File:Restrepia_antennifera_Kunth_in_F.W.H.von_Humboldt,_A.J.A.Bonpland_%26_C.S.Kunth,_Nov._Gen._Sp._1_367_(1816)_(27438858628).jpg',
      'CC BY 2.0',
      'Snotch, via Wikimedia Commons'
    ),
    (
      'silver-stelis',
      'Silver Stelis',
      'Stelis argentata',
      'Stelis',
      'A miniature orchid with many tiny flowers held on slender inflorescences.',
      'Central and South America',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/6/65/Stelis_argentata_-_Flickr_003.jpg',
      'Stelis argentata orchid with tiny flowers on a slender spike.',
      'https://commons.wikimedia.org/wiki/File:Stelis_argentata_-_Flickr_003.jpg',
      'CC BY-SA 2.0',
      'Derek Keats, via Wikimedia Commons'
    ),
    (
      'grobyi-specklinia',
      'Grobyi Specklinia',
      'Specklinia grobyi',
      'Specklinia',
      'A small pleurothallid orchid with delicate flowers on compact growths.',
      'Central America and northern South America',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/5/56/Specklinia_grobyi_1.jpg',
      'Specklinia grobyi orchid flower on a compact plant.',
      'https://commons.wikimedia.org/wiki/File:Specklinia_grobyi_1.jpg',
      'CC BY-SA 3.0',
      'Franz Xaver, via Wikimedia Commons'
    ),
    (
      'comparettia-orchid',
      'Comparettia Orchid',
      'Comparettia speciosa',
      'Comparettia',
      'A compact orchid with bright orange flowers and a pendant growth habit.',
      'Colombia and Ecuador',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/4/42/A_and_B_Larsen_orchids_-_Comparettia_speciosa_847-2.jpg',
      'Comparettia speciosa orchid with bright orange flowers.',
      'https://commons.wikimedia.org/wiki/File:A_and_B_Larsen_orchids_-_Comparettia_speciosa_847-2.jpg',
      'CC BY-SA 2.5 DK',
      'Arne and Bent Larsen, via Wikimedia Commons'
    ),
    (
      'lady-of-the-night-orchid',
      'Lady of the Night Orchid',
      'Brassavola nodosa',
      'Brassavola',
      'A fragrant orchid known for narrow white flowers that release scent at night.',
      'Mexico, Central America, the Caribbean, and northern South America',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/6/62/Brassavola_nodosa_orchid.png',
      'White Brassavola nodosa orchid flowers with narrow petals and a broad lip.',
      'https://commons.wikimedia.org/wiki/File:Brassavola_nodosa_orchid.png',
      'CC BY-SA 4.0',
      'Gaussian_venation, via Wikimedia Commons'
    ),
    (
      'scaphosepalum-orchid',
      'Scaphosepalum Orchid',
      'Scaphosepalum swertifolium',
      'Scaphosepalum',
      'A cool-growing miniature orchid with unusual small flowers from humid forests.',
      'Central America and northern South America',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/f/f3/Scaphosepalum_swertifolium.jpeg',
      'Scaphosepalum swertifolium orchid flowers with narrow tails.',
      'https://commons.wikimedia.org/wiki/File:Scaphosepalum_swertifolium.jpeg',
      'CC BY-SA 2.5',
      'Brett Francis (Oort), via Wikimedia Commons'
    ),
    (
      'purple-ground-orchid',
      'Purple Ground Orchid',
      'Spathoglottis plicata',
      'Spathoglottis',
      'A tropical terrestrial orchid with pleated leaves and upright purple flower spikes.',
      'Tropical and subtropical Asia to Australia and the western Pacific',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/e/e1/Spathoglottis_plicata_%28Philippine_ground_orchid%29_1.jpg',
      'Purple Spathoglottis plicata ground orchid flowers on an upright stem.',
      'https://commons.wikimedia.org/wiki/File:Spathoglottis_plicata_(Philippine_ground_orchid)_1.jpg',
      'CC0',
      'Obsidian Soul, via Wikimedia Commons'
    ),
    (
      'giant-arpophyllum',
      'Giant Arpophyllum',
      'Arpophyllum giganteum',
      'Arpophyllum',
      'A robust orchid with strap-like leaves and dense purple-pink flower spikes.',
      'Mexico, Central America, northern South America, and Jamaica',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/0/0b/Arpophyllum_giganteum_0zz.jpg',
      'Arpophyllum giganteum orchid with a dense purple-pink flower spike.',
      'https://commons.wikimedia.org/wiki/File:Arpophyllum_giganteum_0zz.jpg',
      'CC BY-SA 4.0',
      'Photo by David J. Stang, via Wikimedia Commons'
    ),
    (
      'red-vanda',
      'Red Vanda',
      'Renanthera imschootiana',
      'Renanthera',
      'A rare vandaceous orchid valued for vivid red-orange flowers and warm bright culture.',
      'Eastern Himalaya, southeastern China, and Vietnam',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/f/f6/Renanthera_%28imschootiana_x_kilauea%29.jpg',
      'Red-orange Renanthera orchid flowers on a branching stem.',
      'https://commons.wikimedia.org/wiki/File:Renanthera_(imschootiana_x_kilauea).jpg',
      'CC BY 2.0',
      'scott.zona, via Wikimedia Commons'
    ),
    (
      'roezls-miltoniopsis',
      'Roezl''s Miltoniopsis',
      'Miltoniopsis roezlii',
      'Miltoniopsis',
      'A pansy orchid species with broad patterned flowers from humid Andean habitats.',
      'Colombia, Ecuador, Peru, and Panama',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/f/f1/The_Orchid_Album-02-0051-0064-Odontoglossum_roezlii-crop.png',
      'Botanical illustration of Miltoniopsis roezlii orchid flowers.',
      'https://commons.wikimedia.org/wiki/File:The_Orchid_Album-02-0051-0064-Odontoglossum_roezlii-crop.png',
      'Public domain',
      'John Nugent Fitch, via Wikimedia Commons'
    ),
    (
      'peters-eulophia',
      'Peter''s Eulophia',
      'Eulophia petersii',
      'Eulophia',
      'A heat-tolerant terrestrial orchid adapted to bright, seasonally dry habitats.',
      'Eastern and southern Africa and the Arabian Peninsula',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/2/24/Eulophia_petersii_flower.jpg',
      'Eulophia petersii orchid flower with green and purple markings.',
      'https://commons.wikimedia.org/wiki/File:Eulophia_petersii_flower.jpg',
      'CC BY-SA 2.0',
      'Ton Rulkens from Mozambique, via Wikimedia Commons'
    ),
    (
      'mini-erycina',
      'Mini Erycina',
      'Erycina pusilla',
      'Erycina',
      'A very small twig epiphyte with cheerful yellow flowers and fine roots.',
      'Central America and northern South America',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/0/01/Erycina_Pusilla.jpg',
      'Small yellow Erycina pusilla orchid flowers on a compact plant.',
      'https://commons.wikimedia.org/wiki/File:Erycina_Pusilla.jpg',
      'CC BY-SA 4.0',
      'Vanes8123, via Wikimedia Commons'
    ),
    (
      'bamboo-orchid',
      'Bamboo Orchid',
      'Arundina graminifolia',
      'Arundina',
      'A tall terrestrial orchid with reed-like stems and bright pink flowers.',
      'South Asia, Southeast Asia, and parts of the Pacific',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/3/35/Arundina_graminifolia_at_Kadavoor.jpg',
      'Pink Arundina graminifolia bamboo orchid flower on a tall reed-like stem.',
      'https://commons.wikimedia.org/wiki/File:Arundina_graminifolia_at_Kadavoor.jpg',
      'CC BY-SA 4.0',
      'Jeevan Jose, Kerala, India, via Wikimedia Commons'
    ),
    (
      'cooper-cycnoches',
      'Cooper''s Cycnoches',
      'Cycnoches cooperi',
      'Cycnoches',
      'A deciduous orchid with dramatic waxy flowers and a pronounced seasonal rest.',
      'Peru and nearby Amazonian regions',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/f/f6/Cycnoches_cooperi_%2814300697305%29_-_cropped_2.jpg',
      'Cycnoches cooperi orchid flowers with waxy green and bronze tones.',
      'https://commons.wikimedia.org/wiki/File:Cycnoches_cooperi_(14300697305)_-_cropped_2.jpg',
      'CC BY-SA 2.0',
      'Alejandro Bayer Tamayo from Armenia, Colombia, via Wikimedia Commons'
    ),
    (
      'ghost-orchid',
      'Ghost Orchid',
      'Dendrophylax lindenii',
      'Dendrophylax',
      'A leafless swamp epiphyte whose white flowers appear to float from tree bark.',
      'Florida and Cuba',
      'epiphyte',
      'https://upload.wikimedia.org/wikipedia/commons/8/87/Ghost_Orchid.jpg',
      'White Dendrophylax lindenii ghost orchid flower on a leafless root mass.',
      'https://commons.wikimedia.org/wiki/File:Ghost_Orchid.jpg',
      'CC BY 2.5',
      'Mick Fournier / HBI Producers of Fine Orchids, via Wikimedia Commons'
    ),
    (
      'rothschilds-slipper-orchid',
      'Rothschild''s Slipper Orchid',
      'Paphiopedilum rothschildianum',
      'Paphiopedilum',
      'A critically endangered slipper orchid from Mount Kinabalu with broad striped flowers.',
      'Mount Kinabalu, Sabah, Borneo',
      'lithophyte',
      'https://upload.wikimedia.org/wikipedia/commons/3/3a/Paphiopedilum_rothschildianum_%2825834537567%29.jpg',
      'Paphiopedilum rothschildianum slipper orchid flowers with striped horizontal petals.',
      'https://commons.wikimedia.org/wiki/File:Paphiopedilum_rothschildianum_(25834537567).jpg',
      'CC BY-SA 2.0',
      'Naoki Takebayashi, via Wikimedia Commons'
    ),
    (
      'sanders-paphiopedilum',
      'Sander''s Paphiopedilum',
      'Paphiopedilum sanderianum',
      'Paphiopedilum',
      'A legendary Bornean slipper orchid famous for extremely long ribbon-like petals.',
      'Gunung Mulu, northwestern Borneo',
      'lithophyte',
      'https://upload.wikimedia.org/wikipedia/commons/c/c9/Paphiopedilum_sanderianum_%28plant%29.jpg',
      'Paphiopedilum sanderianum plant with long pendant flower petals.',
      'https://commons.wikimedia.org/wiki/File:Paphiopedilum_sanderianum_(plant).jpg',
      'CC BY-SA 4.0',
      'Naoki Takebayashi, via Wikimedia Commons'
    ),
    (
      'canhs-paphiopedilum',
      'Canh''s Paphiopedilum',
      'Paphiopedilum canhii',
      'Paphiopedilum',
      'A tiny critically endangered slipper orchid from limestone habitats in northern Indochina.',
      'Northern Vietnam, Laos, and southern China',
      'lithophyte',
      'https://upload.wikimedia.org/wikipedia/commons/9/90/Paphiopedilum_canhii_flower_front_view.jpg',
      'Front view of a Paphiopedilum canhii flower with a small pouch-shaped lip.',
      'https://commons.wikimedia.org/wiki/File:Paphiopedilum_canhii_flower_front_view.jpg',
      'CC BY-SA 4.0',
      'Pham van The, via Wikimedia Commons'
    ),
    (
      'western-underground-orchid',
      'Western Underground Orchid',
      'Rhizanthella gardneri',
      'Rhizanthella',
      'A critically endangered orchid that flowers at or below the soil surface.',
      'Southwestern Western Australia',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/4/49/Rhizanthella_gardneri_%E2%80%94_Fred_Hort.jpg',
      'Exposed Rhizanthella gardneri western underground orchid flower head.',
      'https://commons.wikimedia.org/wiki/File:Rhizanthella_gardneri_%E2%80%94_Fred_Hort.jpg',
      'CC BY-SA 2.0',
      'Jean and Fred Hort, via Wikimedia Commons'
    ),
    (
      'vietnamese-paphiopedilum',
      'Vietnamese Paphiopedilum',
      'Paphiopedilum vietnamense',
      'Paphiopedilum',
      'An endangered Vietnamese slipper orchid with soft pink flowers and a rounded pouch.',
      'Thai Nguyen Province, northern Vietnam',
      'lithophyte',
      'https://upload.wikimedia.org/wikipedia/commons/e/eb/Paphiopedilum_vietnamense.jpg',
      'Pink Paphiopedilum vietnamense slipper orchid flower with a rounded pouch.',
      'https://commons.wikimedia.org/wiki/File:Paphiopedilum_vietnamense.jpg',
      'CC BY-SA 4.0',
      'Patricia Harding, via Wikimedia Commons'
    ),
    (
      'hangs-paphiopedilum',
      'Hang''s Paphiopedilum',
      'Paphiopedilum hangianum',
      'Paphiopedilum',
      'An endangered large-flowered slipper orchid from limestone forests of Vietnam and China.',
      'Northern Vietnam and south-central China',
      'lithophyte',
      'https://upload.wikimedia.org/wikipedia/commons/4/4b/Paphiopedilum_hangianum_cropped.jpg',
      'Pale yellow Paphiopedilum hangianum slipper orchid flower with broad petals.',
      'https://commons.wikimedia.org/wiki/File:Paphiopedilum_hangianum_cropped.jpg',
      'CC BY-SA 2.0',
      'Felix, via Wikimedia Commons'
    ),
    (
      'purple-paphiopedilum',
      'Purple Paphiopedilum',
      'Paphiopedilum purpuratum',
      'Paphiopedilum',
      'A critically endangered forest slipper orchid with purple and green patterned flowers.',
      'Southern China, Hong Kong, and Hainan',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/3/33/Paphiopedilum_purpuratum1.jpg',
      'Paphiopedilum purpuratum flower with purple pouch and patterned dorsal sepal.',
      'https://commons.wikimedia.org/wiki/File:Paphiopedilum_purpuratum1.jpg',
      'CC BY-SA 3.0',
      'KENPEI, via Wikimedia Commons'
    ),
    (
      'kovachs-phragmipedium',
      'Kovach''s Phragmipedium',
      'Phragmipedium kovachii',
      'Phragmipedium',
      'A critically endangered Peruvian slipper orchid known for very large rose-purple flowers.',
      'Northern Peru',
      'lithophyte',
      'https://upload.wikimedia.org/wikipedia/commons/0/0a/Phragmipedium_kovachii_bloom.jpg',
      'Large rose-purple Phragmipedium kovachii slipper orchid flower.',
      'https://commons.wikimedia.org/wiki/File:Phragmipedium_kovachii_bloom.jpg',
      'CC0',
      'Achamore, via Wikimedia Commons'
    ),
    (
      'golden-slipper-orchid',
      'Golden Slipper Orchid',
      'Paphiopedilum armeniacum',
      'Paphiopedilum',
      'An endangered golden-yellow slipper orchid from limestone habitats in Yunnan.',
      'Yunnan, China',
      'lithophyte',
      'https://upload.wikimedia.org/wikipedia/commons/b/b1/Paphiopedilum_armeniacum_001_GotBot_2018.jpg',
      'Golden-yellow Paphiopedilum armeniacum slipper orchid flower.',
      'https://commons.wikimedia.org/wiki/File:Paphiopedilum_armeniacum_001_GotBot_2018.jpg',
      'CC BY 4.0',
      'Averater, via Wikimedia Commons'
    ),
    (
      'western-prairie-fringed-orchid',
      'Western Prairie Fringed Orchid',
      'Platanthera praeclara',
      'Platanthera',
      'A threatened tallgrass prairie orchid with white night-fragrant fringed flowers.',
      'Central North American tallgrass prairies',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/3/3c/Platanthera-praeclara.web.jpg',
      'White Platanthera praeclara western prairie fringed orchid flowers on an upright spike.',
      'https://commons.wikimedia.org/wiki/File:Platanthera-praeclara.web.jpg',
      'Public domain',
      'Tom Spikermeier/USGS, via Wikimedia Commons'
    ),
    (
      'small-whorled-pogonia',
      'Small Whorled Pogonia',
      'Isotria medeoloides',
      'Isotria',
      'A rare woodland orchid with a whorl of leaves and understated greenish flowers.',
      'Eastern North America',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/2/29/Isotria_medeoloides2.jpg',
      'Isotria medeoloides small whorled pogonia plant with whorled leaves.',
      'https://commons.wikimedia.org/wiki/File:Isotria_medeoloides2.jpg',
      'Public domain',
      'Robert H. Mohlenbrock/USDA-NRCS PLANTS Database, via Wikimedia Commons'
    ),
    (
      'grand-spider-orchid',
      'Grand Spider Orchid',
      'Caladenia huegelii',
      'Caladenia',
      'A critically endangered Western Australian spider orchid with long narrow floral segments.',
      'Southwestern Western Australia',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/a/a3/Caladenia_huegelii_-_Grand_Spider_orchid_%282680576997%29.jpg',
      'Caladenia huegelii grand spider orchid flower with long slender petals and sepals.',
      'https://commons.wikimedia.org/wiki/File:Caladenia_huegelii_-_Grand_Spider_orchid_(2680576997).jpg',
      'CC BY 2.0',
      'Jean and Fred, via Wikimedia Commons'
    ),
    (
      'queen-of-sheba-orchid',
      'Queen of Sheba Orchid',
      'Thelymitra variegata',
      'Thelymitra',
      'A rare sun orchid admired for jewel-toned purple, blue, yellow, and red flowers.',
      'Southwestern Western Australia',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/f/f1/Thelymitra_variegata.jpg',
      'Colorful Thelymitra variegata Queen of Sheba orchid flower.',
      'https://commons.wikimedia.org/wiki/File:Thelymitra_variegata.jpg',
      'CC0',
      'Hogggyyy, via Wikimedia Commons'
    ),
    (
      'navasota-ladies-tresses',
      'Navasota Ladies''-tresses',
      'Spiranthes parksii',
      'Spiranthes',
      'An endangered Texas orchid with small white flowers spiraling along an upright stem.',
      'East-central Texas, United States',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/e/e6/Spiranthes_parksii.jpg',
      'Spiranthes parksii Navasota ladies-tresses orchid with small white spiral flowers.',
      'https://commons.wikimedia.org/wiki/File:Spiranthes_parksii.jpg',
      'CC BY 4.0',
      'Hugh D. Wilson, via Wikimedia Commons'
    ),
    (
      'xerophytic-mexipedium',
      'Xerophytic Mexipedium',
      'Mexipedium xerophyticum',
      'Mexipedium',
      'A critically endangered miniature slipper orchid known from a very restricted limestone habitat.',
      'Oaxaca, Mexico',
      'lithophyte',
      'https://upload.wikimedia.org/wikipedia/commons/b/bf/Mexipedium_xerophyticum_Orchi_008.jpg',
      'Small white Mexipedium xerophyticum slipper orchid flowers on a compact plant.',
      'https://commons.wikimedia.org/wiki/File:Mexipedium_xerophyticum_Orchi_008.jpg',
      'CC BY-SA 3.0',
      'Orchi, via Wikimedia Commons'
    ),
    (
      'kentucky-ladys-slipper',
      'Kentucky Lady''s Slipper',
      'Cypripedium kentuckiense',
      'Cypripedium',
      'A rare North American lady slipper orchid with very large cream and maroon flowers.',
      'South-central United States',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/e/e3/Cypripedium_kentuckiense_flower.jpg',
      'Cypripedium kentuckiense flower with large cream pouch and maroon petals.',
      'https://commons.wikimedia.org/wiki/File:Cypripedium_kentuckiense_flower.jpg',
      'CC BY-SA 4.0',
      'James Steakley, via Wikimedia Commons'
    ),
    (
      'fen-orchid',
      'Fen Orchid',
      'Liparis loeselii',
      'Liparis',
      'A protected wetland orchid with small greenish flowers and declining fen habitats.',
      'Europe and parts of eastern North America',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/a/aa/Groenknolorchis_-_fen_orchid_-_Liparis_loeselii_2.jpg',
      'Liparis loeselii fen orchid plant in flower among wetland vegetation.',
      'https://commons.wikimedia.org/wiki/File:Groenknolorchis_-_fen_orchid_-_Liparis_loeselii_2.jpg',
      'CC BY 4.0',
      'Bouke ten Cate, via Wikimedia Commons'
    ),
    (
      'glossy-leaved-hammer-orchid',
      'Glossy-leaved Hammer Orchid',
      'Drakaea elastica',
      'Drakaea',
      'A critically endangered Western Australian hammer orchid with highly specialized wasp pollination.',
      'Southwestern Western Australia',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/6/61/Drakaea_elastica_-_journal.pone.0059111.jpg',
      'Drakaea elastica glossy-leaved hammer orchid flower with wasp-mimicking form.',
      'https://commons.wikimedia.org/wiki/File:Drakaea_elastica_-_journal.pone.0059111.jpg',
      'CC BY 2.5',
      'Myles H. M. Menz, Ryan D. Phillips, Kingsley W. Dixon, Rod Peakall and Raphael K. Didham, via Wikimedia Commons'
    ),
    (
      'showy-ladys-slipper',
      'Showy Lady''s Slipper',
      'Cypripedium reginae',
      'Cypripedium',
      'A protected wetland lady slipper orchid with large white and pink pouch flowers.',
      'Northern North America',
      'terrestrial',
      'https://upload.wikimedia.org/wikipedia/commons/d/d2/Cypripedium_reginae_-_Presqu%27ile.jpg',
      'Cypripedium reginae showy lady slipper orchid flower with white petals and pink pouch.',
      'https://commons.wikimedia.org/wiki/File:Cypripedium_reginae_-_Presqu%27ile.jpg',
      'CC BY-SA 4.0',
      'The Cosmonaut, via Wikimedia Commons'
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
    WHEN 'elizabeth-ann-bulbophyllum' THEN 'advanced'
    WHEN 'terete-vanda' THEN 'advanced'
    WHEN 'scarlet-cochlioda' THEN 'advanced'
    WHEN 'tracys-cymbidium' THEN 'intermediate'
    WHEN 'swan-orchid' THEN 'advanced'
    WHEN 'galeandra-orchid' THEN 'intermediate'
    WHEN 'antenna-restrepia' THEN 'advanced'
    WHEN 'silver-stelis' THEN 'advanced'
    WHEN 'grobyi-specklinia' THEN 'intermediate'
    WHEN 'comparettia-orchid' THEN 'intermediate'
    WHEN 'lady-of-the-night-orchid' THEN 'intermediate'
    WHEN 'scaphosepalum-orchid' THEN 'advanced'
    WHEN 'purple-ground-orchid' THEN 'beginner'
    WHEN 'giant-arpophyllum' THEN 'intermediate'
    WHEN 'red-vanda' THEN 'advanced'
    WHEN 'roezls-miltoniopsis' THEN 'advanced'
    WHEN 'peters-eulophia' THEN 'intermediate'
    WHEN 'mini-erycina' THEN 'intermediate'
    WHEN 'bamboo-orchid' THEN 'beginner'
    WHEN 'cooper-cycnoches' THEN 'advanced'
    WHEN 'ghost-orchid' THEN 'advanced'
    WHEN 'rothschilds-slipper-orchid' THEN 'advanced'
    WHEN 'sanders-paphiopedilum' THEN 'advanced'
    WHEN 'canhs-paphiopedilum' THEN 'advanced'
    WHEN 'western-underground-orchid' THEN 'advanced'
    WHEN 'vietnamese-paphiopedilum' THEN 'advanced'
    WHEN 'hangs-paphiopedilum' THEN 'advanced'
    WHEN 'purple-paphiopedilum' THEN 'advanced'
    WHEN 'kovachs-phragmipedium' THEN 'advanced'
    WHEN 'golden-slipper-orchid' THEN 'advanced'
    WHEN 'western-prairie-fringed-orchid' THEN 'advanced'
    WHEN 'small-whorled-pogonia' THEN 'advanced'
    WHEN 'grand-spider-orchid' THEN 'advanced'
    WHEN 'queen-of-sheba-orchid' THEN 'advanced'
    WHEN 'navasota-ladies-tresses' THEN 'advanced'
    WHEN 'xerophytic-mexipedium' THEN 'advanced'
    WHEN 'kentucky-ladys-slipper' THEN 'advanced'
    WHEN 'fen-orchid' THEN 'advanced'
    WHEN 'glossy-leaved-hammer-orchid' THEN 'advanced'
    WHEN 'showy-ladys-slipper' THEN 'advanced'
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
    WHEN 'elizabeth-ann-bulbophyllum' THEN 'medium'
    WHEN 'terete-vanda' THEN 'high'
    WHEN 'scarlet-cochlioda' THEN 'medium'
    WHEN 'tracys-cymbidium' THEN 'bright-indirect'
    WHEN 'swan-orchid' THEN 'bright-indirect'
    WHEN 'galeandra-orchid' THEN 'bright-indirect'
    WHEN 'antenna-restrepia' THEN 'medium'
    WHEN 'silver-stelis' THEN 'medium'
    WHEN 'grobyi-specklinia' THEN 'medium'
    WHEN 'comparettia-orchid' THEN 'bright-indirect'
    WHEN 'lady-of-the-night-orchid' THEN 'high'
    WHEN 'scaphosepalum-orchid' THEN 'medium'
    WHEN 'purple-ground-orchid' THEN 'bright-indirect'
    WHEN 'giant-arpophyllum' THEN 'bright-indirect'
    WHEN 'red-vanda' THEN 'high'
    WHEN 'roezls-miltoniopsis' THEN 'medium'
    WHEN 'peters-eulophia' THEN 'high'
    WHEN 'mini-erycina' THEN 'bright-indirect'
    WHEN 'bamboo-orchid' THEN 'high'
    WHEN 'cooper-cycnoches' THEN 'bright-indirect'
    WHEN 'ghost-orchid' THEN 'bright-indirect'
    WHEN 'rothschilds-slipper-orchid' THEN 'medium'
    WHEN 'sanders-paphiopedilum' THEN 'medium'
    WHEN 'canhs-paphiopedilum' THEN 'medium'
    WHEN 'western-underground-orchid' THEN 'low'
    WHEN 'vietnamese-paphiopedilum' THEN 'medium'
    WHEN 'hangs-paphiopedilum' THEN 'medium'
    WHEN 'purple-paphiopedilum' THEN 'medium'
    WHEN 'kovachs-phragmipedium' THEN 'medium'
    WHEN 'golden-slipper-orchid' THEN 'medium'
    WHEN 'western-prairie-fringed-orchid' THEN 'high'
    WHEN 'small-whorled-pogonia' THEN 'low'
    WHEN 'grand-spider-orchid' THEN 'bright-indirect'
    WHEN 'queen-of-sheba-orchid' THEN 'high'
    WHEN 'navasota-ladies-tresses' THEN 'bright-indirect'
    WHEN 'xerophytic-mexipedium' THEN 'medium'
    WHEN 'kentucky-ladys-slipper' THEN 'medium'
    WHEN 'fen-orchid' THEN 'bright-indirect'
    WHEN 'glossy-leaved-hammer-orchid' THEN 'bright-indirect'
    WHEN 'showy-ladys-slipper' THEN 'medium'
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
    WHEN 'elizabeth-ann-bulbophyllum' THEN 'frequent'
    WHEN 'terete-vanda' THEN 'frequent'
    WHEN 'scarlet-cochlioda' THEN 'frequent'
    WHEN 'tracys-cymbidium' THEN 'moderate'
    WHEN 'swan-orchid' THEN 'moderate'
    WHEN 'galeandra-orchid' THEN 'moderate'
    WHEN 'antenna-restrepia' THEN 'frequent'
    WHEN 'silver-stelis' THEN 'frequent'
    WHEN 'grobyi-specklinia' THEN 'moderate'
    WHEN 'comparettia-orchid' THEN 'moderate'
    WHEN 'lady-of-the-night-orchid' THEN 'moderate'
    WHEN 'scaphosepalum-orchid' THEN 'frequent'
    WHEN 'purple-ground-orchid' THEN 'moderate'
    WHEN 'giant-arpophyllum' THEN 'moderate'
    WHEN 'red-vanda' THEN 'frequent'
    WHEN 'roezls-miltoniopsis' THEN 'frequent'
    WHEN 'peters-eulophia' THEN 'low'
    WHEN 'mini-erycina' THEN 'moderate'
    WHEN 'bamboo-orchid' THEN 'moderate'
    WHEN 'cooper-cycnoches' THEN 'moderate'
    WHEN 'ghost-orchid' THEN 'frequent'
    WHEN 'rothschilds-slipper-orchid' THEN 'moderate'
    WHEN 'sanders-paphiopedilum' THEN 'moderate'
    WHEN 'canhs-paphiopedilum' THEN 'moderate'
    WHEN 'western-underground-orchid' THEN 'moderate'
    WHEN 'vietnamese-paphiopedilum' THEN 'moderate'
    WHEN 'hangs-paphiopedilum' THEN 'moderate'
    WHEN 'purple-paphiopedilum' THEN 'moderate'
    WHEN 'kovachs-phragmipedium' THEN 'frequent'
    WHEN 'golden-slipper-orchid' THEN 'moderate'
    WHEN 'western-prairie-fringed-orchid' THEN 'moderate'
    WHEN 'small-whorled-pogonia' THEN 'moderate'
    WHEN 'grand-spider-orchid' THEN 'low'
    WHEN 'queen-of-sheba-orchid' THEN 'low'
    WHEN 'navasota-ladies-tresses' THEN 'moderate'
    WHEN 'xerophytic-mexipedium' THEN 'moderate'
    WHEN 'kentucky-ladys-slipper' THEN 'moderate'
    WHEN 'fen-orchid' THEN 'frequent'
    WHEN 'glossy-leaved-hammer-orchid' THEN 'low'
    WHEN 'showy-ladys-slipper' THEN 'frequent'
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
    WHEN 'elizabeth-ann-bulbophyllum' THEN 70
    WHEN 'terete-vanda' THEN 60
    WHEN 'scarlet-cochlioda' THEN 70
    WHEN 'tracys-cymbidium' THEN 50
    WHEN 'swan-orchid' THEN 50
    WHEN 'galeandra-orchid' THEN 55
    WHEN 'antenna-restrepia' THEN 75
    WHEN 'silver-stelis' THEN 75
    WHEN 'grobyi-specklinia' THEN 65
    WHEN 'comparettia-orchid' THEN 60
    WHEN 'lady-of-the-night-orchid' THEN 50
    WHEN 'scaphosepalum-orchid' THEN 75
    WHEN 'purple-ground-orchid' THEN 50
    WHEN 'giant-arpophyllum' THEN 50
    WHEN 'red-vanda' THEN 60
    WHEN 'roezls-miltoniopsis' THEN 60
    WHEN 'peters-eulophia' THEN 30
    WHEN 'mini-erycina' THEN 55
    WHEN 'bamboo-orchid' THEN 50
    WHEN 'cooper-cycnoches' THEN 50
    WHEN 'ghost-orchid' THEN 75
    WHEN 'rothschilds-slipper-orchid' THEN 60
    WHEN 'sanders-paphiopedilum' THEN 70
    WHEN 'canhs-paphiopedilum' THEN 70
    WHEN 'western-underground-orchid' THEN 50
    WHEN 'vietnamese-paphiopedilum' THEN 60
    WHEN 'hangs-paphiopedilum' THEN 60
    WHEN 'purple-paphiopedilum' THEN 60
    WHEN 'kovachs-phragmipedium' THEN 70
    WHEN 'golden-slipper-orchid' THEN 60
    WHEN 'western-prairie-fringed-orchid' THEN 45
    WHEN 'small-whorled-pogonia' THEN 50
    WHEN 'grand-spider-orchid' THEN 35
    WHEN 'queen-of-sheba-orchid' THEN 35
    WHEN 'navasota-ladies-tresses' THEN 45
    WHEN 'xerophytic-mexipedium' THEN 45
    WHEN 'kentucky-ladys-slipper' THEN 50
    WHEN 'fen-orchid' THEN 60
    WHEN 'glossy-leaved-hammer-orchid' THEN 35
    WHEN 'showy-ladys-slipper' THEN 60
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
    WHEN 'elizabeth-ann-bulbophyllum' THEN 90
    WHEN 'terete-vanda' THEN 85
    WHEN 'scarlet-cochlioda' THEN 90
    WHEN 'tracys-cymbidium' THEN 75
    WHEN 'swan-orchid' THEN 75
    WHEN 'galeandra-orchid' THEN 80
    WHEN 'antenna-restrepia' THEN 90
    WHEN 'silver-stelis' THEN 90
    WHEN 'grobyi-specklinia' THEN 85
    WHEN 'comparettia-orchid' THEN 85
    WHEN 'lady-of-the-night-orchid' THEN 80
    WHEN 'scaphosepalum-orchid' THEN 90
    WHEN 'purple-ground-orchid' THEN 75
    WHEN 'giant-arpophyllum' THEN 80
    WHEN 'red-vanda' THEN 85
    WHEN 'roezls-miltoniopsis' THEN 85
    WHEN 'peters-eulophia' THEN 60
    WHEN 'mini-erycina' THEN 80
    WHEN 'bamboo-orchid' THEN 80
    WHEN 'cooper-cycnoches' THEN 80
    WHEN 'ghost-orchid' THEN 95
    WHEN 'rothschilds-slipper-orchid' THEN 80
    WHEN 'sanders-paphiopedilum' THEN 85
    WHEN 'canhs-paphiopedilum' THEN 90
    WHEN 'western-underground-orchid' THEN 80
    WHEN 'vietnamese-paphiopedilum' THEN 85
    WHEN 'hangs-paphiopedilum' THEN 85
    WHEN 'purple-paphiopedilum' THEN 85
    WHEN 'kovachs-phragmipedium' THEN 90
    WHEN 'golden-slipper-orchid' THEN 80
    WHEN 'western-prairie-fringed-orchid' THEN 75
    WHEN 'small-whorled-pogonia' THEN 80
    WHEN 'grand-spider-orchid' THEN 70
    WHEN 'queen-of-sheba-orchid' THEN 70
    WHEN 'navasota-ladies-tresses' THEN 75
    WHEN 'xerophytic-mexipedium' THEN 75
    WHEN 'kentucky-ladys-slipper' THEN 80
    WHEN 'fen-orchid' THEN 90
    WHEN 'glossy-leaved-hammer-orchid' THEN 70
    WHEN 'showy-ladys-slipper' THEN 90
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
    WHEN 'elizabeth-ann-bulbophyllum' THEN 18
    WHEN 'terete-vanda' THEN 20
    WHEN 'scarlet-cochlioda' THEN 10
    WHEN 'tracys-cymbidium' THEN 10
    WHEN 'swan-orchid' THEN 18
    WHEN 'galeandra-orchid' THEN 18
    WHEN 'antenna-restrepia' THEN 10
    WHEN 'silver-stelis' THEN 10
    WHEN 'grobyi-specklinia' THEN 14
    WHEN 'comparettia-orchid' THEN 16
    WHEN 'lady-of-the-night-orchid' THEN 16
    WHEN 'scaphosepalum-orchid' THEN 10
    WHEN 'purple-ground-orchid' THEN 18
    WHEN 'giant-arpophyllum' THEN 12
    WHEN 'red-vanda' THEN 18
    WHEN 'roezls-miltoniopsis' THEN 10
    WHEN 'peters-eulophia' THEN 16
    WHEN 'mini-erycina' THEN 16
    WHEN 'bamboo-orchid' THEN 18
    WHEN 'cooper-cycnoches' THEN 18
    WHEN 'ghost-orchid' THEN 18
    WHEN 'rothschilds-slipper-orchid' THEN 16
    WHEN 'sanders-paphiopedilum' THEN 20
    WHEN 'canhs-paphiopedilum' THEN 16
    WHEN 'western-underground-orchid' THEN 10
    WHEN 'vietnamese-paphiopedilum' THEN 15
    WHEN 'hangs-paphiopedilum' THEN 12
    WHEN 'purple-paphiopedilum' THEN 14
    WHEN 'kovachs-phragmipedium' THEN 14
    WHEN 'golden-slipper-orchid' THEN 10
    WHEN 'western-prairie-fringed-orchid' THEN 12
    WHEN 'small-whorled-pogonia' THEN 10
    WHEN 'grand-spider-orchid' THEN 8
    WHEN 'queen-of-sheba-orchid' THEN 8
    WHEN 'navasota-ladies-tresses' THEN 10
    WHEN 'xerophytic-mexipedium' THEN 12
    WHEN 'kentucky-ladys-slipper' THEN 10
    WHEN 'fen-orchid' THEN 8
    WHEN 'glossy-leaved-hammer-orchid' THEN 8
    WHEN 'showy-ladys-slipper' THEN 5
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
    WHEN 'elizabeth-ann-bulbophyllum' THEN 30
    WHEN 'terete-vanda' THEN 34
    WHEN 'scarlet-cochlioda' THEN 24
    WHEN 'tracys-cymbidium' THEN 26
    WHEN 'swan-orchid' THEN 30
    WHEN 'galeandra-orchid' THEN 30
    WHEN 'antenna-restrepia' THEN 22
    WHEN 'silver-stelis' THEN 24
    WHEN 'grobyi-specklinia' THEN 26
    WHEN 'comparettia-orchid' THEN 28
    WHEN 'lady-of-the-night-orchid' THEN 32
    WHEN 'scaphosepalum-orchid' THEN 24
    WHEN 'purple-ground-orchid' THEN 32
    WHEN 'giant-arpophyllum' THEN 28
    WHEN 'red-vanda' THEN 32
    WHEN 'roezls-miltoniopsis' THEN 24
    WHEN 'peters-eulophia' THEN 34
    WHEN 'mini-erycina' THEN 28
    WHEN 'bamboo-orchid' THEN 32
    WHEN 'cooper-cycnoches' THEN 32
    WHEN 'ghost-orchid' THEN 30
    WHEN 'rothschilds-slipper-orchid' THEN 29
    WHEN 'sanders-paphiopedilum' THEN 28
    WHEN 'canhs-paphiopedilum' THEN 25
    WHEN 'western-underground-orchid' THEN 24
    WHEN 'vietnamese-paphiopedilum' THEN 26
    WHEN 'hangs-paphiopedilum' THEN 26
    WHEN 'purple-paphiopedilum' THEN 28
    WHEN 'kovachs-phragmipedium' THEN 26
    WHEN 'golden-slipper-orchid' THEN 25
    WHEN 'western-prairie-fringed-orchid' THEN 30
    WHEN 'small-whorled-pogonia' THEN 26
    WHEN 'grand-spider-orchid' THEN 24
    WHEN 'queen-of-sheba-orchid' THEN 26
    WHEN 'navasota-ladies-tresses' THEN 28
    WHEN 'xerophytic-mexipedium' THEN 27
    WHEN 'kentucky-ladys-slipper' THEN 26
    WHEN 'fen-orchid' THEN 24
    WHEN 'glossy-leaved-hammer-orchid' THEN 24
    WHEN 'showy-ladys-slipper' THEN 24
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
    WHEN 'elizabeth-ann-bulbophyllum' THEN 'Basket or fine bark mix with high humidity and excellent airflow.'
    WHEN 'terete-vanda' THEN 'Open basket, mounted culture, or very coarse bark for fast root drying.'
    WHEN 'scarlet-cochlioda' THEN 'Fine bark mix kept cool, moist, and airy.'
    WHEN 'tracys-cymbidium' THEN 'Medium bark mix with drainage and a cooler seasonal rest.'
    WHEN 'swan-orchid' THEN 'Medium bark mix that supports heavy watering in growth and a dry rest.'
    WHEN 'galeandra-orchid' THEN 'Medium bark mix with a drier rest after seasonal growth matures.'
    WHEN 'antenna-restrepia' THEN 'Fine bark or sphagnum-based mix kept cool, humid, and airy.'
    WHEN 'silver-stelis' THEN 'Fine bark or mounted culture with constant humidity and airflow.'
    WHEN 'grobyi-specklinia' THEN 'Fine bark, mounted culture, or small airy pot with steady humidity.'
    WHEN 'comparettia-orchid' THEN 'Mounted culture or fine bark with quick drainage and high humidity.'
    WHEN 'lady-of-the-night-orchid' THEN 'Coarse bark, basket, or mounted culture with fast drying and strong airflow.'
    WHEN 'scaphosepalum-orchid' THEN 'Fine bark or sphagnum-based mix kept cool, moist, and very airy.'
    WHEN 'purple-ground-orchid' THEN 'Loose terrestrial orchid mix with drainage and steady moisture.'
    WHEN 'giant-arpophyllum' THEN 'Medium bark mix or mounted culture with reliable drainage.'
    WHEN 'red-vanda' THEN 'Open basket or very coarse bark with excellent airflow around roots.'
    WHEN 'roezls-miltoniopsis' THEN 'Fine to medium bark mix that stays evenly moist but airy.'
    WHEN 'peters-eulophia' THEN 'Fast-draining terrestrial mix with mineral grit and seasonal drying.'
    WHEN 'mini-erycina' THEN 'Mounted culture or a tiny airy pot with fine bark and quick drainage.'
    WHEN 'bamboo-orchid' THEN 'Loose terrestrial mix with organic matter and excellent drainage.'
    WHEN 'cooper-cycnoches' THEN 'Medium bark or sphagnum mix for growth, kept much drier during dormancy.'
    WHEN 'ghost-orchid' THEN 'Mounted culture on untreated wood with constant humidity and no stale standing water.'
    WHEN 'rothschilds-slipper-orchid' THEN 'Open slipper orchid mix with bark, perlite, and limestone or mineral grit.'
    WHEN 'sanders-paphiopedilum' THEN 'Limestone-influenced slipper orchid mix with bark, moss, and excellent drainage.'
    WHEN 'canhs-paphiopedilum' THEN 'Limestone-style mineral mix kept airy, shaded, and evenly humid.'
    WHEN 'western-underground-orchid' THEN 'Conservation-only mycorrhizal habitat tied to broombush roots and native fungi.'
    WHEN 'vietnamese-paphiopedilum' THEN 'Airy limestone-influenced slipper orchid mix with fine bark and mineral drainage.'
    WHEN 'hangs-paphiopedilum' THEN 'Calcareous slipper orchid mix with bark, perlite, and mineral grit.'
    WHEN 'purple-paphiopedilum' THEN 'Moist but airy forest-floor mix with bark, leaf mold, and mineral drainage.'
    WHEN 'kovachs-phragmipedium' THEN 'Moist limestone-influenced mix with constant drainage and low-salt water.'
    WHEN 'golden-slipper-orchid' THEN 'Limestone-based mix with bark, grit, and steady but airy moisture.'
    WHEN 'western-prairie-fringed-orchid' THEN 'Conservation-only prairie soil with native grasses, seasonal moisture, and intact fungal partners.'
    WHEN 'small-whorled-pogonia' THEN 'Conservation-only acidic woodland soil with leaf litter, shade, and native mycorrhizae.'
    WHEN 'grand-spider-orchid' THEN 'Conservation-only sandy Banksia woodland soil with winter moisture and summer dormancy.'
    WHEN 'queen-of-sheba-orchid' THEN 'Conservation-only sandy heath soil with seasonal winter rain and dry summer rest.'
    WHEN 'navasota-ladies-tresses' THEN 'Conservation-only sandy post-oak woodland soil with seasonal moisture and native fungi.'
    WHEN 'xerophytic-mexipedium' THEN 'Airy limestone-influenced mineral mix with careful moisture and strong drainage.'
    WHEN 'kentucky-ladys-slipper' THEN 'Conservation-only humus-rich woodland soil with steady moisture and native fungi.'
    WHEN 'fen-orchid' THEN 'Conservation-only calcareous fen soil with constant clean moisture and intact wetland hydrology.'
    WHEN 'glossy-leaved-hammer-orchid' THEN 'Conservation-only sandy woodland soil with winter growth, summer dormancy, and native fungi.'
    WHEN 'showy-ladys-slipper' THEN 'Conservation-only cool wetland soil with mossy moisture and native fungal partners.'
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
    WHEN 'elizabeth-ann-bulbophyllum' THEN 'varies'
    WHEN 'terete-vanda' THEN 'summer'
    WHEN 'scarlet-cochlioda' THEN 'winter'
    WHEN 'tracys-cymbidium' THEN 'autumn'
    WHEN 'swan-orchid' THEN 'summer'
    WHEN 'galeandra-orchid' THEN 'summer'
    WHEN 'antenna-restrepia' THEN 'varies'
    WHEN 'silver-stelis' THEN 'varies'
    WHEN 'grobyi-specklinia' THEN 'varies'
    WHEN 'comparettia-orchid' THEN 'spring'
    WHEN 'lady-of-the-night-orchid' THEN 'varies'
    WHEN 'scaphosepalum-orchid' THEN 'varies'
    WHEN 'purple-ground-orchid' THEN 'varies'
    WHEN 'giant-arpophyllum' THEN 'spring'
    WHEN 'red-vanda' THEN 'summer'
    WHEN 'roezls-miltoniopsis' THEN 'spring'
    WHEN 'peters-eulophia' THEN 'summer'
    WHEN 'mini-erycina' THEN 'varies'
    WHEN 'bamboo-orchid' THEN 'varies'
    WHEN 'cooper-cycnoches' THEN 'autumn'
    WHEN 'ghost-orchid' THEN 'summer'
    WHEN 'rothschilds-slipper-orchid' THEN 'spring'
    WHEN 'sanders-paphiopedilum' THEN 'spring'
    WHEN 'canhs-paphiopedilum' THEN 'spring'
    WHEN 'western-underground-orchid' THEN 'winter'
    WHEN 'vietnamese-paphiopedilum' THEN 'spring'
    WHEN 'hangs-paphiopedilum' THEN 'spring'
    WHEN 'purple-paphiopedilum' THEN 'summer'
    WHEN 'kovachs-phragmipedium' THEN 'varies'
    WHEN 'golden-slipper-orchid' THEN 'spring'
    WHEN 'western-prairie-fringed-orchid' THEN 'summer'
    WHEN 'small-whorled-pogonia' THEN 'spring'
    WHEN 'grand-spider-orchid' THEN 'spring'
    WHEN 'queen-of-sheba-orchid' THEN 'spring'
    WHEN 'navasota-ladies-tresses' THEN 'autumn'
    WHEN 'xerophytic-mexipedium' THEN 'varies'
    WHEN 'kentucky-ladys-slipper' THEN 'spring'
    WHEN 'fen-orchid' THEN 'summer'
    WHEN 'glossy-leaved-hammer-orchid' THEN 'spring'
    WHEN 'showy-ladys-slipper' THEN 'summer'
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
    WHEN 'elizabeth-ann-bulbophyllum' THEN 'Long ribbon-like flowers hang in dramatic umbels from compact growths.'
    WHEN 'terete-vanda' THEN 'Pink flowers open on sun-grown canes with pencil-like terete leaves.'
    WHEN 'scarlet-cochlioda' THEN 'Bright orange-red flowers prefer cool, humid conditions.'
    WHEN 'tracys-cymbidium' THEN 'Fragrant striped flowers open on arching spikes from mature pseudobulbs.'
    WHEN 'swan-orchid' THEN 'Unusual swan-like flowers follow strong seasonal growth and a dry rest.'
    WHEN 'galeandra-orchid' THEN 'Hooded flowers appear during warm active growth.'
    WHEN 'antenna-restrepia' THEN 'Small striped flowers appear from leaf bases in cool humid conditions.'
    WHEN 'silver-stelis' THEN 'Tiny flowers line slender spikes and reward stable humidity.'
    WHEN 'grobyi-specklinia' THEN 'Small delicate flowers appear on compact pleurothallid growths.'
    WHEN 'comparettia-orchid' THEN 'Bright orange flowers can arch or hang from compact plants.'
    WHEN 'lady-of-the-night-orchid' THEN 'White night-fragrant flowers open from mature growths and are strongest after dark.'
    WHEN 'scaphosepalum-orchid' THEN 'Small unusual flowers can appear successively when humidity and cool air stay stable.'
    WHEN 'purple-ground-orchid' THEN 'Upright spikes can carry many purple flowers through warm growing periods.'
    WHEN 'giant-arpophyllum' THEN 'Dense purple-pink spikes rise from mature growths, often in spring.'
    WHEN 'red-vanda' THEN 'Branching sprays carry vivid red-orange flowers in bright warm conditions.'
    WHEN 'roezls-miltoniopsis' THEN 'Broad pansy-like flowers prefer cool humidity and steady moisture.'
    WHEN 'peters-eulophia' THEN 'Green and purple flowers appear after strong seasonal growth in bright conditions.'
    WHEN 'mini-erycina' THEN 'Tiny yellow flowers reward stable humidity and careful watering.'
    WHEN 'bamboo-orchid' THEN 'Tall reed-like stems can produce bright pink flowers repeatedly in warm climates.'
    WHEN 'cooper-cycnoches' THEN 'Waxy flowers appear from mature deciduous growths before the dry rest.'
    WHEN 'ghost-orchid' THEN 'White fragrant flowers emerge from leafless roots and seem suspended against bark.'
    WHEN 'rothschilds-slipper-orchid' THEN 'Large striped flowers open on tall spikes and can take years of patient growth.'
    WHEN 'sanders-paphiopedilum' THEN 'Long ribbon-like petals can hang dramatically from the slipper-shaped flowers.'
    WHEN 'canhs-paphiopedilum' THEN 'Small solitary flowers appear from compact plants in limestone cliff habitats.'
    WHEN 'western-underground-orchid' THEN 'Flower heads form underground and may only slightly break the soil surface.'
    WHEN 'vietnamese-paphiopedilum' THEN 'Soft pink flowers open from compact growths and can last for weeks.'
    WHEN 'hangs-paphiopedilum' THEN 'Large pale yellow flowers appear singly and are prized for their broad rounded form.'
    WHEN 'purple-paphiopedilum' THEN 'Purple patterned flowers rise from shaded forest-floor growths.'
    WHEN 'kovachs-phragmipedium' THEN 'Huge rose-purple flowers appear from mature growths in moist limestone conditions.'
    WHEN 'golden-slipper-orchid' THEN 'Bright golden flowers appear above mottled leaves in cool bright seasons.'
    WHEN 'western-prairie-fringed-orchid' THEN 'Tall spikes of white fringed flowers open in summer and are often night-fragrant.'
    WHEN 'small-whorled-pogonia' THEN 'Small greenish flowers appear above whorled leaves in quiet woodland habitats.'
    WHEN 'grand-spider-orchid' THEN 'Long spider-like flowers emerge from winter-wet sandy soils in spring.'
    WHEN 'queen-of-sheba-orchid' THEN 'Brilliant multicolored sun-orchid flowers open in bright warm conditions.'
    WHEN 'navasota-ladies-tresses' THEN 'White flowers spiral around upright stems in autumn woodland openings.'
    WHEN 'xerophytic-mexipedium' THEN 'Tiny white slipper flowers appear from compact fan-shaped growths.'
    WHEN 'kentucky-ladys-slipper' THEN 'Large pouch flowers rise above woodland leaves in late spring.'
    WHEN 'fen-orchid' THEN 'Small greenish flowers form on slender spikes in open wet fen habitat.'
    WHEN 'glossy-leaved-hammer-orchid' THEN 'Unusual hammer-like flowers mimic female wasps to attract specific pollinators.'
    WHEN 'showy-ladys-slipper' THEN 'Large white and pink flowers open in cool wetland sites in early summer.'
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
    WHEN 'elizabeth-ann-bulbophyllum' THEN 'Keep warm, shaded, very humid, and airy, watering before the fine roots dry hard.'
    WHEN 'terete-vanda' THEN 'Give very high light, warmth, humidity, and frequent watering with fast root drying.'
    WHEN 'scarlet-cochlioda' THEN 'Grow cool and humid in moderate light with evenly moist media and strong airflow.'
    WHEN 'tracys-cymbidium' THEN 'Grow bright and cool with thorough watering in growth and reduced water after blooming.'
    WHEN 'swan-orchid' THEN 'Water and feed heavily during leafy growth, then give a drier rest after leaves drop.'
    WHEN 'galeandra-orchid' THEN 'Grow warm with bright filtered light, regular water in growth, and a lighter dry rest.'
    WHEN 'antenna-restrepia' THEN 'Keep cool, shaded, humid, and evenly moist with constant gentle airflow.'
    WHEN 'silver-stelis' THEN 'Grow cool to intermediate in shade with high humidity and steady moisture.'
    WHEN 'grobyi-specklinia' THEN 'Provide shaded intermediate conditions, high humidity, and a small airy root zone.'
    WHEN 'comparettia-orchid' THEN 'Grow mounted or in a small airy pot with bright shade, humidity, and quick drainage.'
    WHEN 'lady-of-the-night-orchid' THEN 'Give bright light, warm air, strong airflow, and let roots dry lightly between waterings.'
    WHEN 'scaphosepalum-orchid' THEN 'Keep cool, shaded, very humid, and evenly moist while protecting roots from stale media.'
    WHEN 'purple-ground-orchid' THEN 'Grow warm and bright in a draining terrestrial mix, watering before the root zone dries hard.'
    WHEN 'giant-arpophyllum' THEN 'Provide bright filtered light, intermediate warmth, steady humidity, and good root aeration.'
    WHEN 'red-vanda' THEN 'Grow very bright and warm with frequent watering, high humidity, and fast-drying roots.'
    WHEN 'roezls-miltoniopsis' THEN 'Keep cool to intermediate in medium light with constant gentle moisture and airflow.'
    WHEN 'peters-eulophia' THEN 'Grow hot and bright with sharp drainage, watering in growth and reducing water in rest.'
    WHEN 'mini-erycina' THEN 'Use bright filtered light, high humidity, and a very airy root zone that never stays soggy.'
    WHEN 'bamboo-orchid' THEN 'Give warm bright conditions, regular watering, and a free-draining terrestrial mix.'
    WHEN 'cooper-cycnoches' THEN 'Water and feed during active growth, then keep much drier after leaves yellow and drop.'
    WHEN 'ghost-orchid' THEN 'Maintain very high humidity, pure water, bright shade, and strong care around the exposed roots.'
    WHEN 'rothschilds-slipper-orchid' THEN 'Grow evenly moist in moderate light with cool nights, clean water, and patient airflow.'
    WHEN 'sanders-paphiopedilum' THEN 'Keep warm, shaded, humid, and evenly moist in an airy limestone-influenced mix.'
    WHEN 'canhs-paphiopedilum' THEN 'Keep shaded, humid, and cool to intermediate; this is best treated as conservation-level culture.'
    WHEN 'western-underground-orchid' THEN 'Treat as conservation information only; survival depends on native fungi and host-plant habitat.'
    WHEN 'vietnamese-paphiopedilum' THEN 'Keep shaded and evenly moist with clean water, mineral drainage, and stable intermediate temperatures.'
    WHEN 'hangs-paphiopedilum' THEN 'Grow in moderate shade with cool nights, steady humidity, and a calcareous airy root zone.'
    WHEN 'purple-paphiopedilum' THEN 'Provide shaded humidity, even moisture, and gentle airflow while avoiding stale wet media.'
    WHEN 'kovachs-phragmipedium' THEN 'Keep evenly moist with clean water, medium light, calcium-rich drainage, and cool-to-intermediate nights.'
    WHEN 'golden-slipper-orchid' THEN 'Give cool to intermediate conditions, medium light, limestone drainage, and a careful winter-to-spring rhythm.'
    WHEN 'western-prairie-fringed-orchid' THEN 'Treat as conservation information only; survival depends on intact tallgrass prairie hydrology and pollinators.'
    WHEN 'small-whorled-pogonia' THEN 'Treat as conservation information only; protect shaded woodland habitat, leaf litter, and soil fungi.'
    WHEN 'grand-spider-orchid' THEN 'Treat as conservation information only; protect remnant sandy woodland habitat and seasonal dormancy.'
    WHEN 'queen-of-sheba-orchid' THEN 'Treat as conservation information only; protect native heathland soil cycles and avoid wild collection.'
    WHEN 'navasota-ladies-tresses' THEN 'Treat as conservation information only; protect Texas woodland openings and their natural soil relationships.'
    WHEN 'xerophytic-mexipedium' THEN 'Grow only from legal propagated material; use airy mineral drainage, moderate shade, and careful clean water.'
    WHEN 'kentucky-ladys-slipper' THEN 'Treat as conservation information only; protect woodland soil, fungal partners, and natural moisture cycles.'
    WHEN 'fen-orchid' THEN 'Treat as conservation information only; protect open fen hydrology, low nutrients, and wetland succession.'
    WHEN 'glossy-leaved-hammer-orchid' THEN 'Treat as conservation information only; protect pollinator habitat, native fungi, and seasonal sandy soils.'
    WHEN 'showy-ladys-slipper' THEN 'Treat as conservation information only; protect cool wetland habitat and never collect wild plants.'
  END
FROM seeded_orchids;

UPDATE orchids
SET is_rare = TRUE
WHERE slug IN (
  'ghost-orchid',
  'rothschilds-slipper-orchid',
  'sanders-paphiopedilum',
  'canhs-paphiopedilum',
  'western-underground-orchid',
  'vietnamese-paphiopedilum',
  'hangs-paphiopedilum',
  'purple-paphiopedilum',
  'kovachs-phragmipedium',
  'golden-slipper-orchid',
  'western-prairie-fringed-orchid',
  'small-whorled-pogonia',
  'grand-spider-orchid',
  'queen-of-sheba-orchid',
  'navasota-ladies-tresses',
  'xerophytic-mexipedium',
  'kentucky-ladys-slipper',
  'fen-orchid',
  'glossy-leaved-hammer-orchid',
  'showy-ladys-slipper'
);

UPDATE orchids
SET native_region = native_region
  || '. This region gives important clues about temperature rhythm, seasonal rainfall, and natural light levels. In cultivation, use the location as a guide rather than an exact recipe, because home conditions are usually more stable than wild habitats.'
;

UPDATE orchid_care_profiles
SET
  potting_medium = orchid_care_profiles.potting_medium
    || CASE orchids.growth_type
      WHEN 'epiphyte' THEN ' Epiphytic orchids naturally hold onto bark or branches, so the root zone should stay airy rather than packed tight. Choose a medium that drains quickly, lets oxygen reach the roots, and dries at a predictable pace.'
      WHEN 'terrestrial' THEN ' Terrestrial orchids grow with their roots in ground-level organic material, but they still need drainage and oxygen. Avoid heavy garden soil in pots, because dense wet media can suffocate roots and encourage rot.'
      WHEN 'lithophyte' THEN ' Lithophytic orchids anchor among rocks and mineral debris, so they benefit from open drainage and a firm, airy root environment. Mineral or bark-based mixes should hold some moisture without staying waterlogged.'
      ELSE ' Semi-terrestrial orchids need a balance between moisture-holding material and open drainage. The best mix supports the roots, keeps gentle humidity around them, and still allows excess water to leave fast.'
    END,
  bloom_notes = orchid_care_profiles.bloom_notes
    || ' Blooming is usually strongest when light, temperature, and watering rhythm match the plant''s active growth cycle. Avoid sudden changes once buds are forming, because stress, dryness, or stagnant air can shorten or interrupt flowering.',
  care_summary = orchid_care_profiles.care_summary
    || CASE
      WHEN orchids.is_rare THEN ' Treat this profile as learning and conservation guidance first. Rare orchids should come only from legal propagated sources, and wild plants or protected habitats should never be disturbed.'
      WHEN orchid_care_profiles.difficulty = 'beginner' THEN ' For a beginner-friendly routine, observe the roots and potting mix before watering instead of following a strict calendar. Small consistent adjustments are safer than dramatic changes in light, water, or temperature.'
      WHEN orchid_care_profiles.difficulty = 'intermediate' THEN ' This orchid rewards steady observation and small seasonal adjustments. Track how quickly the medium dries, how new growth develops, and whether leaves show signs of too much or too little light.'
      ELSE ' This orchid needs closer attention to seasonal rhythm, airflow, water quality, and root health. Change conditions gradually and avoid forcing growth when the plant is resting or recovering.'
    END
FROM orchids
WHERE orchid_care_profiles.orchid_id = orchids.id;

COMMIT;
