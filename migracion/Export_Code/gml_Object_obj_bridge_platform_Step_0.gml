with (other)
{
    if (global.snowdin_flag[11] == 1)
    {
        if (floor(image_index) == 2)
        {
            image_speed = 0
            sprite_index = spr_bridge_platform_stand
            with (instance_position(x, y, obj_bridge_chain))
            {
                image_index = 0
                image_speed = 0
            }
        }
    }
    var index = floor(image_index)
    if (place_meeting(x, y, obj_pl) && fall == 0)
    {
        if ((index < 4 || (index > 9 && index < 15)) && (!obj_pl.is_sprinting))
            return;
        else
        {
            global.cutscene = true
            obj_pl.state = gml_Script_scr_frozen_state
            instance_create(obj_pl.x, obj_pl.y, obj_clover_fall)
            fall = 1
            audio_play_sound(snd_fall2, 20, false)
        }
    }
    if (fall == 1)
        obj_pl.y += 4
}
