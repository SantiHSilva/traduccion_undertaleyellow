if live_call()
    return global.live_result;
if (place_meeting(x, y, obj_pl) && steam_active && obj_pl.state == gml_Script_scr_normal_state)
{
    if (collision_counter > 0)
        collision_counter -= 1
    else
    {
        obj_pl.state = gml_Script_scr_frozen_state
        collision_counter = collision_counter_max
        global.battle_enemy_name = "steam minifight"
        global.battling_enemy = 1
        global.battling_boss = 0
        global.sound_carry_overworld = 1
        if (room != rm_death_screen)
            global.current_room_overworld = room_get_name(room)
        global.battle_start = 1
        if (!instance_exists(obj_heart_initiate_battle_quick))
            instance_create(x, y, obj_heart_initiate_battle_quick)
    }
}
else
    collision_counter = collision_counter_max
if (draw_overlay == 1)
    draw_alpha = lerp(draw_alpha, draw_alpha_target, 0.1)
else
    draw_alpha = lerp(draw_alpha, 0, 0.1)
depth = 100
