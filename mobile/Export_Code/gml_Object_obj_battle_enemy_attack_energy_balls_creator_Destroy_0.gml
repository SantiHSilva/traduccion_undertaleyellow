if (!instance_exists(obj_battle_fade_out_screen))
{
    global.sound_carry_overworld = 0
    instance_create(0, 0, obj_battle_fade_out_screen)
}
