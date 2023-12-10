if live_call()
    return global.live_result;
var battle_box = obj_dialogue_box_battle_transformation_any
switch attack_tick
{
    case 30:
        var scratch_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon)
        scratch_instance.attack_delay = 10
        break
    case 45:
        scratch_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon)
        scratch_instance.image_xscale = -1
        scratch_instance.attack_delay = 10
        break
    case 60:
        scratch_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon)
        scratch_instance.attack_delay = 70
        self.martlet_wing_spawn(0)
        break
    case 120:
        self.martlet_wing_spawn(1)
        break
    case 145:
        self.martlet_wing_spawn(0)
        break
    case 170:
        scratch_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon)
        scratch_instance.attack_delay = 40
        scratch_instance.image_xscale = -1
        scratch_instance = instance_create_depth(obj_heart_battle_fighting_parent.x, obj_heart_battle_fighting_parent.y, -100, obj_martlet_attack_talon)
        scratch_instance.attack_delay = 80
        self.martlet_wing_spawn(0)
        break
    case 210:
        self.martlet_wing_spawn(1)
        break
    case 300:
        instance_destroy()
        break
}

function martlet_wing_spawn_gml_Object_obj_fmartlet_spawner_wings_scratch_Step_0(argument0) //gml_Script_martlet_wing_spawn_gml_Object_obj_fmartlet_spawner_wings_scratch_Step_0
{
    battle_box = obj_dialogue_box_battle_transformation_any
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
        feather_count = 0
        image_xscale = xscale
        image_yscale = yscale
        image_angle = angle
    }
}

attack_tick += 1
