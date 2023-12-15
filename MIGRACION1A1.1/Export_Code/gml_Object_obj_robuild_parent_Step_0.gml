var robot_item_x_player = obj_pl.x
var robot_item_y_player = ((obj_pl.y - 9) - (sprite_height - sprite_yoffset))
if (scr_interact() && keyboard_multicheck_pressed(0))
{
    if (global.route == 2)
    {
        if (robot_item_is_carried == 0 && robot_item_can_pickup == 1)
        {
            with (obj_robuild_parent)
            {
                if (robot_item_is_carried == 1)
                    return;
            }
            robot_item_is_jumping = 1
            robot_item_x_target = robot_item_x_player
            robot_item_y_target = robot_item_y_player
            audio_play_sound(snd_playerjump, 1, false)
            depth = (obj_pl.depth - 1)
            solid = 0
            visible = true
            obj_pl.state = gml_Script_scr_frozen_state
            obj_pl.image_index = 0
            obj_pl.image_speed = 0
        }
    }
    else
    {
        scr_text()
        with (msg)
            message[0] = "* (Just some useless scrap.)"
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
            solid = 1
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
}
if (robot_item_is_carried == 1)
{
    x = robot_item_x_player
    y = robot_item_y_player
    depth = (obj_pl.depth - 1)
    var pl_image_index = floor(obj_pl.image_index)
    if (obj_pl.direction == 0 || obj_pl.direction == 180)
    {
        if (pl_image_index == 1)
            y += 1
    }
    else if (pl_image_index == 1 || pl_image_index == 3)
        y -= 1
    if (keyboard_multicheck(1) && obj_pl.state == gml_Script_scr_normal_state)
    {
        robot_item_is_jumping = 1
        audio_play_sound(snd_playerjump, 1, false)
        robot_item_y_target = (obj_pl.y + 16)
        if place_free((obj_pl.x + 20), (obj_pl.y + 10))
            robot_item_x_target = (obj_pl.x + 20)
        else if place_free((obj_pl.x - 20), (obj_pl.y + 10))
            robot_item_x_target = (obj_pl.x - 20)
        else if place_free(obj_pl.x, (obj_pl.y + 20))
        {
            robot_item_x_target = obj_pl.x
            robot_item_y_target = (obj_pl.y + 20)
        }
        else
        {
            robot_item_x_target = obj_pl.x
            robot_item_y_target = (obj_pl.y - 20)
        }
        obj_pl.state = gml_Script_scr_frozen_state
        obj_pl.image_index = 0
        obj_pl.image_speed = 0
    }
}
