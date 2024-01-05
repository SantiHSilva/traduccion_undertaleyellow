function scr_battle_draw_item_names() //gml_Script_scr_battle_draw_item_names
{
    var item_object_hold = global.item_object_hold
    var draw_x_disjoint = item_object_hold.draw_x_disjoint
    var draw_y_disjoint = item_object_hold.draw_y_disjoint
    var item_slot = item_object_hold.item_slot
    if (global.game_mode == "customs")
    {
        if (item_slot == "Hot Dog...?")
            battle_menu_option_string = "* Hot Dog"
    }
    else if (global.game_mode == "yellow")
    {
        if (item_slot == "Missing Poster")
            battle_menu_option_string = "* Poster"
        else if (item_slot == "Lukewarm Coffee")
            battle_menu_option_string = "* Café Tib."
        else if (item_slot == "Homemade Cookie")
            battle_menu_option_string = "* Galleta"
        else if (item_slot == "Packing Peanuts")
            battle_menu_option_string = "* Nueces"
        else if (item_slot == "Dihydrogen Monoxide")
            battle_menu_option_string = "* H2O"
        else if (item_slot == "Gravity Granola")
            battle_menu_option_string = "* G Gravedad"
        else if (item_slot == "Floral Cupcake")
            battle_menu_option_string = "* Pastelito Fl."
        else if (item_slot == "Popato Chisps")
            battle_menu_option_string = "* P. Fritas"
        else if (item_slot == "Monster Candy")
            battle_menu_option_string = "* CrmMnstr"
        else if (item_slot == "Monster Candy+")
            battle_menu_option_string = "* CrmMnstr+"
        else if (item_slot == "Feisty Slider")
            battle_menu_option_string = "* Hamburg F."
        else if (item_slot == "G. Pear")
            battle_menu_option_string = "* Pera"
        else if (item_slot == "G. Coffee")
            battle_menu_option_string = "* Café Dor."
        else if (item_slot == "Wild Revolver")
            battle_menu_option_string = "* Revolver S."
        else if (item_slot == "Rubber Ammo")
            battle_menu_option_string = "* Goma"
        else if (item_slot == "Pebble Ammo")
            battle_menu_option_string = "* Roca"
        else if (item_slot == "Ice Pellets")
            battle_menu_option_string = "* Bal. Helada."
        else if (item_slot == "Cff Bean Ammo")
            battle_menu_option_string = "* Bal. de Café"
        else if (item_slot == "Flint")
            battle_menu_option_string = "* Bal. de Piedra"
        else if (item_slot == "Friendliness Pellets")
            battle_menu_option_string = "* Bolitas Amist."
        else if (item_slot == "Band Merch Pin")
            battle_menu_option_string = "* Broche Banda"
        else if (item_slot == "Fancy Holster")
            battle_menu_option_string = "* F Elegante"
        else if (item_slot == "Safety Goggles")
            battle_menu_option_string = "* Gafas"
        else if (item_slot == "Delta Rune Patch")
            battle_menu_option_string = "* DR Broche"
        else if (item_slot == "Golden Scarf")
            battle_menu_option_string = "* Pañuelo D."
        else
            battle_menu_option_string = ("* " + obtenerItemSpanish(item_slot))
    }
    battle_menu_option_x = (obj_dialogue_box_battle.x + draw_x_disjoint)
    battle_menu_option_y = (obj_dialogue_box_battle.y + draw_y_disjoint)
    script_execute(gml_Script_scr_draw_text_effect_twitchy_textbox_battle_menu_options)
}

