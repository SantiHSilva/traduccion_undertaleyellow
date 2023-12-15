if live_call()
    return global.live_result;
damage_number = scr_determine_damage_number_enemy("martlet", "void", "void")
image_alpha = 0
bullet_hit_points = 2
bullet_hit_draw_timer = 0
bullet_destroy_self = 0
destroy_sprite = 3577
gravity = 0.5
friction = 0.2
vspeed = 6
self_emitter = part_emitter_create(global.ps_meteors)
