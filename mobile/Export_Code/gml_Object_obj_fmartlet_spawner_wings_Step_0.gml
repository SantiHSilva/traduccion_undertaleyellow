if live_call()
    return global.live_result;
switch attack_tick
{
    case 30:
        self.martlet_wing_spawn(0)
        break
    case 60:
        self.martlet_wing_spawn(1)
        break
    case 90:
        self.martlet_wing_spawn(0)
        break
    case 120:
        self.martlet_wing_spawn(1)
        break
    case 140:
        self.martlet_wing_spawn(1)
        break
    case 180:
        self.martlet_wing_spawn(0)
        break
    case 200:
        self.martlet_wing_spawn(1)
        break
    case 300:
        instance_destroy()
        break
}

attack_tick += 1
function martlet_wing_spawn_gml_Object_obj_fmartlet_spawner_wings_Step_0(argument0) //gml_Script_martlet_wing_spawn_gml_Object_obj_fmartlet_spawner_wings_Step_0
{
    var battle_box = obj_dialogue_box_battle_transformation_any
    var xx = 0
    var yy = 0
    var xscale = 1
    var yscale = 1
    var angle = 0
    switch argument0
    {
        case 0:
            xx = (battle_box.bbox_left + 4)
            yy = (battle_box.bbox_top + 30)
            break
        case 1:
            xx = (battle_box.bbox_right - 4)
            yy = (battle_box.bbox_top + 30)
            xscale = -1
            break
    }

    var wing = instance_create_depth(xx, yy, -50, obj_fmartlet_wings)
    with (wing)
    {
        image_xscale = xscale
        image_yscale = yscale
        image_angle = angle
    }
}

