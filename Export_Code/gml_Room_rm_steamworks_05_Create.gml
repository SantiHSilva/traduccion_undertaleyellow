if (global.sworks_flag[1] >= 4)
{
    tile_layer_hide(999999)
    tile_layer_hide(1000001)
    layer_set_visible("tv_off", 0)
    layer_set_visible("conveyor_belts_off", 0)
}
if (global.sworks_flag[1] < 3)
{
    instance_create(0, 0, obj_steamworks_metal_sounds)
    instance_create(0, 0, obj_vignette)
}
global.player_sprites = "normal"
