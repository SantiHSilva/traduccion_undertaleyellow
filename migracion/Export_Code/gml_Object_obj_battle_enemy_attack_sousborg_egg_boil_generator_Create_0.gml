egg = instance_create_depth(250, 324, (obj_heart_battle_fighting_red.depth - 1), obj_battle_enemy_attack_sousborg_egg_boil)
var box = obj_dialogue_box_battle_transformation_any
cutscene_timer = 0
scene = 0
attack_interval = 12
attack_interval_current[0] = 6
attack_interval_current[1] = 12
attack_interval_fire[0] = 4
attack_interval_fire[1] = 8
xx[0] = 320
scr_enable_battle_box_surface()
instance_create_depth(320, (box.bbox_bottom - 4), (egg.depth - 1), obj_battle_enemy_attack_sousborg_egg_sizzle)
var sizzle_sound = audio_play_sound(snd_sousborg_egg_sizzle, 1, true)
audio_sound_gain(sizzle_sound, 0, 0)
audio_sound_gain(sizzle_sound, 1, 1000)