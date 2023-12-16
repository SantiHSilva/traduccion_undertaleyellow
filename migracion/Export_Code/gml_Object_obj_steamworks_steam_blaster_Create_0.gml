if live_call()
    return global.live_result;
steam_active = 0
steam_interval = 0
steam_delay = 0
steam_sound = 289
steam_sound_played = 0
draw_alpha = 0
draw_overlay = 0
draw_alpha_target = 0.2
collision_counter_max = 3
collision_counter = 3
if instance_exists(obj_overworld_fade_in_screen)
    alarm[2] = 15
else
    alarm[2] = 1
