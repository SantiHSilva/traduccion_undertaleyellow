light_amount = 0
active = false
reverse = 0
var j = 0
for (var i = 0; i < instance_number(all); i += 1)
{
    var inst = instance_find(all, i)
    var object_found = 0
    switch inst.object_index
    {
        case obj_pl:
        case global.party_member:
            shadow_actor[j] = inst
            shadow_active[j] = 0
            light_amount[j] = 0
            object_found = 1
            break
    }

    switch object_get_parent(inst.object_index)
    {
        case 1130:
        case 1133:
            shadow_actor[j] = inst
            shadow_active[j] = 0
            light_amount[j] = 0
            object_found = 1
            break
    }

    if (object_found == 1)
    {
        with (shadow_actor[j])
        {
            if place_meeting(x, y, obj_shadow_collider)
            {
                other.shadow_active[j] = 1
                if (other.reverse == 0)
                    other.light_amount[j] = 0.6
            }
        }
        j += 1
    }
}
