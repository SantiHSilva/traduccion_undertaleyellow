scene = 0
cutscene_timer = 0
if (global.dunes_flag[42] >= 1)
{
    sprite_index = spr_mansion_kotatsu_moved
    x = 199
    y = 171
    scene = 50
    layer_set_visible("chairs", 0)
    instance_destroy(106767)
    instance_destroy(106766)
}
