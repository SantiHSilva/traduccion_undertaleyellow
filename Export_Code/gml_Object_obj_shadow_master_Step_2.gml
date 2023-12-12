if live_call()
    return global.live_result;
inst_number = instance_number(all)
var drawer_object = obj_shadow_drawer
switch object_index
{
    case obj_light_master:
        drawer_object = obj_light_drawer
        break
    default:
        drawer_object = obj_shadow_drawer
        break
}

if instance_exists(obj_dialogue)
    inst_number -= 1
if instance_exists(obj_pause_menu)
    inst_number -= 1
if instance_exists(obj_camera)
    inst_number -= 1
if (inst_number != inst_number_last)
{
    inst_number_last = inst_number
    var j = 0
    for (var i = 0; i < instance_number(all); i += 1)
    {
        var inst = instance_find(all, i)
        var object_found = 0
        var repeat_check = 0
        with (drawer_object)
        {
            if (shadow_actor == inst)
                repeat_check = 1
        }
        if repeat_check
        {
        }
        else
        {
            switch inst.object_index
            {
                case obj_pl:
                case global.party_member:
                    shadow_actor = inst
                    var shadow_drawer = instance_create_depth(inst.x, inst.y, inst.depth, drawer_object)
                    object_found = 1
                    break
            }

            switch object_get_parent(inst.object_index)
            {
                case 1129:
                case 1132:
                case 1190:
                    shadow_actor = inst
                    shadow_drawer = instance_create_depth(inst.x, inst.y, inst.depth, drawer_object)
                    object_found = 1
                    break
            }

            if (object_found == 1)
            {
                with (shadow_drawer.shadow_actor)
                {
                    if place_meeting(x, y, obj_shadow_collider)
                    {
                        shadow_drawer.shadow_active = 1
                        if (shadow_drawer.reverse == 0)
                            shadow_drawer.draw_alpha = 0.5
                    }
                    else if (shadow_drawer.reverse == 1)
                        shadow_drawer.draw_alpha = 0.5
                }
            }
        }
    }
}
if (instance_exists(obj_savefl) && save_flowey_noloop == 0)
{
    shadow_actor = 1191
    shadow_drawer = instance_create_depth(obj_savefl.x, obj_savefl.y, obj_savefl.depth, drawer_object)
    save_flowey_noloop = 1
}
if (save_flowey_noloop && (!instance_exists(obj_savefl)))
    save_flowey_noloop = 0
