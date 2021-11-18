--
-- Déchargement des données de la table `categories`
--
USE pokeisti;
-- --------------------------------------------------------
-- Déchargement des données de la table `produits`
--
INSERT INTO `produits` (
        `product_id`,
        `name`,
        `picture`,
        `price`,
        `stock`,
        `type`,
    )
VALUES (
        'boosterdo',
        'Booster Destinées occultes',
        '/assets/products/booster_destinees_occultes.jpg',
        6.99,
        15,
        'BOOSTER',
    ),
    (
        'boostered',
        'Booster Ex Espèce Delta',
        '/assets/products/booster_ex_espece_delta.jpg',
        6.99,
        17,
        'BOOSTER',
    ),
    (
        'boostereph',
        'Booster Ex Phantom Holon',
        '/assets/products/booster_ex_phantom_holon.jpg',
        6.99,
        21,
        'BOOSTER',
    ),
    (
        'coffretlezargus',
        'Coffret combat de Ligue Lezargus',
        '/assets/products/coffret_combat_de_ligue_lezargus.jpg',
        24.99,
        15,
        'COFFRET',
    ),
    (
        'coffretcelebpikachuvmax',
        'Coffret Célébrations Figurine Pikachu VMAX',
        '/assets/products/coffret_pikachu_vmax_figurine.jpg',
        49.99,
        37,
        'COFFRET',
    ),
    (
        'coffretrayquazado',
        'Coffret Rayquaza Destinées Occultes',
        '/assets/products/coffret_rayquaza_destinees_occultes.jpg',
        49.99,
        18,
        'COFFRET',
    ),
    (
        'pikachustarexph',
        'Pikachu Star EX Phantom Holon GEM MT10',
        '/assets/products/pikachu_star_ex_phantom_holon_gemmt10.jpg',
        49.99,
        18,
        'CARTES',
    ),
    (
        'dracaufeuexgc',
        'Dracaufeu Holo EX Gardien de Crystal',
        '/assets/products/dracaufeu_holo_ex_gardien_de_crystal.jpg',
        499.99,
        18,
        'CARTES',
    ),
    (
        'dracaufeued1bs',
        'Dracaufeu Edition1 Set de Base PSA 10',
        '/assets/products/dracaufeu_holo_baseset_ed1.jpg',
        50000,
        2,
        'CARTES',
    ),
    (
        'figurinegameboypokemon',
        'Figurine Pokémon Gameboy',
        '/assets/products/figurine_gameboy_pokemon.jpg',
        45,
        10,
        'FIGURINE',
    ),
    (
        'figurinedawn',
        'Figurine Pokémon Dawn Platine ',
        '/assets/products/figurine_dawn_pokemon.jpg',
        39.99,
        7,
        'FIGURINE',
    ),
    (
        'figurinemewjgl',
        'Figurine Mew Jungle',
        '/assets/products/figurine_mew_jungle.jpg',
        29.99,
        5,
        'FIGURINE',
    ),
    -- --------------------------------------------------------
    -- Déchargement des données de la table `users`
    --