if (global.player_can_travel == 1)
{
    layer_set_visible("fixedbridge", 1)
    layer_set_visible("brokebridge", 0)
    instance_destroy(101991)
}
