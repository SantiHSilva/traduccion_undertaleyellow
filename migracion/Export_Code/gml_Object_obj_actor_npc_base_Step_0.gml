if (npc_dynamic_depth == 1)
    depth = (-y)
interact = 0
if (keyboard_multicheck_pressed(0) && scr_interact() == 1 && can_interact && is_walking == 0)
{
    npc_direction_hold = npc_direction
    switch obj_pl.direction
    {
        case 0:
            npc_direction = "left"
            break
        case 90:
            npc_direction = "down"
            break
        case 180:
            npc_direction = "right"
            break
        case 270:
            npc_direction = "up"
            break
    }

    interact = 1
}
else if ((!instance_exists(obj_dialogue)) && (!global.cutscene) && npc_direction_hold != "nothing")
{
    if (npc_direction != npc_direction_hold)
        npc_direction = npc_direction_hold
    npc_direction_hold = "nothing"
}
if (can_walk == 1 && is_walking == 1)
{
    image_speed = 0.2
    switch npc_direction
    {
        case "right":
            sprite_index = right_sprite
            break
        case "up":
            sprite_index = up_sprite
            break
        case "left":
            sprite_index = left_sprite
            break
        case "down":
            sprite_index = down_sprite
            break
    }

}
else if (action_sprite == 0)
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
    switch npc_direction
    {
        case "right":
            sprite_index = right_sprite_idle
            break
        case "up":
            sprite_index = up_sprite_idle
            break
        case "left":
            sprite_index = left_sprite_idle
            break
        case "down":
            sprite_index = down_sprite_idle
            break
    }

}
else if (action_sprite_stop == 1)
{
    if (image_index >= (image_number - 1))
    {
        image_speed = 0
        image_index = (image_number - 1)
        action_sprite_stop = 0
    }
}
if (can_walk == 1)
{
    x_destination = x_dest[current_destination]
    y_destination = y_dest[current_destination]
    npc_arrived = 0
    var destination_count = (array_length_1d(x_dest) - 1)
    if scr_walk_npc_free(x_destination, y_destination, actor_speed, 0.2, axis_override, end_direction, walk_collider)
    {
        if (current_destination < destination_count)
            current_destination += 1
        else
        {
            can_walk = 0
            npc_arrived = 1
            current_destination = 0
            x_dest = 0
            y_dest = 0
            x_dest[0] = x
            y_dest[0] = y
        }
    }
}
if (walk_direction_flip == 1)
{
    var up_sprite_old = up_sprite
    up_sprite = down_sprite
    down_sprite = up_sprite_old
    var left_sprite_old = left_sprite
    left_sprite = right_sprite
    right_sprite = left_sprite_old
    up_sprite_old = up_sprite_idle
    up_sprite_idle = down_sprite_idle
    down_sprite_idle = up_sprite_old
    left_sprite_old = left_sprite_idle
    left_sprite_idle = right_sprite_idle
    right_sprite_idle = left_sprite_old
    walk_direction_flip = 0
}