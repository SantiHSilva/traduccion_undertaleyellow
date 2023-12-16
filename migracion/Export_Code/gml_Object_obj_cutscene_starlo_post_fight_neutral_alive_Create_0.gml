scene = 17
cutscene_timer = 0
cutscene_music = 0
var actor_starlo = instance_create(160, 80, obj_starlo_npc)
with (actor_starlo)
{
    up_sprite = 207
    right_sprite = 237
    down_sprite = 240
    left_sprite = 236
    up_sprite_idle = 206
    right_sprite_idle = 235
    down_sprite_idle = 230
    left_sprite_idle = 232
}
instance_create(obj_pl.x, ((__view_get((1 << 0), 0) + __view_get((2 << 0), 0)) + 50), obj_ceroba_npc)
actor_clover = instance_create(obj_pl.x, obj_pl.y, obj_player_npc)
