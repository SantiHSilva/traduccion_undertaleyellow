function scr_determine_sell_price_shop(argument0) //gml_Script_scr_determine_sell_price_shop
{
    switch argument0
    {
        case "Lemonade":
        case "Candy Corn":
        case "Corn Dog":
        case "Sponge Cake":
        case "Hndw Coffee":
        case "Hndw Pancake":
        case "G.B. Bear":
        case "Hot Pop":
        case "Lukewarm Pop":
        case "Cold Pop":
        case "Packing Peanuts":
        case "Moss Salad":
        case "Grassy Fries":
        case "Flower Stew":
        case "Gravity Granola":
        case "Dihydrogen Monoxide":
        case "Popato Chisps":
        case "Beef Jerky":
        case "Cake":
        case "Monster Candy":
        case "Monster Candy+":
        case "C-B Strudel":
        case "Floral Cupcake":
        case "Hot Dog":
        case "Corn Chowder":
            return 15;
        case "G. Coffee":
        case "G. Pear":
        case "G. Cactus":
            return 50;
        case "Adult Soda":
            return 25;
        case "Patch":
        case "Feather":
        case "Pebble Ammo":
        case "Silver Ammo":
        case "Rubber Ammo":
        case "Cff Bean Ammo":
        case "Honeydew Pin":
        case "Band Merch Pin":
        case "Safety Goggles":
        case "Nails":
        case "Friendliness Pellets":
            return 15;
        case "Golden Scarf":
        case "Super Ammo":
        case "Delta Rune Patch":
            return 100;
        case "Necklace":
            return 100;
        case "Icewater":
        case "Feisty Slider":
            return 15;
        case "Root Beer":
            return 25;
        case "H. Acid":
            return 0;
        default:
            return 15;
    }

}

