if (global.player_sprites == "dunescave")
{
    palette_index = 4
    shader_on = 1
}
else if (global.player_sprites == "normal")
    shader_on = 0
if (obj_pl.yprevious != obj_pl.y || obj_pl.xprevious != obj_pl.x)
{
    npc_move_current = clamp((npc_move_current + 1), 0, npc_move_delay_max)
    x_new[npc_move_current] = obj_pl.x
    y_new[npc_move_current] = obj_pl.y
    dir_new[npc_move_current] = obj_pl.direction
    if (abs((obj_pl.yprevious - obj_pl.y)) >= 5 || abs((obj_pl.xprevious - obj_pl.x)) >= 5)
        sprinting_new[npc_move_current] = 1
    else
        sprinting_new[npc_move_current] = 0
}
if (npc_move_current >= npc_move_delay_max)
{
    npc_move_current = clamp((npc_move_current - 1), 0, npc_move_delay_max)
    x = x_new[1]
    y = y_new[1]
    follower_idle = 0
    switch dir_new[1]
    {
        case 0:
            if (sprinting_new[1] == 1)
                sprite_index = right_sprite_run
            else
                sprite_index = right_sprite
            break
        case 90:
            if (sprinting_new[1] == 1)
                sprite_index = up_sprite_run
            else
                sprite_index = up_sprite
            break
        case 180:
            if (sprinting_new[1] == 1)
                sprite_index = left_sprite_run
            else
                sprite_index = left_sprite
            break
        case 270:
            if (sprinting_new[1] == 1)
                sprite_index = down_sprite_run
            else
                sprite_index = down_sprite
            break
    }

    image_speed = 0.2
    if (sprinting_new[1] == 1)
        image_speed = 0.3
    for (var i = 0; i < npc_move_delay_max; i++)
    {
        x_new[i] = x_new[(i + 1)]
        y_new[i] = y_new[(i + 1)]
        dir_new[i] = dir_new[(i + 1)]
        sprinting_new[i] = sprinting_new[(i + 1)]
    }
}
else
{
    follower_idle = 1
    switch dir_new[1]
    {
        case 0:
            sprite_index = right_sprite_idle
            break
        case 90:
            sprite_index = up_sprite_idle
            break
        case 180:
            sprite_index = left_sprite_idle
            break
        case 270:
            sprite_index = down_sprite_idle
            break
    }

}
if (npc_reset == 1)
{
    event_perform(ev_create, 0)
    var player_distance = (point_distance(x, y, obj_pl.x, obj_pl.y) / 10)
    player_distance = clamp(player_distance, 1, 999)
    for (i = npc_move_delay_max; i > 0; i--)
    {
        x_new[i] = (x + (sign((obj_pl.x - x)) * (i * player_distance)))
        y_new[i] = (y + (sign((obj_pl.y - y)) * (i * player_distance)))
        if (point_distance(x, y, x_new[npc_move_delay_max], y) > point_distance(x, y, x, y_new[npc_move_delay_max]))
        {
            if (x_new[npc_move_delay_max] > x)
                dir_new[i] = 0
            else
                dir_new[i] = 180
        }
        else if (y_new[npc_move_delay_max] > y)
            dir_new[i] = 270
        else
            dir_new[i] = 90
        npc_move_current += 1
    }
    npc_reset = 0
}
if (follower_idle == 1)
{
    if (instance_exists(obj_dialogue) && is_talking == 1)
    {
        if (obj_dialogue.cutoff == string_length(obj_dialogue.message[obj_dialogue.message_current]))
        {
            image_speed = 0
            image_index = 0
        }
        else
            image_speed = 0.2
    }
    else
    {
        image_speed = 0
        image_index = 0
        is_talking = 0
    }
}
if (sprites_water_override == 1)
{
    up_sprite = 2012
    right_sprite = 1048
    down_sprite = 3578
    left_sprite = 3373
    up_sprite_idle = 543
    right_sprite_idle = 2036
    down_sprite_idle = 3610
    left_sprite_idle = 3453
    up_sprite_run = 2676
    right_sprite_run = 2292
    down_sprite_run = 2840
    left_sprite_run = 2797
}
else if (sprites_water_override == 2)
{
    sprites_water_override = 0
    up_sprite = 273
    right_sprite = 270
    down_sprite = 274
    left_sprite = 272
    up_sprite_idle = 262
    right_sprite_idle = 263
    down_sprite_idle = 265
    left_sprite_idle = 268
    up_sprite_run = 277
    right_sprite_run = 278
    down_sprite_run = 280
    left_sprite_run = 279
}
