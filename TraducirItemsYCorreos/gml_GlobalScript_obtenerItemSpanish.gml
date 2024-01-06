function obtenerItemSpanish(argument0) //gml_Script_obtenerItemSpanish
{
    buscar = argument0

    objetos = ds_map_create()
    ds_map_add(objetos, "Croquet Roll", "Rollo de Croquet");
    ds_map_add(objetos, "Stick", "Palo");
    ds_map_add(objetos, "Bandage", "Vendaje");
    ds_map_add(objetos, "Rock Candy", "Roca de Caramelo");
    ds_map_add(objetos, "Pumpkin Rings", "Anillo de Calabaza");
    ds_map_add(objetos, "Stoic Onion", "Cebolla Estoica");
    ds_map_add(objetos, "Ghost Fruit", "Fruta Fantasma");
    ds_map_add(objetos, "Spider Cider", "Cidra de Araña");
    ds_map_add(objetos, "Butterscotch Pie", "Tarta de Caramelo");
    ds_map_add(objetos, "Faded Ribbon", "Cinta Desteñida");
    ds_map_add(objetos, "Tough Glove", "Guante Duro");
    ds_map_add(objetos, "Manly Bandanna", "Bandana Varonil");
    ds_map_add(objetos, "Snowman Piece", "Trozo de Hombre de Nieve");
    ds_map_add(objetos, "Nice Cream", "Helagradable");
    ds_map_add(objetos, "Puppydough Icecream", "Helado para Cachorros");
    ds_map_add(objetos, "Bisicle", "Bizcocho");
    ds_map_add(objetos, "Unisicle", "Uniscocho");
    ds_map_add(objetos, "Cinnamon Bun", "Conejo de Canela");
    ds_map_add(objetos, "Temmie Flakes", "Copo Temmie");
    ds_map_add(objetos, "Abandoned Quiche", "Quiche Abandonado");
    ds_map_add(objetos, "Old Tutu", "Viejo Tutu");
    ds_map_add(objetos, "Ballet Shoes", "Zapatos de Ballet");
    ds_map_add(objetos, "Punch Card", "Tarjeta Perforada");
    ds_map_add(objetos, "Annoying Dog", "Perro Molesto");
    ds_map_add(objetos, "Dog Salad", "Ensalada para Perro");
    ds_map_add(objetos, "Dog Residue", "Resudio de Perro");
    ds_map_add(objetos, "Astronaut Food", "Comida de Astronauta");
    ds_map_add(objetos, "Instant Noodles", "Fideos Instantáneos");
    ds_map_add(objetos, "Crab Apple", "Manzana Cangrejo");
    ds_map_add(objetos, "Hot Cat", "Gatito Caliente");
    ds_map_add(objetos, "Glamburger", "Glamburguesa");
    ds_map_add(objetos, "Starfait", "Cebo Estelar");
    ds_map_add(objetos, "Legendary Hero", "Héroe Legendario");
    ds_map_add(objetos, "Butty Glasses", "Gafas Protectoras");
    ds_map_add(objetos, "Torn Notebook", "Cuaderno Rasgado");
    ds_map_add(objetos, "Stained Apron", "Delantal Manchado");
    ds_map_add(objetos, "Burnt Pan", "Sartén Quemada");
    ds_map_add(objetos, "Cowboy Hat", "Sombrero de Vaquero");
    ds_map_add(objetos, "Empty Gun", "Pistola Vacía");
    ds_map_add(objetos, "Heart Locket", "Medallón de Corazón");
    ds_map_add(objetos, "Worn Dagger", "Daga Desgastada");
    ds_map_add(objetos, "Real Knife", "Cuchillo Real");
    ds_map_add(objetos, "The Locket", "El Medallón");
    ds_map_add(objetos, "Bad Memory", "Malos Recuerdos");
    ds_map_add(objetos, "Dream", "Sueño");
    ds_map_add(objetos, "Undyne's Letter", "Carta de Undyne");
    ds_map_add(objetos, "Undyne Letter EX", "Carta de Undyne EX");
    ds_map_add(objetos, "Junk Food 0", "Comida Chatarra 0");
    ds_map_add(objetos, "Mystery Key", "Llave Misteriosa");
    ds_map_add(objetos, "Face Steak", "Cara de Filete");
    ds_map_add(objetos, "Hush Puppy", "Cachorrito Silencioso");
    ds_map_add(objetos, "Snail Pie", "Tarta de Caracol");
    ds_map_add(objetos, "temy armor", "Armadura Temy");
    ds_map_add(objetos, "Wild Revolver", "Revólver Salvaje");
    ds_map_add(objetos, "Glass Ammo", "Munición de Vidrio");
    ds_map_add(objetos, "Golden Cactus", "Cactus Dorado");
    ds_map_add(objetos, "Soggy Mitten", "Guante Mojado");
    ds_map_add(objetos, "Lemonade", "Limonada");
    ds_map_add(objetos, "Candy Corn", "Maíz de Caramelo");
    ds_map_add(objetos, "G. Pear", "Pera Dor.");
    ds_map_add(objetos, "Corn Dog", "Maíz de Perro");
    ds_map_add(objetos, "Patch", "Parche");
    ds_map_add(objetos, "Feather", "Pluma");
    ds_map_add(objetos, "G. Bandana", "Pañuelo Dor.");
    ds_map_add(objetos, "Pebble Ammo", "Balas de Roca");
    ds_map_add(objetos, "Silver Ammo", "Balas de Plata");
    ds_map_add(objetos, "Glass Ammo", "Balas de Vidrio");
    ds_map_add(objetos, "Missing Poster", "Poster Desaparecidos");
    ds_map_add(objetos, "Rubber Ammo", "Muni. de Goma");
    ds_map_add(objetos, "Sponge Cake", "Pastel Esponjoso");
    ds_map_add(objetos, "Hndw Coffee", "Café Hndw");
    ds_map_add(objetos, "Hndw Pancake", "Panqueque Hndw");
    ds_map_add(objetos, "G.B. Bear", "G.B. Oso");
    ds_map_add(objetos, "Hot Pop", "Paleta Caliente");
    ds_map_add(objetos, "Lukewarm Pop", "Paleta Tibia");
    ds_map_add(objetos, "Cold Pop", "Paleta Fría");
    ds_map_add(objetos, "G. Coffee", "Café Dorado");
    ds_map_add(objetos, "G. Cactus", "Cactus Dorado");
    ds_map_add(objetos, "Adult Soda", "Soda de Adultos");
    ds_map_add(objetos, "Packing Peanuts", "Paquete de Nueces");
    ds_map_add(objetos, "Trail Mix", "Mezcla Seca");
    ds_map_add(objetos, "Ice Tea", "Té Helado");
    ds_map_add(objetos, "Green Tea", "Té Verde");
    ds_map_add(objetos, "Sea Tea", "Té de Mar");
    ds_map_add(objetos, "Fruitcake", "Pastel de Frutas");
    ds_map_add(objetos, "Spider Donut", "Rosquilla Araña");
    ds_map_add(objetos, "Icewater", "Aguhelada");
    ds_map_add(objetos, "Oasis Latte", "Latte del Oasis");
    ds_map_add(objetos, "Cnm. Cookie", "Galleta de Canela");
    ds_map_add(objetos, "Root Beer", "Cerveza de Raíz");
    ds_map_add(objetos, "Gunpowder", "Pólvora");
    ds_map_add(objetos, "Moss Salad", "Ensalada Musgo");
    ds_map_add(objetos, "Grassy Fries", "Patatas Fritas");
    ds_map_add(objetos, "Flower Stew", "Guiso de Flores");
    ds_map_add(objetos, "Gravity Granola", "Granola Gravedad");
    ds_map_add(objetos, "Popato Chisps", "Papitas Fritas");
    ds_map_add(objetos, "Beef Jerky", "Carne Seca");
    ds_map_add(objetos, "Cake", "Pastel");
    ds_map_add(objetos, "Floral Cupcake", "Pastelito Floral");
    ds_map_add(objetos, "Hot Dog", "Perrito Caliente");
    ds_map_add(objetos, "Monster Candy", "Caramelo Monstruoso");
    ds_map_add(objetos, "Monster Candy+", "Caramelo Monstruoso+");
    ds_map_add(objetos, "C-B Strudel", "Pudín de Cara-Nela");
    ds_map_add(objetos, "Corn Chowder", "Sopa de Maíz");
    ds_map_add(objetos, "Feisty Slider", "Hamburguesa Feisty");
    ds_map_add(objetos, "Honeydew Pin", "Broche Honeydew");
    ds_map_add(objetos, "Band Merch Pin", "Broche de la Banda");
    ds_map_add(objetos, "Steel Buckle", "Hebilla de Acero");
    ds_map_add(objetos, "Safety Jacket", "Chaqueta Segura");
    ds_map_add(objetos, "Safety Goggles", "Gafas Seguras");
    ds_map_add(objetos, "Delta Rune Patch", "Broche Delta Rune");
    ds_map_add(objetos, "Silver Scarf", "Pañuelo Plateado");
    ds_map_add(objetos, "Lukewarm Coffee", "Café Tibio");
    ds_map_add(objetos, "Soggy Mitten", "Guante Mojado");
    ds_map_add(objetos, "Matches", "Fósforos");
    ds_map_add(objetos, "Snowdin Map", "Mapa Snowdin");
    ds_map_add(objetos, "Pickaxe", "Pico");
    ds_map_add(objetos, "Ice Pellets", "Balas Heladas");
    ds_map_add(objetos, "Cff Bean Ammo", "Balas de Café");
    ds_map_add(objetos, "Super Ammo", "Super Balas");
    ds_map_add(objetos, "Flint", "Balas de Piedra");
    ds_map_add(objetos, "Nails", "Clavos");
    ds_map_add(objetos, "Friendliness Pellets", "Bolitas Amistosas");
    ds_map_add(objetos, "Golden Scarf", "Pañuelo Dorado");
    ds_map_add(objetos, "Fancy Holster", "Funda Elegante");
    ds_map_add(objetos, "Videotape", "Cinta de Vídeo");
    ds_map_add(objetos, "H. Acid", "H. Ácido");
    ds_map_add(objetos, "Necklace", "Collar Roto");
    ds_map_add(objetos, "Dihydrogen Monoxide", "Dihidrógeno Monóxido");

    resultado = buscar

    if (ds_map_exists(objetos, buscar)){
        resultado = ds_map_find_value(objetos, buscar)
        ds_list_destroy(objectos)
    }
    return resultado
}

