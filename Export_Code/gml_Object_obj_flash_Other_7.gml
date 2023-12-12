instance_create(obj_pl.x, obj_pl.y, obj_heart_initiate_battle)
global.battle_enemy_name = "dalv"
global.battling_enemy = 0
global.battling_boss = 1
global.battle_start = 1
global.current_room_overworld = room_get_name(room)
instance_destroy()
