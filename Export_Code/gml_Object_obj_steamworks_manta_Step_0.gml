if live_call()
    return global.live_result;
switch manta_state
{
    case 0:
        if (scr_interact() && keyboard_multicheck_pressed(0))
            manta_prompt = 1
        if (manta_prompt == 1)
        {
            scr_text()
            with (msg)
            {
                message[0] = "* (Take a ride?)"
                ch_msg = 0
                ch[1] = "Sí"
                ch[2] = "No"
                if (outcome == 1)
                {
                    with (other)
                        scr_follower_into_actor()
                    instance_create(obj_pl.x, obj_pl.y, obj_player_npc)
                    other.manta_state = 2
                }
                else if (outcome == 2)
                    other.manta_state = 0
                if (outcome != 0)
                    other.manta_prompt = 0
            }
        }
        if (manta_has_passengers == 1)
        {
            if (arrows_alpha < 1)
                arrows_alpha += 0.25
            if (arrows_alpha > 0.35)
            {
                if global.down_keyp
                    move_in_direction = "down"
                else if global.up_keyp
                    move_in_direction = "up"
                else if global.right_keyp
                    move_in_direction = "right"
                else if global.left_keyp
                    move_in_direction = "left"
            }
        }
        break
    case 1:
        if (!audio_is_playing(snd_manta_sail))
            audio_play_sound(snd_manta_sail, 1, false)
        var check_distance = 40
        var hor_dir = (sprite_index == (spr_steamworks_manta_right - sprite_index)) == 1344
        var ver_dir = (sprite_index == (spr_steamworks_manta_down - sprite_index)) == 1341
        var checkpoint = collision_line(x, y, (x + (hor_dir * check_distance)), (y + (ver_dir * check_distance)), obj_steamworks_manta_checkpoint, false, true)
        if (checkpoint != noone && checkpoint.active == false)
        {
            if (x < (checkpoint.x + 4) && x > (checkpoint.x - 4) && y < (checkpoint.y + 4) && y > (checkpoint.y - 4))
            {
                hspeed_current = 0
                vspeed_current = 0
                hspeed_decc = 0
                vspeed_decc = 0
                manta_state = 0
                audio_play_sound(snd_manta_stop_go, 1, false)
                x = checkpoint.x
                y = checkpoint.y
                checkpoint.active = true
            }
            up_free = checkpoint.mpoint_up_free
            down_free = checkpoint.mpoint_down_free
            left_free = checkpoint.mpoint_left_free
            right_free = checkpoint.mpoint_right_free
            can_dock = checkpoint.mpoint_can_dock
            dock_x = checkpoint.mpoint_dock_xx
            dock_y = checkpoint.mpoint_dock_yy
        }
        if (arrows_alpha > 0)
            arrows_alpha -= 0.3
        break
    case 2:
        if (manta_get_on_noloop == 0)
        {
            audio_play_sound(snd_manta_startup, 1, false)
            manta_get_on_noloop = 1
        }
        switch manta_dir
        {
            case 0:
                var end_dir = "right"
                var plx = (x + 5)
                var ply = (y - 15)
                var npcx = (x - 10)
                var npcy = (y - 15)
                break
            case 90:
                end_dir = "up"
                plx = x
                ply = (y - 10)
                npcx = x
                npcy = y
                break
            case 180:
                end_dir = "left"
                plx = (x - 5)
                ply = (y - 15)
                npcx = (x + 10)
                npcy = (y - 15)
                break
            case 270:
                end_dir = "down"
                plx = x
                ply = y
                npcx = x
                npcy = (y - 10)
                break
        }

        if (abs((obj_player_npc.x - x)) > abs((obj_player_npc.y - y)))
            var dir_prio = "y"
        else
            dir_prio = "x"
        var follower_arrived = 0
        if (global.party_member != -4)
        {
            cutscene_npc_walk(actor_follower, npcx, npcy, 3, dir_prio, end_dir)
            if (actor_follower.x == npcx && actor_follower.y == npcy)
                follower_arrived = 1
        }
        if (scr_camera_move(x, y, 3) && cutscene_npc_walk(1168, plx, ply, 3, dir_prio, end_dir))
        {
            if (global.party_member != -4 && follower_arrived == 0)
                return;
            instance_destroy(obj_player_npc)
            manta_state = 0
            manta_has_passengers = 1
            __view_set((9 << 0), 0, id)
        }
        checkpoint = instance_nearest(x, y, obj_steamworks_manta_checkpoint)
        if (checkpoint != noone)
        {
            up_free = checkpoint.mpoint_up_free
            down_free = checkpoint.mpoint_down_free
            left_free = checkpoint.mpoint_left_free
            right_free = checkpoint.mpoint_right_free
            can_dock = checkpoint.mpoint_can_dock
            dock_x = checkpoint.mpoint_dock_xx
            dock_y = checkpoint.mpoint_dock_yy
        }
        break
    case 3:
        if (global.sworks_flag[5] < 2 && room == rm_steamworks_19)
        {
            scr_text()
            with (msg)
            {
                if (global.route == 2)
                {
                    sndfnt_array[0] = 391
                    sndfnt_array[1] = 108
                    sndfnt_array[2] = 108
                    sndfnt_array[3] = 391
                    message[0] = "* You h-ave reached your#  destination-bzzt."
                    message[1] = "* Thanks for the help."
                    message[2] = "* Let's keep moving,#  Clover."
                    message[3] = "* If you need another#  r-ride, I'll be#  here......bzzt."
                    prt[1] = 377
                    prt[2] = 370
                }
                else
                {
                    message[0] = "* You h-ave reached your#  destination-bzzt."
                    message[1] = "* If you need another#  r-ride, I'll be#  here......bzzt."
                }
            }
            global.sworks_flag[5] = 2
        }
        if global.dialogue_open
            return;
        if (!instance_exists(obj_player_npc))
            instance_create(obj_pl.x, obj_pl.y, obj_player_npc)
        follower_arrived = 1
        if (global.party_member != -4)
        {
            follower_arrived = 0
            cutscene_npc_walk(actor_follower, dock_x, dock_y, 3, "x", obj_player_npc.npc_direction)
            if (actor_follower.x == dock_x && actor_follower.y == dock_y)
                follower_arrived = 1
        }
        if (scr_camera_move(dock_x, dock_y, 3) && cutscene_npc_walk(1168, dock_x, dock_y, 3, "x", obj_player_npc.npc_direction) && follower_arrived == 1)
        {
            manta_state = 0
            move_in_direction = "none"
            manta_has_passengers = 0
            __view_set((9 << 0), 0, 1031)
            instance_destroy(obj_player_npc)
            scr_actor_into_follower(obj_ceroba_npc, obj_ceroba_follower)
            scr_cutscene_end()
        }
        if (arrows_alpha > 0)
            arrows_alpha -= 0.3
        break
}

if (move_in_direction != "none" && hspeed_current == 0 && vspeed_current == 0)
{
    var can_move = 0
    var pl_xx = 0
    var pl_yy = 0
    var fl_xx = 0
    var fl_yy = 0
    if (can_dock == move_in_direction)
    {
        manta_state = 3
        return;
    }
    else
    {
        switch move_in_direction
        {
            case "right":
                if right_free
                {
                    can_move = 1
                    pl_xx = (x + 5)
                    pl_yy = (y - 15)
                    fl_xx = (x - 10)
                    fl_yy = (y - 15)
                    manta_dir = 0
                    hspeed_current = manta_speed
                    sprite_index = spr_steamworks_manta_right
                    break
                }
                else
                {
                    can_move = 0
                    break
                }
            case "left":
                if left_free
                {
                    can_move = 1
                    pl_xx = (x - 5)
                    pl_yy = (y - 15)
                    fl_xx = (x + 10)
                    fl_yy = (y - 15)
                    manta_dir = 180
                    hspeed_current = (-manta_speed)
                    sprite_index = spr_steamworks_manta_left
                    break
                }
                else
                {
                    can_move = 0
                    break
                }
            case "up":
                if up_free
                {
                    can_move = 1
                    pl_xx = x
                    pl_yy = (y - 10)
                    fl_xx = x
                    fl_yy = (y - 5)
                    manta_dir = 90
                    vspeed_current = (-manta_speed)
                    sprite_index = spr_steamworks_manta_up
                    break
                }
                else
                {
                    can_move = 0
                    break
                }
            case "down":
                if down_free
                {
                    can_move = 1
                    pl_xx = x
                    pl_yy = y
                    fl_xx = x
                    fl_yy = (y - 10)
                    manta_dir = 270
                    vspeed_current = manta_speed
                    sprite_index = spr_steamworks_manta_down
                    break
                }
                else
                {
                    can_move = 0
                    break
                }
        }

    }
    if (manta_has_passengers == 1)
    {
        if (can_move == 1)
        {
            audio_play_sound(snd_confirm, 1, false)
            obj_pl.x = pl_xx
            obj_pl.y = pl_yy
            obj_pl.direction = manta_dir
            obj_pl.depth = (depth - 1)
            if (global.party_member != -4)
            {
                actor_follower.x = fl_xx
                actor_follower.y = fl_yy
                actor_follower.depth = (depth - 1)
                if (manta_dir == 0)
                    actor_follower.npc_direction = "right"
                else if (manta_dir == 90)
                    actor_follower.npc_direction = "up"
                else if (manta_dir == 180)
                    actor_follower.npc_direction = "left"
                else if (manta_dir == 270)
                    actor_follower.npc_direction = "down"
                with (actor_follower)
                    event_perform(ev_step, ev_step_normal)
            }
            with (obj_pl)
                event_perform(ev_step, ev_step_normal)
            var arrow_size_multiply = 1.5
            if (manta_dir == 0)
                arrow_size[3] = arrow_size_multiply
            else if (manta_dir == 90)
                arrow_size[0] = arrow_size_multiply
            else if (manta_dir == 180)
                arrow_size[2] = arrow_size_multiply
            else if (manta_dir == 270)
                arrow_size[1] = arrow_size_multiply
        }
        else
        {
            audio_play_sound(snd_fail, 1, false)
            move_in_direction = "none"
        }
    }
    move_in_direction = "none"
    manta_state = 1
    audio_play_sound(snd_manta_stop_go, 1, false)
}
if (manta_has_passengers == 1)
{
    obj_pl.hspeed = hspeed_current
    obj_pl.vspeed = vspeed_current
    obj_pl.direction = manta_dir
    if (global.party_member != -4)
    {
        actor_follower.hspeed = other.hspeed_current
        actor_follower.vspeed = other.vspeed_current
    }
}
hspeed = hspeed_current
vspeed = vspeed_current
if (hspeed_current == 0 && vspeed_current == 0)
{
    var new_sprite = -1
    switch manta_dir
    {
        case 0:
            new_sprite = spr_steamworks_manta_right_idle
            break
        case 90:
            new_sprite = spr_steamworks_manta_up_idle
            break
        case 180:
            new_sprite = spr_steamworks_manta_left_idle
            break
        case 270:
            new_sprite = spr_steamworks_manta_down_idle
            break
    }

    if (sprite_index != new_sprite)
        sprite_index = new_sprite
}
for (var i = 0; i < array_length_1d(arrow_size); i++)
{
    if (arrow_size[i] > 1)
        arrow_size[i] -= 0.05
    var color_mult = ((arrow_size[i] - 1) / 0.5)
    arrow_color[i] = make_colour_rgb(255, 255, (255 - (color_mult * 255)))
}
if (manta_get_on_noloop == 1 && manta_state != 2)
    manta_get_on_noloop = 0
if (manta_state != 1 && audio_is_playing(snd_manta_sail))
    audio_stop_sound(snd_manta_sail)
arrows_frame += 0.25
if (arrows_frame >= 5)
    arrows_frame = 0
