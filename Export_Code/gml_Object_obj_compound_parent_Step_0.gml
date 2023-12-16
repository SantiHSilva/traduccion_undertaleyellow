if live_call()
    return global.live_result;
if (global.sworks_flag[25] == 0 || global.sworks_flag[25] > 1)
{
}
var robot_item_x_player = obj_pl.x
var robot_item_y_player = ((obj_pl.y - 9) - (sprite_height - sprite_yoffset))
var nearest_item = 0
with (obj_pl)
    nearest_item = instance_nearest(x, y, obj_compound_parent)
if (distance_to_point(obj_pl.x, obj_pl.y) < 40 && nearest_item == id && keyboard_multicheck_pressed(0) && obj_pl.state == gml_Script_scr_normal_state)
{
    if (robot_item_is_carried == 0 && robot_item_can_pickup == 1)
    {
        with (obj_compound_parent)
        {
            if (robot_item_is_carried == 1)
                return;
        }
        robot_item_is_jumping = 1
        robot_item_x_target = robot_item_x_player
        robot_item_y_target = robot_item_y_player
        audio_play_sound(snd_playerjump, 1, false)
        depth = -9999
        visible = true
        obj_pl.state = gml_Script_scr_frozen_state
        obj_pl.image_index = 0
        obj_pl.image_speed = 0
    }
}
if (robot_item_is_jumping == 1)
{
    if scr_arc_jump(robot_item_x_target, robot_item_y_target)
    {
        if (robot_item_is_carried == 0)
        {
            robot_item_is_carried = 1
            robot_item_is_jumping = 0
            if (!global.cutscene)
                scr_cutscene_end()
        }
        else if (robot_item_is_carried == 1)
        {
            audio_play_sound(snd_mart_impact_2, 1, false)
            robot_item_is_carried = 0
            robot_item_is_jumping = 0
            depth = (-y)
            visible = true
            if (!instance_exists(obj_dialogue))
            {
                if (!global.cutscene)
                    scr_cutscene_end()
            }
            if (instance_exists(obj_steamworks_13_controller) && obj_steamworks_13_controller.robot_part_no_loop == 1)
                obj_steamworks_13_controller.robot_part_no_loop = 0
        }
    }
    return;
}
sprite_set_offset(spr_comp_pepper, 3, -11)
if (robot_item_is_carried == 1)
{
    if (keyboard_multicheck(1) && obj_pl.state == gml_Script_scr_normal_state)
    {
        audio_play_sound(snd_fail, 1, false)
        robot_item_is_carried = 0
        x = obj_pl.x
        y = (obj_pl.y + robot_item_y_offset)
        depth = (-y)
    }
}
