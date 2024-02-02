with (obj_microf_cutscene)
    instance_destroy()
draw = 0
global.battle_enemy_name = "micro froggit"
global.exclamation_mark_type = "nothing"
global.battling_enemy = 0
global.battling_boss = 1
global.battle_start = 1
global.current_room_overworld = room_get_name(room)
instance_create(obj_pl.x, obj_pl.y, obj_heart_initiate_battle)
obj_pl.image_alpha = 0
audio_stop_all()
instance_destroy()
