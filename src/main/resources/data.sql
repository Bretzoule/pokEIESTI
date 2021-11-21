USE pokeisti;
SET NAMES utf8;
-- --------------------------------------------------------
-- Déchargement des données de la table `produits`
--
INSERT INTO `products` (
        `name`,
        `picture`,
        `description`,
        `price`,
        `stock`,
        `type`
    )
VALUES (
        'Booster Destinées occultes',
        'assets/products/booster_destinees_occultes.jpg',
        'L''extension Destinées Occultes du JCC Pokémon, avec ses fantastiques Pokémon comptant parmi les plus prisés, fera rêver collectionneurs et joueurs. Avec un superbe trio Pokémon-GX ESCOUADE, plus de Pokémon-GX et bon nombre de Pokémon chromatiques, les fans vont vivre des Destinées Occultes !',
        6.99,
        15,
        'BOOSTER'
    ),
    (
        'Booster Ex Espèce Delta',
        'assets/products/booster_ex_espece_delta.jpg',
        'Voici les toutes nouvelles espèces Pokémon ! Des laboratoires de recherche de la tour d''Holon nous arrivre une révélation qui enchantera les dresseurs et collectionneurs de Pokémon : il existe une toute nouvelle espèce de Pokémon ! Dans EX Espèces Delta, les joueurs se partageront la découverte de ces Pokémon Double Énergie rares et uniques. Ils expérimenteront également la super nouvelle Énergie Holon qui rend les Pokémon Espèces Delta encore plus puissants ! Êtes-vous prêts à tester les nouvelles espèces Delta ?',
        6.99,
        17,
        'BOOSTER'
    ),
    (
        'Booster Ex Phantom Holon',
        'assets/products/booster_ex_phantom_holon.jpg',
        'Où il y a de l''ombre, il y a des fantômes ! Quels mystères attendent les Dresseurs courageux qui s''aventurent dans les contrées inconnues au-delà des laboratoires Holon ? Dans l''extension EX Fantômes Holon, il n''y a qu''une façon de le découvrir — passer dans le monde des ombres ! Avec plus de Pokémon Espèces Delta à découvrir, EX Fantômes Holon vous entraîne à la découverte de ce que vous n''avez jamais vu auparavant. Vous pensez peut-être que les fantômes n''existent pas... jusqu''à ce que vous en attrapiez un !',
        6.99,
        21,
        'BOOSTER'
    ),
    (
        'Coffret combat de Ligue Lezargus',
        'assets/products/coffret_combat_de_ligue_lezargus.jpg',
        'Découvrez de nouvelles stratégies grâce à la ruse et à la discrétion du Pokémon agent secret Lézargus ! Comprenant un deck prêt à jouer de 60 cartes avec 2 exemplaires de Lézargus-V et de Lézargus-VMAX, ce coffret rassemble tous les éléments dont vous aurez besoin pour triompher lors de votre prochain duel !',
        24.99,
        15,
        'COFFRET'
    ),
    (
        'Coffret Célébrations Figurine Pikachu VMAX',
        'assets/products/coffret_pikachu_vmax_figurine.jpg',
        'Célébrez le 25ème anniversaire de Pokémon avec ce coffret dédié au plus iconique de tous les Pokémon : Pikachu. Il contient une impressionante figurine sculptée à l''effigie de Pikachu Gigamax qui occupera une place de choix dans votre collection Pokémon !',
        49.99,
        37,
        'COFFRET'
    ),
    (
        'Coffret Rayquaza Destinées Occultes',
        'assets/products/coffret_rayquaza_destinees_occultes.jpg',
        'Les Pokémon légendaires aiment à vagabonder dans les vastes étendues. Il est cependant très rare d''y rencontrer l''un d''entre eux, et encore plus d''en rencontrer trois ! Cette Collection Pouvoirs Premium combine la puissance de trois Pokémon cosmiques en un magnifique set de cartes brillantes texturées qui viendra compléter à merveille votre collection de cartes du JCC Pokémon. Un Rayquaza-GX chromatique s''entoure d''une version dorée spéciale de Solgaleo-GX et de Lunala-GX, et vous trouverez même une carte grand format brillante entièrement illustrée de Rayquaza-GX chromatique.',
        49.99,
        18,
        'COFFRET'
    ),
    (
        'Pikachu Star EX Phantom Holon GEM MT10',
        'assets/products/pikachu_star_ex_phantom_holon_gemmt10.jpg',
        'La carte Pikachu Shiny (Star) viendra enchanter votre collection.',
        49.99,
        18,
        'CARTE'
    ),
    (
        'Dracaufeu Holo EX Gardien de Crystal',
        'assets/products/dracaufeu_holo_ex_gardien_de_crystal.jpg',
        'Cette carte de la série EX Gardien de Crystal saura raviver vos souvenirs grâce à son double type et sa qualité légendaire.',
        499.99,
        18,
        'CARTE'
    ),
    (
        'Dracaufeu Edition1 Set de Base PSA 10',
        'assets/products/dracaufeu_holo_baseset_ed1.jpg',
        'On ne le présente plus. Ce modèle légendaire.',
        50000,
        2,
        'CARTE'
    ),
    (
        'Figurine Pokémon Gameboy',
        'assets/products/figurine_gameboy_pokemon.jpg',
        'Jolie figurine de Pikachu et Dracaufeu qui sortent d''une Gameboy. Ideal pour agrémenter son étagère de collection.',
        45,
        10,
        'FIGURINE'
    ),
    (
        'Figurine Pokémon Dawn Platine ',
        'assets/products/figurine_dawn_pokemon.jpg',
        'Aurore ou Dawn, notre trainer préférée de Diamant et Perle se présente à nouveau avec son Tiplouf.',
        39.99,
        7,
        'FIGURINE'
    ),
    (
        'Figurine Mew Jungle',
        'assets/products/figurine_mew_jungle.jpg',
        'Cette création originale de Mew dans la jungle saura satisfaire les fanas du premier films et ses magnifiques plans sauvages.',
        29.99,
        5,
        'FIGURINE'
    );
-- --------------------------------------------------------
-- Déchargement des données de la table `users`
--
INSERT INTO `users`(`email`, `password`, `role`)
VALUES(
        ('noamerdos@cy-tech.fr', 'test', 'ADMIN'),
        ('leflomerdoch@cy-tech.fr', 'oui', 'USER'),
        ('lagamerde@cy-tech.fr', 'grdg', 'LISTENER'),
        ('dodomerdostick@cy-tech.fr', 'sdxvsrf', 'ADMIN')
    )