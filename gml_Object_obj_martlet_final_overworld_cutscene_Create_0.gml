if live_call()
    return global.live_result;
scene = 0
cutscene_timer = 0
cutscene_music = 0
draw_alpha = 1
global.cutscene = true
obj_pl.image_alpha = 0
var chujin = instance_create_depth(277, 149, -100, obj_chujin_npc)
with (chujin)
{
    up_sprite = 3089
    right_sprite = 3089
    down_sprite = 3089
    left_sprite = 3089
    up_sprite_idle = 3089
    right_sprite_idle = 3089
    down_sprite_idle = 3089
    left_sprite_idle = 3089
    action_sprite = 0
}
var martlet = instance_create_depth(246, -15, -100, obj_martlet_npc)
with (martlet)
{
    up_sprite = 3709
    right_sprite = 3709
    down_sprite = 3709
    left_sprite = 3709
    up_sprite_idle = 3709
    right_sprite_idle = 3709
    down_sprite_idle = 3709
    left_sprite_idle = 3709
    action_sprite = 1
    sprite_index = spr_martlet_landing
    image_index = 0
    image_speed = 0
}
