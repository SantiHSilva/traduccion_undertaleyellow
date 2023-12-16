instance_create(200, 400, obj_starlo_npc)
obj_starlo_npc.image_alpha = 0
obj_starlo_npc.npc_direction = "up"
instance_create(200, 400, obj_ed_npc)
obj_ed_npc.image_alpha = 0
obj_ed_npc.npc_direction = "up"
var ed = obj_ed_npc
ed.up_sprite = 155
ed.right_sprite = 152
ed.down_sprite = 154
ed.left_sprite = 150
ed.up_sprite_idle = 155
ed.right_sprite_idle = 152
ed.down_sprite_idle = 154
ed.left_sprite_idle = 150
instance_create(266, 212, obj_npc_ceroba_saloon)
instance_create(200, 115, obj_saloon_stool)
obj_pl.image_alpha = 0
camera = instance_create(obj_starlo_npc.x, obj_starlo_npc.y, obj_camera)
__view_set((9 << 0), 0, camera)
scr_cutscene_start()
scene = 0
timer = 0
global.radio_pause = 1
