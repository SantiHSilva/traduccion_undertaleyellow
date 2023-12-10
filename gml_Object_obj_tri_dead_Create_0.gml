image_alpha = 0
script_execute(gml_Script_scr_enemy_defragment)
if (!audio_is_playing(snd_monster_damage_death))
    audio_play_sound(snd_monster_damage_death, 20, false)
global.enemy_low_hp_2 = 1
global.enemy_low_hp_3 = 1
