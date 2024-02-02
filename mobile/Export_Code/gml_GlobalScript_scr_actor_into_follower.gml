function scr_actor_into_follower(argument0, argument1) //gml_Script_scr_actor_into_follower
{
    if (!instance_exists(argument0))
        return 0;
    if (argument1 == noone)
        return 0;
    instance_create(argument0.x, argument0.y, argument1)
    argument1.x = argument0.x
    argument1.y = argument0.y
    with (argument0)
    {
        switch npc_direction
        {
            case "up":
                argument1.sprite_index = argument1.up_sprite_idle
                break
            case "down":
                argument1.sprite_index = argument1.down_sprite_idle
                break
            case "left":
                argument1.sprite_index = argument1.left_sprite_idle
                break
            case "right":
                argument1.sprite_index = argument1.right_sprite_idle
                break
        }

    }
    instance_destroy(argument0)
}

