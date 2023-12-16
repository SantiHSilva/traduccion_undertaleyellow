with (all)
{
    var destroy_self = 1
    for (var i = 0; i < ds_list_size(other.instance_list); i++)
    {
        if (ds_list_find_value(other.instance_list, i) == id)
            destroy_self = 0
    }
    if (destroy_self == 1)
        instance_destroy()
}
with (obj_dialogue_box_battle_transformation_any)
    event_user(0)
