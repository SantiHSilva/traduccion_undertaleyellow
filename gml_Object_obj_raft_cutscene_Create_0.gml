bg_scroll_speed = -0.5
pillar_scroll_speed = -1.5
scroll_speed = -1
scr_cutscene_start()
with (obj_pl)
    image_alpha = 0
scene = 0
timer = 30
CAVE_TRANSITION = 0
HOTLAND_TRANSITION = 0
LAVA_TRANSITION = 0
transition_x = 320
sprite_ava_death = 903
audio_play_sound(mus_ambient_river, 1, true)
audio_play_sound(snd_rapids, 1, true)
audio_sound_gain(snd_rapids, 0.6, 0)
