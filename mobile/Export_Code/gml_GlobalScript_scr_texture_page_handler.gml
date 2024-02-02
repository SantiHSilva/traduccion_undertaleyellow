function scr_texture_page_handler() //gml_Script_scr_texture_page_handler
{
    texture_prefetch("GeneralUse")
    texture_prefetch("MainMenu")
    texture_prefetch("BattleBase")
    var _assets_load_new_home = 0
    var _assets_load_ruins = 0
    var _assets_load_snowdin = 0
    var _assets_load_dunes = 0
    var _assets_load_wild_east = 0
    var _assets_load_steamworks = 0
    var _assets_load_waterfall = 0
    var _assets_load_minigames = 0
    var _assets_load_shop = 0
    var _assets_load_hotland = 0
    var _assets_load_mansion = 0
    var _room_tag = asset_get_tags(room, 3)
    for (var i = 0; i < array_length(_room_tag); i++)
    {
        switch _room_tag[i]
        {
            case "Ruins":
                _assets_load_ruins = 1
                break
            case "Snowdin":
                _assets_load_snowdin = 1
                break
            case "Dunes":
                _assets_load_dunes = 1
                break
            case "Wild East":
                _assets_load_wild_east = 1
                break
            case "Steamworks":
                _assets_load_steamworks = 1
                break
            case "Minigame":
                _assets_load_minigames = 1
                break
            case "Waterfall":
                _assets_load_waterfall = 1
                break
            case "Hotland":
                _assets_load_hotland = 1
                break
            case "New Home":
                _assets_load_new_home = 1
                break
            case "Mansion":
                _assets_load_new_home = 1
                break
            case "Shop":
                _assets_load_shop = 1
                break
        }

    }
    if (room == rm_battle)
        return;
    if (_assets_load_ruins == 1)
    {
        if (!texture_is_ready("Ruins"))
            show_debug_message("Ruins Textures Loaded")
        if (!texture_is_ready("Ruins"))
            texture_prefetch("Ruins")
        if (!texture_is_ready("BattleRuins"))
            texture_prefetch("BattleRuins")
    }
    else
    {
        if texture_is_ready("Ruins")
            show_debug_message("Ruins Textures Flushed")
        if texture_is_ready("Ruins")
            texture_flush("Ruins")
        if texture_is_ready("BattleRuins")
            texture_flush("BattleRuins")
    }
    if (_assets_load_snowdin == 1)
    {
        if (!texture_is_ready("Snowdin"))
            show_debug_message("Snowdin Textures Loaded")
        if (!texture_is_ready("Snowdin"))
            texture_prefetch("Snowdin")
        if (!texture_is_ready("BattleSnowdin"))
            texture_prefetch("BattleSnowdin")
    }
    else
    {
        if texture_is_ready("Snowdin")
            show_debug_message("Snowdin Textures Flushed")
        if texture_is_ready("Snowdin")
            texture_flush("Snowdin")
        if texture_is_ready("BattleSnowdin")
            texture_flush("BattleSnowdin")
    }
    if (_assets_load_waterfall == 1)
    {
        if (!texture_is_ready("Waterfall"))
            show_debug_message("Waterfall Textures Loaded")
        if (!texture_is_ready("Waterfall"))
            texture_prefetch("Waterfall")
    }
    else
    {
        if texture_is_ready("Waterfall")
            show_debug_message("Waterfall Textures Flushed")
        if texture_is_ready("Waterfall")
            texture_flush("Waterfall")
    }
    if (_assets_load_dunes == 1)
    {
        if (!texture_is_ready("Dunes"))
            show_debug_message("Dunes Textures Loaded")
        if (!texture_is_ready("Dunes"))
            texture_prefetch("Dunes")
        if (!texture_is_ready("BattleDunes"))
            texture_prefetch("BattleDunes")
    }
    else
    {
        if texture_is_ready("Dunes")
            show_debug_message("Dunes Textures Flushed")
        if texture_is_ready("Dunes")
            texture_flush("Dunes")
        if texture_is_ready("BattleDunes")
            texture_flush("BattleDunes")
    }
    if (_assets_load_wild_east == 1)
    {
        if (!texture_is_ready("WildEast"))
            texture_prefetch("WildEast")
        if (!texture_is_ready("BattleWildEast"))
            texture_prefetch("BattleWildEast")
    }
    else
    {
        if texture_is_ready("WildEast")
            texture_flush("WildEast")
        if texture_is_ready("BattleWildEast")
            texture_flush("BattleWildEast")
    }
    if (_assets_load_steamworks == 1)
    {
        if (!texture_is_ready("Steamworks"))
            texture_prefetch("Steamworks")
        if (!texture_is_ready("BattleSteamworks"))
            texture_prefetch("BattleSteamworks")
    }
    else
    {
        if texture_is_ready("Steamworks")
            texture_flush("Steamworks")
        if texture_is_ready("BattleSteamworks")
            texture_flush("BattleSteamworks")
    }
    if (_assets_load_hotland == 1)
    {
        if (!texture_is_ready("Hotland"))
            texture_prefetch("Hotland")
    }
    else if texture_is_ready("Hotland")
        texture_flush("Hotland")
    if (_assets_load_new_home == 1)
    {
        if (!texture_is_ready("newhome"))
            texture_prefetch("newhome")
        if (!texture_is_ready("Battlenewhome"))
            texture_prefetch("Battlenewhome")
    }
    else
    {
        if texture_is_ready("newhome")
            texture_flush("newhome")
        if (!texture_is_ready("Battlenewhome"))
            texture_flush("Battlenewhome")
    }
    if (_assets_load_mansion == 1)
    {
        if (!texture_is_ready("Mansion"))
            texture_prefetch("Mansion")
    }
    else if texture_is_ready("Mansion")
        texture_flush("Mansion")
    if (_assets_load_minigames == 1)
    {
        if (!texture_is_ready("Minigames"))
            texture_prefetch("Minigames")
    }
    else if texture_is_ready("Minigames")
        texture_flush("Minigames")
    if (_assets_load_shop == 1)
    {
        if (!texture_is_ready("Shops"))
            texture_prefetch("Shops")
    }
    else if texture_is_ready("Shops")
        texture_flush("Shops")
}

