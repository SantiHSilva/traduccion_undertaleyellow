audio_play_sound(snd_monster_damage_hit, 1, false)
hit_flash = 1
self_destroy = 1
obj_flowey_battle_final.petal_alive[(petal_phase_number - 1)] = 0
gravity = 0.25
alarm[0] = 5
obj_flowey_battle_gray_wheel.scene++
obj_flowey_battle_gray_wheel.wheel_phase_number = petal_phase_number
obj_flowey_battle_gray_vine_grab.scene += 1
obj_flowey_battle_gray_vine_grab.alarm[1] = -1
obj_flowey_battle_gray_vine_grab.soul_can_shoot = 0
instance_destroy(obj_heart_yellow_shot)
