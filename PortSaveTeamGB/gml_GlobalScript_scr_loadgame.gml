function scr_loadgame() //gml_Script_scr_loadgame
{
    if file_exists("Save.sav")
    {
        scr_initialize()
        ini_open("Save.sav")
        var LoadedRoom = ini_read_string("Save1", "room", "rm_ruins00")
        obj_pl.x = ini_read_real("Save1", "pX", 320)
        obj_pl.y = ini_read_real("Save1", "pY", 320)
        obj_pl.direction = ini_read_real("Save1", "dir", 0)
        obj_controller.steps = ini_read_real("Save1", "SP", 0)
        global.player_attack = ini_read_real("Save1", "AT - Primary", 0)
        global.player_weapon_modifier_attack = ini_read_real("Save1", "AT - Secondary", 0)
        global.player_defense = ini_read_real("Save1", "DFP", 0)
        global.player_armor_modifier_defense = ini_read_real("Save1", "DFS", 0)
        if ini_key_exists("Save1", "NV"){
            global.player_level = ini_read_real("Save1", "NV", 1)
            ini_write_real("Save1", "LV", global.player_level)
            ini_key_delete("Save1", "NV")
        } else {
            global.player_level = ini_read_real("Save1", "LV", 1)
        }
        global.player_exp = ini_read_real("Save1", "EXP", 0)
        global.player_weapon_modifier = ini_read_string("Save1", "Ammo", "Rubber Ammo")

        migracion1 = ds_map_create()

        ds_map_add(migracion1, "Mun. de Piedritas", "Pebble Ammo")
        ds_map_add(migracion1, "Mun. de Café", "Cff Bean Ammo")
        ds_map_add(migracion1, "Mun. de Vidrio", "Glass Ammo")
        ds_map_add(migracion1, "Super Mun.", "Super Ammo")
        ds_map_add(migracion1, "Mun. de Plata", "Silver Ammo")
        ds_map_add(migracion1, "Mun. de Hielo", "Ice Pellets")
        ds_map_add(migracion1, "Pedernal", "Flint")
        ds_map_add(migracion1, "Bolitas de Amistad", "Friendliness Pellets")
        ds_map_add(migracion1, "Clavos", "Nails")

        if ds_map_exists(migracion1, global.player_weapon_modifier){
            global.player_weapon_modifier = ds_map_find_value(migracion1, global.player_weapon_modifier);
            ini_write_string("Save1", "Ammo", global.player_weapon_modifier)
        }

        global.player_armor = ini_read_string("Save1", "Armor", "Worn Hat")

        migracion2 = ds_map_create()
        ds_map_add(migracion2, "A. Juguete", "Toy Gun")
        ds_map_add(migracion2, "Revolver Salvaje", "Wild Revolver")

        if ds_map_exists(migracion2, global.player_armor){
            global.player_armor = ds_map_find_value(migracion2, global.player_armor);
            ini_write_string("Save1", "Weapon", global.player_armor)
        }

        global.player_armor_modifier = ini_read_string("Save1", "Accessory", "Patch")

        migracion3 = ds_map_create()
        ds_map_add(migracion3, "Parche", "Patch")
        ds_map_add(migracion3, "Pluma", "Feather")
        ds_map_add(migracion3, "Pin Honeydew", "Honeydew Pin")
        ds_map_add(migracion3, "Pin Merc. de Banda", "Band Merch Pin")
        ds_map_add(migracion3, "C. de Seguridad", "Safety Jacket")
        ds_map_add(migracion3, "Hebilla de Acero", "Steel Buckle")
        ds_map_add(migracion3, "Funda Elegante", "Fancy Holster")
        ds_map_add(migracion3, "G. de Seguridad", "Safety Goggles")
        ds_map_add(migracion3, "Pañuelo P.", "Silver Scarf")
        ds_map_add(migracion3, "Pañuelo D.", "G. Bandana")
        ds_map_add(migracion3, "Parche Runa Delta", "Delta Rune Patch")
        ds_map_add(migracion3, "Bufanda D.", "Golden Scarf")

        if ds_map_exists(migracion3, global.player_armor_modifier){
            global.player_armor_modifier = ds_map_find_value(migracion3, global.player_armor_modifier);
            ini_write_string("Save1", "Accessory", global.player_armor_modifier)
        }

        global.player_gold = ini_read_real("Save1", "Gold", 0)
        if ini_key_exists("Save1", "PS"){
            global.current_hp_self = ini_read_real("Save1", "PS", 1)
            ini_write_real("Save1", "HP", global.current_hp_self)
            ini_key_delete("Save1", "PS")
        } else {
            global.current_hp_self = ini_read_real("Save1", "HP", 1)
        }
        if ini_key_exists("Save1", "PVMAX"){
            global.max_hp_self = ini_read_real("Save1", "PVMAX", 20)
            ini_write_real("Save1", "MAXHP", global.max_hp_self)
            ini_key_delete("Save1", "PVMAX")
        } else {
            global.max_hp_self = ini_read_real("Save1", "MAXHP", 20)
        }
        global.player_weapon = ini_read_string("Save1", "Weapon", "Toy Gun")
        global.fun_value = ini_read_real("Save1", "FUN", 0)
        global.current_pp_self = ini_read_real("Save1", "PP", 0)
        global.max_pp_self = ini_read_real("Save1", "MAXPP", 20)
        global.current_sp_self = ini_read_real("Save1", "SP", 0)
        global.max_sp_self = ini_read_real("Save1", "MAXSP", 99)
        global.player_sprites = ini_read_string("Save1", "playerSprite", "normal")
        global.current_rp_self = ini_read_real("Save1", "RP", 0)
        global.max_rp_self = ini_read_real("Save1", "MAXRP", 0)
        global.player_can_run = ini_read_real("Save1", "playerCanRun", 1)
        global.saved_datetime = date_current_datetime()
        global.elapsed_seconds = ini_read_real("Playtime", "Seconds", 0)
        var _party_member = ini_read_string("Save1", "Follower", "noone")
        if (_party_member == "noone")
            global.party_member = noone
        else
            global.party_member = asset_get_index(_party_member)
        global.player_has_satchel = ini_read_real("Save1", "Satchel", 0)
        global.player_can_travel = ini_read_real("Save1", "FTravel", 0)
        for (var i = 0; i < array_length_1d(global.ruins_flag); i++)
            global.ruins_flag[i] = ini_read_real("RuinsFlags", string(i), 0)
        for (i = 0; i < array_length_1d(global.flag); i++)
            global.flag[i] = ini_read_real("Flags", string(i), 0)
        for (i = 0; i < array_length_1d(global.snowdin_flag); i++)
            global.snowdin_flag[i] = ini_read_real("SnowdinFlags", string(i), 0)
        for (i = 0; i < array_length_1d(global.dunes_flag); i++)
            global.dunes_flag[i] = ini_read_real("DunesFlags", string(i), 0)
        for (i = 0; i < array_length_1d(global.dunes_flag_ext); i++)
            global.dunes_flag_ext[i] = ini_read_real("DunesFlagsExt", string(i), 0)
        for (i = 0; i < array_length_1d(global.sworks_flag); i++)
            global.sworks_flag[i] = ini_read_real("SworksFlags", string(i), 0)
        global.factory_code = ini_read_string("SworksFlags", "code", "0000")
        global.factory_code_3 = ini_read_string("SworksFlags", "code3", "0000")
        var ds_factory_code_2 = ini_read_string("SworksFlags", "code2", "")
        ds_list_read(global.factory_code_2, ds_factory_code_2)
        global.sworks_robot_count = ini_read_real("SworksFlags", "RbCount", 0)
        for (i = 0; i < global.sworks_robot_count; i++)
        {
            global.sworks_robot_sprite[i] = ini_read_real("RbSprite", string(i), 0)
            global.sworks_robot_x[i] = ini_read_real("RbX", string(i), 0)
            global.sworks_robot_y[i] = ini_read_real("RbY", string(i), 0)
            global.sworks_robot_depth[i] = ini_read_real("RbD", string(i), 0)
            global.sworks_robot_scale[i] = ini_read_real("RbS", string(i), 0)
            global.sworks_robot_angle[i] = ini_read_real("RbA", string(i), 0)
        }
        ds_grid_read(global.sworks_id_grid, ini_read_string("SworksFlags", "sworks_id", ""))
        for (i = 0; i < array_length_1d(global.item_stock); i++)
            global.item_stock[i] = ini_read_real("ItemStock", string(i), 0)
        for (i = 0; i < array_length_1d(global.hotland_flag); i++)
            global.hotland_flag[i] = ini_read_real("HotlandFlags", string(i), 0)
        for (i = 0; i < array_length_1d(global.flowey_flag); i++)
            global.flowey_flag[i] = ini_read_real("FloweyFlags", string(i), 0)
        global.flowey_save_number = ini_read_real("FloweyFlags", "savenumber", 0)
        global.save_count = ini_read_real("FloweyFlags", "savecount", 1)
        for (i = 0; i < array_length_1d(global.extra_flag); i++)
            global.extra_flag[i] = ini_read_real("ExtraFlags", string(i), 0)
        for (i = 0; i < array_length_1d(global.mail_flag); i++)
            global.mail_flag[i] = ini_read_real("MailFlags", string(i), 0)
        for (i = 0; i < array_length_1d(global.mail_flag); i++)
            global.mail_flag[i] = ini_read_real("MailFlags", string(i), 0)
        global.mail_pinned = ini_read_real("Mail", "2", 0)
        global.tinypuzzle = ini_read_real("Misc", "01", 5)
        deaths = ini_read_real("Misc", "Deaths", 0)
        for (i = 0; i < array_length(global.fun_event); i++)
            global.fun_event[i] = ini_read_real("Fun Events", string(i), 0)
        
        migracionitems = ds_map_create()
        ds_map_add(migracionitems, "Nada", "Nothing")
        ds_map_add(migracionitems, "Limonada", "Lemonade")
        ds_map_add(migracionitems, "Mun. de Piedritas", "Pebble Ammo")
        ds_map_add(migracionitems, "Mun. de Plata", "Silver Ammo")
        ds_map_add(migracionitems, "Mun. de Vidrio", "Glass Ammo")
        ds_map_add(migracionitems, "Maíz dulce", "Candy Corn")
        ds_map_add(migracionitems, "Corn Dog", "Corn Dog")
        ds_map_add(migracionitems, "Parche", "Patch")
        ds_map_add(migracionitems, "Pluma", "Feather")
        ds_map_add(migracionitems, "Pañuelo D.", "G. Bandana")
        ds_map_add(migracionitems, "Cartel de Se Busca", "Missing Poster")
        ds_map_add(migracionitems, "Pera D.", "G. Pear")
        ds_map_add(migracionitems, "Mun. de Goma", "Rubber Ammo")
        ds_map_add(migracionitems, "Pastel Esponja", "Sponge Cake")
        ds_map_add(migracionitems, "Café Hndw", "Hndw Coffee")
        ds_map_add(migracionitems, "Pancake Hndw", "Hndw Pancake")
        ds_map_add(migracionitems, "Oso G.B.", "G.B. Bear")
        ds_map_add(migracionitems, "P. Caliente", "Hot Pop")
        ds_map_add(migracionitems, "P. Tibia.", "Lukewarm Pop")
        ds_map_add(migracionitems, "P. Fría", "Cold Pop")
        ds_map_add(migracionitems, "Café Dorado", "G. Coffee")
        ds_map_add(migracionitems, "Cactus D.", "G. Cactus")
        ds_map_add(migracionitems, "Soda Adulta", "Adult Soda")
        ds_map_add(migracionitems, "Maní Empacado", "Packing Peanuts")
        ds_map_add(migracionitems, "Frutos Secos", "Trail Mix")
        ds_map_add(migracionitems, "Té Frío", "Ice Tea")
        ds_map_add(migracionitems, "Té Verde", "Green Tea")
        ds_map_add(migracionitems, "Té de Mar", "Sea Tea")
        ds_map_add(migracionitems, "P. de Frutas", "Fruitcake")
        ds_map_add(migracionitems, "Dona Araña", "Spider Donut")
        ds_map_add(migracionitems, "Agua congelada", "Icewater")
        ds_map_add(migracionitems, "Latte del Oasis", "Oasis Latte")
        ds_map_add(migracionitems, "Galleta Cnl.", "Cnm. Cookie")
        ds_map_add(migracionitems, "C. de Raíz", "Root Beer")
        ds_map_add(migracionitems, "Pólvora", "Gunpowder")
        ds_map_add(migracionitems, "E. de Musgo", "Moss Salad")
        ds_map_add(migracionitems, "Papas Pastosas", "Grassy Fries")
        ds_map_add(migracionitems, "E. de Flor", "Flower Stew")
        ds_map_add(migracionitems, "Granola G.", "Gravity Granola")
        ds_map_add(migracionitems, "Monóxido Dihidrógeno", "Dihydrogen Monoxide")
        ds_map_add(migracionitems, "Papas Fritas", "Popato Chisps")
        ds_map_add(migracionitems, "Carne Seca", "Beef Jerky")
        ds_map_add(migracionitems, "Pastel", "Cake")
        ds_map_add(migracionitems, "Cupcake Floral", "Floral Cupcake")
        ds_map_add(migracionitems, "Hot Dog", "Hot Dog")
        ds_map_add(migracionitems, "Caramelo M.", "Monster Candy")
        ds_map_add(migracionitems, "Caramelo M.+", "Monster Candy+")
        ds_map_add(migracionitems, "Strudel C-B", "C-B Strudel")
        ds_map_add(migracionitems, "Sopa de Maíz", "Corn Chowder")
        ds_map_add(migracionitems, "Feisty Slider", "Feisty Slider")
        ds_map_add(migracionitems, "Pin Honeydew", "Honeydew Pin")
        ds_map_add(migracionitems, "Pin Merc. de Banda", "Band Merch Pin")
        ds_map_add(migracionitems, "Hebilla de Acero", "Steel Buckle")
        ds_map_add(migracionitems, "C. de Seguridad", "Safety Jacket")
        ds_map_add(migracionitems, "G. de Seguridad", "Safety Goggles")
        ds_map_add(migracionitems, "Parche Runa Delta", "Delta Rune Patch")
        ds_map_add(migracionitems, "Pañuelo P.", "Silver Scarf")
        ds_map_add(migracionitems, "Café Tibio", "Lukewarm Coffee")
        ds_map_add(migracionitems, "Guante Mojado", "Soggy Mitten")
        ds_map_add(migracionitems, "Cerillas", "Matches")
        ds_map_add(migracionitems, "Mapa de Snowdin", "Snowdin Map")
        ds_map_add(migracionitems, "Pico", "Pickaxe")
        ds_map_add(migracionitems, "Mun. de Hielo", "Ice Pellets")
        ds_map_add(migracionitems, "Mun. de Café", "Cff Bean Ammo")
        ds_map_add(migracionitems, "Super Mun.", "Super Ammo")
        ds_map_add(migracionitems, "Pedernal", "Flint")
        ds_map_add(migracionitems, "Clavos", "Nails")
        ds_map_add(migracionitems, "Bolitas de Amistad", "Friendliness Pellets")
        ds_map_add(migracionitems, "Bufanda D.", "Golden Scarf")
        ds_map_add(migracionitems, "Funda Elegante", "Fancy Holster")
        ds_map_add(migracionitems, "Cinta de video", "Videotape")
        ds_map_add(migracionitems, "Ácido C.", "H. Acid")
        ds_map_add(migracionitems, "Collar", "Necklace")

        for (i = 1; i <= 8; i++){
            global.item_slot[i] = ini_read_string("Items", ("0" + string((i - 1))), "Nothing")
            if ds_map_exists(migracionitems, global.item_slot[i]){
                global.item_slot[i] = ds_map_find_value(migracionitems, global.item_slot[i]);
                ini_write_string("Items", ("0" + string((i - 1))), global.item_slot[i])
            }
        }
        var ds_list_string = ini_read_string("DBox", 0, "0")
        ds_list_read(global.box_slot_list, ds_list_string)


        if ini_key_exists("Correo", "1") {
            global.mail_count = ini_read_real("Correo", "1", 0)
            ini_write_real("Mail", "1", global.mail_count)
            ini_key_delete("Correo", "1")
        } else {
            global.mail_count = ini_read_real("Mail", "1", 0)
        }

        migracioncorreos = ds_map_create()
        ds_map_add(migracioncorreos, "Carta de Intro.", "Intro Letter")
        ds_map_add(migracioncorreos, "Carta de Sluppy", "Slurpy Letter")
        ds_map_add(migracioncorreos, "Carta de Mo", "Mo Letter")
        ds_map_add(migracioncorreos, "Carta de Dalv", "Dalv Letter")
        ds_map_add(migracioncorreos, "Carta de Shufflers", "Shufflers Letter")
        ds_map_add(migracioncorreos, "Carta del Resort", "Resort Letter")
        ds_map_add(migracioncorreos, "Mezclándolo (Ensayo)", "Mixin' It Up! (Essay)")
        ds_map_add(migracioncorreos, "Carta de Martlet", "Martlet's Lette")
        ds_map_add(migracioncorreos, "ASP", "PSA")
        ds_map_add(migracioncorreos, "Puntos Importantes", "Bullet Points")
        ds_map_add(migracioncorreos, "Act. de Starlo", "Starlo Update")
        ds_map_add(migracioncorreos, "Starlo (Urgente)", "Starlo (Urgent)")
        ds_map_add(migracioncorreos, "Carta de Sluppy 2", "Slurpy Letter 2")
        ds_map_add(migracioncorreos, "Ceroba (Importante)", "Ceroba (Important)")
        ds_map_add(migracioncorreos, "¿¿¿CORREO???", "MAIL???")
        ds_map_add(migracioncorreos, "Carta Spam 1", "Spam Letter 1")
        ds_map_add(migracioncorreos, "Carta Spam 2", "Spam Letter 2")
        ds_map_add(migracioncorreos, "Carta Spam 3", "Spam Letter 3")
        ds_map_add(migracioncorreos, "Carta Spam 4", "Spam Letter 4")
        ds_map_add(migracioncorreos, "Carta Spam 5", "Spam Letter 5")
        ds_map_add(migracioncorreos, "Carta Spam 6", "Spam Letter 6")
        ds_map_add(migracioncorreos, "Carta Spam 7", "Spam Letter 7")
        ds_map_add(migracioncorreos, "Carta Spam 8", "Spam Letter 8")
        ds_map_add(migracioncorreos, "Carta Spam 9", "Spam Letter 9")
        ds_map_add(migracioncorreos, "Steamworks ID", "Steamworks ID")
        ds_map_add(migracioncorreos, "Cartel de Se Busca", "Missing Poster")

        if ini_key_exists("Correo", 0){
            ds_list_string = ini_read_string("Correo", 0, "0")
            temporal = ds_list_create()
            ds_list_read(temporal, ds_list_string)
            for (i = 0; i < ds_list_size(temporal); i++){
                if ds_map_exists(migracioncorreos, ds_list_find_value(temporal, i)){
                    ds_list_replace(temporal, i, ds_map_find_value(migracioncorreos, ds_list_find_value(temporal, i)))
                }
            }
            ds_list_string = ds_list_write(temporal)
            ds_list_read(global.mail_list, ds_list_string)
            ini_write_string("Mail", 0, ds_list_string)
            ini_key_delete("Correo", 0)
        } else {
            ds_list_string = ini_read_string("Mail", 0, "0")
            ds_list_read(global.mail_list, ds_list_string)
        }
        ds_list_string = ini_read_string("Mail", "3", "0")
        ds_list_read(global.mail_list_read, ds_list_string)
        ds_list_string = ini_read_string("MailUnclaimed", 0, "0")

        temporal = ds_list_create()
        ds_list_read(temporal, ds_list_string)
        for (i = 0; i < ds_list_size(temporal); i++){
            if ds_map_exists(migracioncorreos, ds_list_find_value(temporal, i)){
                ds_list_replace(temporal, i, ds_map_find_value(migracioncorreos, ds_list_find_value(temporal, i)))
            }
        }
        ds_list_string = ds_list_write(temporal)
        ini_write_string("MailUnclaimed", 0, ds_list_string)
   
        ds_list_read(global.mail_unclaimed_list, ds_list_string)

        var ds_list_encounters = ini_read_string("Encounters", 0, "0")
        ds_list_read(global.encounter_list, ds_list_encounters)
        var ds_list_steal = ini_read_string("Robar", 0, "0")
        ds_list_read(global.steal_list, ds_list_steal)
        var ds_list_fasttravel = ini_read_string("FastTravel", 0, "0")
        ds_list_read(global.fast_travel_list, ds_list_fasttravel)
        var ds_map_string = ini_read_string("NPCs", "0", "0")
        ds_map_read(global.npc_map, ds_map_string)
        var ds_talk_map_string = ini_read_string("Talks", "0", "0")
        ds_map_read(global.talk_map, ds_map_string)
        global.interaction_count_wardrobe = ini_read_real("Misc2", "00", 0)
        global.interaction_count_broom = ini_read_real("Misc2", "01", 0)
        global.interaction_count_mini_fridge = ini_read_real("Misc2", "02", 0)
        global.interaction_count_painting = ini_read_real("Misc2", "03", 0)
        global.interaction_count_dalvsroom_chest = ini_read_real("Misc2", "04", 0)
        global.interaction_count_flower_pot = ini_read_real("Misc2", "05", 0)
        global.interaction_count_doorway_dalvshouse = ini_read_real("Misc2", "06", 0)
        global.interaction_count_dalvroomhall_door = ini_read_real("Misc2", "07", 0)
        global.dalv_house_enter_count = ini_read_real("Misc2", "08", 0)
        global.interaction_count_books = ini_read_real("Misc2", "09", 0)
        deathText = ini_read_real("Misc2", "10", 0)
        global.route = ini_read_real("Route", "00", 2)
        for (i = 1; i < array_length_1d(global.geno_complete); i++)
            global.geno_complete[i] = ini_read_real("GenoComplete", i, 0)
        for (i = 1; i < array_length_1d(global.kill_number); i++)
        {
            global.kill_number[i] = ini_read_real("Kills", i, 20)
            for (var j = 0; j < array_length_2d(global.kill_area, i); j++)
                global.kill_area[i][j] = ini_read_real("Kill Area", (string(i) + string(j)), 5)
        }
        global.gold_amount_total = ini_read_real("Save1", "gldtrack", 0)
        global.gold_spent = ini_read_real("Save1", "gldspnttrack", 0)
        global.hit_tracker = ini_read_real("Save1", "httrack", 0)
        global.fighting_flowey = ini_read_real("Misc2", "10", 0)
        if (global.fighting_flowey == 0)
            room_goto(asset_get_index(LoadedRoom))
        else if (global.fighting_flowey == 1)
        {
            instance_create_depth((camera_get_view_x(view_camera[0]) + 320), (camera_get_view_y(view_camera[0]) + 120), -99999, obj_flowey_rooftop_big)
            obj_flowey_rooftop_big.persistent = true
            obj_flowey_rooftop_big.image_xscale_base *= 2
            obj_flowey_rooftop_big.image_yscale_base *= 2
            var controller = instance_create_depth(0, 0, -9999, obj_flowey_world_controller)
            controller.scene = 95
            instance_create(0, 0, obj_battle_fade_in_screen)
            obj_battle_fade_in_screen.persistent = true
            obj_battle_fade_in_screen.fade_speed = 0.025
            room_goto(rm_battle_flowey)
            if (!texture_is_ready("BattleHotlandFloweyPhase1"))
                texture_prefetch("BattleHotlandFloweyPhase1")
            global.battling_boss = 1
            global.battle_start = 1
            global.sound_carry_overworld = 0
            scr_cutscene_start()
            global.battle_enemy_name = "flowey"
            obj_pl.image_alpha = 0
        }
        else if (global.fighting_flowey == 2)
        {
            global.flowey_phase_2_noloop = 1
            room_goto(rm_battle_flowey_phase_2)
            if (!texture_is_ready("BattleHotlandFloweyPaper"))
                texture_prefetch("BattleHotlandFloweyPaper")
            if (!texture_is_ready("BattleHotlandFloweyGray"))
                texture_prefetch("BattleHotlandFloweyGray")
            if (!texture_is_ready("BattleHotlandFloweyClay"))
                texture_prefetch("BattleHotlandFloweyClay")
            if (!texture_is_ready("BattleHotlandFloweyMechanical"))
                texture_prefetch("BattleHotlandFloweyMechanical")
            if (!texture_is_ready("BattleHotlandFloweyLowpoly"))
                texture_prefetch("BattleHotlandFloweyLowpoly")
            if (!texture_is_ready("BattleHotlandFloweyYarn"))
                texture_prefetch("BattleHotlandFloweyYarn")
            if (!texture_is_ready("BattleHotlandFloweyOrganic"))
                texture_prefetch("BattleHotlandFloweyOrganic")
            global.battling_boss = 1
            global.battle_start = 1
            global.sound_carry_overworld = 0
            global.cutscene = true
            global.battle_enemy_name = "flowey2"
            obj_pl.image_alpha = 0
        }
        if (global.party_member != noone && (!instance_exists(global.party_member)))
            instance_create_depth(obj_pl.x, obj_pl.y, obj_pl.depth, global.party_member)
        ini_close()
        if file_exists("Save02.sav")
        {
            ini_open("Save02.sav")
            global.meta_flowey_fight_count = ini_read_real("00", "01", 0)
            global.death_count_total = ini_read_real("Deaths", "00", 0)
            global.death_count[1] = ini_read_real("Deaths", "01", 0)
            global.death_count[2] = ini_read_real("Deaths", "02", 0)
            ini_close()
        }
        if (global.fun_value == 1)
            global.fun_swig_name = "Dave"
    }
}

