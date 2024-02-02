if live_call()
    return global.live_result;
if attack_stop
    return;
var battle_box = obj_dialogue_box_battle_transformation_any
instance_create_depth(spawn_pos, (battle_box.bbox_top - 40), -100, obj_battle_enemy_attack_ceroba_phase2_bell)
spawn_pos_last = spawn_pos
alarm[0] = 50
if (global.hotland_flag[2] == 2)
    alarm[0] = 30
if (global.hotland_flag[2] == 3)
    alarm[0] = 25
