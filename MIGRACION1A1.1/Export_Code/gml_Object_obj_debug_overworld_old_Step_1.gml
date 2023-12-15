script_execute(scr_controls_debug_overworld_old)
if key_display
{
    if (global.debug_toggle == 1)
        global.debug_toggle = 0
    else
        global.debug_toggle = 1
}
if (global.debug_toggle == 1)
{
    if key_left
    {
        var i = (array_length_1d(enemy) - 1)
        if (enemy_selection_number <= 0)
            enemy_selection_number = i
        else
            enemy_selection_number -= 1
    }
    else if key_right
    {
        i = (array_length_1d(enemy) - 1)
        if (enemy_selection_number >= i)
            enemy_selection_number = 0
        else
            enemy_selection_number += 1
    }
    if key_left2
    {
        i = (array_length_1d(shop) - 1)
        if (shop_selection_number <= 0)
            shop_selection_number = i
        else
            shop_selection_number -= 1
    }
    else if key_right2
    {
        i = (array_length_1d(shop) - 1)
        if (shop_selection_number >= i)
            shop_selection_number = 0
        else
            shop_selection_number += 1
    }
    if key_select
    {
        if (enemy[enemy_selection_number] == "dalv normal")
        {
            global.route = 1
            global.melancholy[1] = 0
            global.battle_enemy_name = "dalv"
        }
        else if (enemy[enemy_selection_number] == "dalv melancholy")
        {
            global.melancholy[1] = 1
            global.battle_enemy_name = "dalv"
        }
        else if (enemy[enemy_selection_number] == "dalv genocide")
        {
            global.route = 3
            global.battle_enemy_name = "dalv"
        }
        else
            global.battle_enemy_name = enemy[enemy_selection_number]
        switch global.battle_enemy_name
        {
            case "froggit intro":
            case "flowey intro":
            case "decibat":
            case "micro froggit":
            case "dalv":
            case "martlet pacifist":
            case "martlet genocide":
            case "shufflers":
            case "el bailador":
            case "dummy training pacifist":
                global.exclamation_mark_type = "nothing"
                global.battling_enemy = 0
                global.battling_boss = 1
                global.battle_start = 1
                break
            default:
                global.exclamation_mark_type = "normal"
                global.battling_enemy = 1
                global.battling_boss = 0
                global.battle_start = 1
        }

    }
    if key_select2
    {
        global.shop_name = shop[shop_selection_number]
        switch global.shop_name
        {
            case "Honeydew Resort Normal":
                global.sound_carry_overworld = 1
                instance_create(__view_get((0 << 0), 0), __view_get((1 << 0), 0), obj_overworld_shop_fade_out_screen)
                with (obj_frisk)
                {
                    moveable = 0
                    event = 1
                }
                break
            default:
                instance_create(__view_get((0 << 0), 0), __view_get((1 << 0), 0), obj_overworld_shop_fade_out_screen)
                with (obj_frisk)
                {
                    moveable = 0
                    event = 1
                }
        }

    }
    if key_reset
        game_restart()
    if key_fps3
        room_speed = 3
    else if key_fps30
        room_speed = 30
    else if key_fps60
        room_speed = 60
    if key_worldprevious
    {
        world_var -= 1
        if (world_var < 0)
            world_var = (array_length_1d(world_room) - 1)
    }
    else if key_worldnext
    {
        world_var += 1
        if (world_var > (array_length_1d(world_room) - 1))
            world_var = 0
    }
    if (key_worldprevious || key_worldnext || key_worldcurrent)
    {
        if instance_exists(obj_room_special_holder)
        {
            with (obj_room_special_holder)
                instance_destroy()
        }
        instance_create(0, 0, obj_room_special_holder)
        with (obj_room_special_holder)
        {
            player_x = obj_debug_overworld.world_x[obj_debug_overworld.world_var]
            player_y = obj_debug_overworld.world_y[obj_debug_overworld.world_var]
            player_direction = "down"
            next_room = obj_debug_overworld.world_room[obj_debug_overworld.world_var]
        }
        with (obj_frisk)
        {
            instance_create(__view_get((0 << 0), 0), __view_get((1 << 0), 0), obj_overworld_room_special_fade_out_screen)
            moveable = 0
            event = 1
        }
    }
}
